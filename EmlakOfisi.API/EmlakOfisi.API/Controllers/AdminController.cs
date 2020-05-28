using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EmlakOfisi.API.Data;
using EmlakOfisi.API.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EmlakOfisi.API.Controllers
{
    [Route("api/admin")]
    [ApiController]
    public class AdminController : ControllerBase
    {
        private IAppRepository _appRepository;

        public AdminController(IAppRepository appRepository)
        {
            _appRepository = appRepository;
        }

        public ActionResult GetAgents()
        {
            var agents = _appRepository.GetAgents();
            return Ok(agents);
        }

        [HttpPost]
        [Route("agentAdd")]
        public ActionResult AddAgent([FromBody]Agent agent)
        {
            agent.Password = "123456";
            var agents = _appRepository.GetAgents();
            foreach (var item in agents)
            {
                if (agent.Username == item.Username)
                {
                    return StatusCode(201);
                }
            }

            _appRepository.Add(agent);
            _appRepository.SaveAll();
            return Ok(agent);

        }

        [HttpPost]
        [Route("agentUpdate/{id}")]
        public ActionResult UpdateAgent(int id, [FromBody]Agent agent)
        {
            var agents = _appRepository.GetAgents();
            foreach (var item in agents)
            {
                if (agent.Username == item.Username)
                {
                    return StatusCode(201);
                }
            }
            _appRepository.UpdateAgent(id, agent);
            _appRepository.SaveAll();
            agent = _appRepository.GetAgentById(id);
            return Ok(agent);

        }

        [HttpDelete]
        [Route("agentDelete/{id}")]
        public ActionResult DeleteAgent(int id)
        {
            var agents = _appRepository.GetAgents();
            var agent = agents.FirstOrDefault(x => x.Id == id);
            var adverts = _appRepository.GetAdvertsByAgent(agent.Id);
            foreach (var item in adverts)
            {
                _appRepository.Delete(item);
            }
            _appRepository.Delete(agent);
            _appRepository.SaveAll();
            return Ok();
        }
    }
}
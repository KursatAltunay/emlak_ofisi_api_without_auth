﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using EmlakOfisi.API.Data;
using EmlakOfisi.API.Dtos;
using EmlakOfisi.API.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace EmlakOfisi.API.Controllers
{
    [Route("api/agent")]
    [ApiController]
    public class AgentsController : ControllerBase
    {

        private IAppRepository _appRepository;

        public AgentsController(IAppRepository appRepository)
        {
            _appRepository = appRepository;
        }


        public ActionResult GetAdverts(int id)
        {
            var adverts = _appRepository.GetAdvertsByAgent(id);
            return Ok(adverts);
        }

        [Route("advertDetail")]
        public ActionResult GetAdvertById(int id)
        {
            var advert = _appRepository.GetAdvertById(id);
            return Ok(advert);
        }

        [HttpPost]
        [Route("advertAdd")]
        public ActionResult AddAdvert([FromBody]Advert advert)
        {

            _appRepository.Add(advert);
            _appRepository.SaveAll();
            return Ok(advert);
        }

        [HttpDelete]
        [Route("advertDelete/{id}")]
        public ActionResult DeleteAdvert(int id)
        {
            var advert = _appRepository.GetAdvertById(id);
            _appRepository.Delete(advert);
            _appRepository.SaveAll();
            return Ok();

        }


        [HttpPost]
        [Route("{agentId}/Update")]
        public ActionResult UpdateAgent(int agentId, [FromBody] Agent agent)
        {

            var agents = _appRepository.GetAgents();
            foreach (var item in agents)
            {
                if (agent.Username == item.Username)
                {
                    return StatusCode(201);
                }
            }

            _appRepository.UpdateAgent(agentId, agent);
            _appRepository.SaveAll();
            return Ok();
        }


        [HttpPost]
        [Route("advertUpdate/{id}")]
        public ActionResult UpdateAdvert(int id, [FromBody] Advert advert)
        {
            _appRepository.UpdateAdvert(id, advert);
            _appRepository.SaveAll();
            advert = _appRepository.GetAdvertById(id);
            return Ok(advert);
        }

        [HttpPost]
        [Route("addAgent")]
        public ActionResult AddAgent([FromBody]Agent agent)
        {            
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
        [Route("login")]
        public ActionResult Login([FromBody] LoginDto loginDto)
        {
          var  agents = _appRepository.GetAgents();

            foreach (var item in agents)
            {
                if (loginDto.Username==item.Username && loginDto.Password==item.Password)
                {
                    return Ok(item);
                }
            }

            return StatusCode(201);
        }
    }
}
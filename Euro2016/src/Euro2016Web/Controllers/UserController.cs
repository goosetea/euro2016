﻿using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using Euro2016Web.ViewModel;
using Euro2016Core.Core.Interfaces.Services;

namespace Euro2016Web.Controllers
{
    [Authorize]
    [Route("api/[controller]")]
    public class UserController : Controller
    {
        protected readonly IUserService _userService;
        protected readonly IUserViewService _userViewService;

        public UserController(IUserService userService, IUserViewService userViewService)
        {
            _userService = userService;
            _userViewService = userViewService;
        }

        [HttpGet("GetTop")]
        public IActionResult GetTop()
        {
            return new ObjectResult(_userService.GetTop(1000));
        }

        [HttpGet("GetUser/{id?}")]
        public IActionResult GetUser([FromQuery]int? id)
        {
            return new ObjectResult(_userViewService.GetUserViewModel(id, User.Identity.Name));
        }


    }
}

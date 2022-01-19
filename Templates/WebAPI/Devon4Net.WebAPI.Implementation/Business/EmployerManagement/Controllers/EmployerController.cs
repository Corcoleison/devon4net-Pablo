using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Threading.Tasks;
using Devon4Net.Infrastructure.Log;
using Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Dto;
using Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Service;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Controllers
{
    /// <summary>
    /// Employees controller
    /// </summary>
    [ApiController]
    [Route("[controller]")]
    [EnableCors("CorsPolicy")]
    public class EmployerController: ControllerBase
    {
        private readonly IEmployerService _employerService;

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="employeeService"></param>
        public EmployerController( IEmployerService employeeService)
        {
            _employerService = employeeService;
        }


        /// <summary>
        /// Gets the entire list of employees
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        [ProducesResponseType(typeof(List<EmployerDto>), StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult> GetEmployee()
        {
            Devon4NetLogger.Debug("Executing GetEmployee from controller EmployeeController");
            return Ok(await _employerService.GetEmployer().ConfigureAwait(false));
        }

        /// <summary>
        /// Creates an employee
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        [ProducesResponseType(typeof(EmployerDto), StatusCodes.Status201Created)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult> Create(EmployerDto EmployerDto)
        {
            Devon4NetLogger.Debug("Executing GetEmployee from controller EmployeeController");
            var result = await _employerService.CreateEmployer(EmployerDto.Name).ConfigureAwait(false);
            return StatusCode(StatusCodes.Status201Created, result);
        }

        /// <summary>
        /// Deletes the employee provided the id
        /// </summary>
        /// <returns></returns>
        [HttpDelete]
        [ProducesResponseType(typeof(EmployerDto), StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult> Delete([Required] long employeeId)
        {
            Devon4NetLogger.Debug("Executing GetEmployee from controller EmployeeController");
            return Ok(await _employerService.DeleteEmployerById(employeeId).ConfigureAwait(false));
        }

        /// <summary>
        /// Modifies the done status of the employee provided the data of the employee
        /// In this sample, all the data fields are mandatory
        /// </summary>
        /// <returns></returns>
        [HttpPut]
        [ProducesResponseType(typeof(EmployerDto), StatusCodes.Status200OK)]
        [ProducesResponseType(StatusCodes.Status400BadRequest)]
        [ProducesResponseType(StatusCodes.Status404NotFound)]
        [ProducesResponseType(StatusCodes.Status500InternalServerError)]
        public async Task<ActionResult> ModifyEmployee(EmployerDto EmployerDto)
        {
            Devon4NetLogger.Debug("Executing ModifyEmployee from controller EmployeeController");
            if (EmployerDto == null || EmployerDto.Id == 0)
            {
                return BadRequest("The id of the employee must be provided");
            }
            return Ok(await _employerService.ModifyEmployerById(EmployerDto.Id, EmployerDto.Name).ConfigureAwait(false));
        }
    }
}

using Devon4Net.Infrastructure.Common.Exceptions;
using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;

namespace Devon4Net.WebAPI.Implementation.Business.EmployerManagement.Exceptions
{
    /// <summary>
    /// Custom exception EmployerNotFoundException
    /// </summary>
    [Serializable]
    public class EmployerNotFoundException : Exception, IWebApiException
    {
        /// <summary>
        /// The forced http status code to be fired on the exception manager
        /// </summary>
        public int StatusCode => StatusCodes.Status404NotFound;

        /// <summary>
        /// Show the message on the response?
        /// </summary>
        public bool ShowMessage => true;

        /// <summary>
        /// Initializes a new instance of the <see cref="EmployerNotFoundException"/> class.
        /// </summary>
        public EmployerNotFoundException()
        {
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="EmployerNotFoundException"/> class.
        /// </summary>
        /// <param name="message">The message that describes the error.</param>
        public EmployerNotFoundException(string message)
            : base(message)
        {
        }
    }
}

﻿namespace Devon4Net.Infrastructure.Common.Options.CyberArk
{
    public class CyberArkOptions
    {
        public bool EnableCyberArk { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string CircuitBreakerName { get; set; }
    }
}

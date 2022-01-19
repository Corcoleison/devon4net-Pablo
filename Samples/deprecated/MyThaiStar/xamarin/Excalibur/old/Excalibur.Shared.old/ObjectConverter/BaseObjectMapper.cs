﻿using AutoMapper;

namespace Excalibur.Shared.ObjectConverter
{
    /// <summary>
    /// Base object mapper using <see cref="AutoMapper"/> as underlying object mapper
    /// </summary>
    /// <typeparam name="TSource">The type of the source object</typeparam>
    /// <typeparam name="TDestination">The type of the destination object</typeparam>
    public class BaseObjectMapper<TSource, TDestination> : IObjectMapper<TSource, TDestination>
        where TDestination : new()
    {
        private readonly MapperConfiguration _config;

        /// <summary>
        /// Initializes the object mapper. 
        /// Constructor creates the <see cref="MapperConfiguration"/> using <see cref="TSource"/> and <see cref="TDestination"/> as
        /// source and destination
        /// </summary>
        public BaseObjectMapper()
        {
            _config = new MapperConfiguration(cfg => {
                cfg.CreateMap<TSource, TDestination>();
            });
        }

        /// <summary>
        /// Maps a <see cref="TSource"/> to a <see cref="TDestination"/> object using <see cref="AutoMapper"/>
        /// </summary>
        /// <param name="source">The instance of a source object</param>
        /// <returns>The mapped object as destination</returns>
        public virtual TDestination Map(TSource source)
        {
            IMapper mapper = _config.CreateMapper();
            return mapper.Map<TSource, TDestination>(source);
        }

        /// <summary>
        /// Updates the destination object with content from source using <see cref="AutoMapper"/>
        /// </summary>
        /// <param name="source">The instance of a source object</param>
        /// <param name="destination">The instance of a destination object</param>
        public virtual void UpdateDestination(TSource source, TDestination destination)
        {
            IMapper mapper = _config.CreateMapper();
            mapper.Map(source, destination);
        }

        /// <summary>
        /// Updates the source object with content from destination using <see cref="AutoMapper"/>
        /// </summary>
        /// <param name="destination">The instance of a destination object</param>
        /// <param name="source">The instance of a source object</param>
        public virtual void UpdateSource(TDestination destination, TSource source)
        {
            IMapper mapper = _config.CreateMapper();
            mapper.Map(destination, source);
        }
    }
}

fetch('https://pokeapi.co/api/v2/pokemon-species/?limit=1') // Limit is just 1 to get the count
    .then(response => response.json())
    .then(data => {
        const count = data.count;
        console.log(`There are ${count} Pokémon species in the PokeAPI.`);
    })
    .catch(error => console.error("Error fetching Pokémon count:", error));

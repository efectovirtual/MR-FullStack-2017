        // find template and compile it
        var templateSource = document.getElementById('results-template').innerHTML,
        
            template = Handlebars.compile(templateSource),
            resultsPlaceholder = document.getElementById('results'),
            playingCssClass = 'playing',
            audioObject = null;

        var fetchTracks = function (albumId, callback) {
            $.ajax({
                url: 'https://api.spotify.com/v1/albums/' + albumId,
                success: function (response) {
                    callback(response);
                }
            });
        };

        var searchAlbums = function (query) {
            $.ajax({
                url: 'https://api.spotify.com/v1/search',
                data: {
                    q: query,
                    type: 'track'
                },
                success: function (response) {
                    resultsPlaceholder.innerHTML = template(response);
                }
            });
        };

        document.getElementById('search-form').addEventListener('submit', function (e) {
            e.preventDefault();
            searchAlbums(document.getElementById('query').value);
        }, false);
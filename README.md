# Ruby version
`2.7.0-dev`

# Configuration
`$ bundle install`

# How to run the test suite
`$ bundle exec rspec`

# Discussion
How you would extend this program to make it a network-playable Chess game?

## Codebase
### Manage the game status with RDB  
To be able to manage and save each status(ChessBoard, Board, Pieces, Player)

### Guarantee the whole update process  
When players advance the piece, it affects on several models. We should guarantee the whole process is completed within a transaction

## Server Architecture
### Divide Write API and Read API  
The access request to confirm the current status would be much than updating requests. To handle this throughputs, we should consider to divide the API to those two at least.

### Cacheing  
As I mentioned above, players would use reading API to confirm the current status. It wouldn't change until players advance the pieces, then we can cache the current status when we got the reading request once.
Memcache would be an appropriate middleware in this use case.

### Database Sharding  
Game(ChessBoard) could be played thousands or millions times. To manage this, we should consider about database sharding(horizontal sharding) by unit of the Game.
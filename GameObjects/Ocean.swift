import GameplayKit
import SpriteKit

class Ocean : GameObject
{
    
    // constructor / initializer
    init()
    {
        super.init(imageString: "ocean-1", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // LifeCycle Functions
    override func CheckBounds()
    {
        if(position.x <= -773)
        {
            Reset()
        }
    }
    
    override func Reset()
    {
        position.x = 773
    }
    
    // initialization
    override func Start()
    {
        zPosition = 0
        verticalSpeed = 5.0
    }
    
    override func Update()
    {
        Move()
        CheckBounds()
    }
    
    func Move()
    {
        position.x -= verticalSpeed!
    }
}

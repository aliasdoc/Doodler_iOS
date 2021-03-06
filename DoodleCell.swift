
import UIKit

class DoodleCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView!
    
    override var isSelected: Bool {
        didSet {
            UIView.animate(withDuration: 0.75) {
                self.layer.borderWidth = self.isSelected ? 9 : 0
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderColor = UIColor.doodlerRed.cgColor
        imageView.clipsToBounds = true
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        imageView.image = nil
    }
    
}

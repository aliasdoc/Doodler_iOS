
import UIKit

class StickerLayout: UICollectionViewFlowLayout {
    
    override func prepare() {
        super.prepare()
        
        minimumLineSpacing = 10
        minimumInteritemSpacing = 10
        
        guard let collectionView = collectionView else { return }
        
        let workingWidth = collectionView.bounds.width - collectionView.contentInset.left - collectionView.contentInset.right
        let cellWidth = (workingWidth - (minimumInteritemSpacing * 2)) / 3
        
        itemSize = CGSize(width: cellWidth, height: cellWidth)
    }
    
}

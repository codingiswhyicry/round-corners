func roundCorner(corner: UIRectCorner, radius: Int, view: UIView){
    
    let mask_layer = CAShapeLayer()
    //creates an instance of CAShapeLayer
    let path = UIBezierPath(roundedRect: self.view.bounds, byRoundingCorners: corner, cornerRadii: CGSize(width: radius, height:  radius))
    //creates UIBezierPath and sets corner, radius, and rect.
    
    mask_layer.path = path.cgPath
    //assigns path for mask_layer
    self.view.layer.mask = mask_layer
    //applies mask to view
    
}

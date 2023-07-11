class Pen{
    constructor(penQuantity){
        this.penQuantity = penQuantity;
    }
}

class Pencil{
    constructor(pencilQuantity){
        this.pencilQuantity = pencilQuantity;
    }
}

class Total{

    storeOne(){
        var pen1 = new Pen(3);
        var pen2 = new Pen(2);
        
        var pencil1 = new Pencil(4);
        var pencil2 = new Pencil(3);

        var a1 = pen1.penQuantity;
        var a2 = pen2.penQuantity;
        var b1 = pencil1.pencilQuantity;
        var b2 = pencil2.pencilQuantity;
        var c1 = 17;
        var c2 = 12;

        var delta = ((a1 * b2) - (a2 * b1));
        var deltaX = ((c1 * b2) - (c2 * b1));
        var deltaY = ((a1 *c2) - (a2 * c1));

        var x = deltaX / delta;
        var y = deltaY / delta;

        console.log(x);
        console.log(y);

    }
}

result = new Total();
result.storeOne();
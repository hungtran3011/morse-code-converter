import 'dart:io';

class BinaryNode<T>{
    BinaryNode(this.value);
    T value;
    BinaryNode<T>? leftChild;
    BinaryNode<T>? rightChild;

    void printTree(){
        if(leftChild != null){
            leftChild!.printTree();
        }
        stdout.write(value);
        print("/\\");
        if(rightChild != null){
            rightChild!.printTree();
        }
    }
}

/// Using a binary tree to store and traverse the morse table,
/// because each morse character consists of dot and dash, which can be interpreted like binary numbers
class MorseTree{
    // root
    BinaryNode<String> root = BinaryNode(" ");
    
    MorseTree(){
        // level 1
        var e = BinaryNode("E");
        var t = BinaryNode("T");
        root.leftChild = e;
        root.rightChild = t;
        // level 2
        var i = BinaryNode("I");
        var a = BinaryNode("A");
        e.leftChild = i;
        e.rightChild = a;
        var n = BinaryNode("N");
        var m = BinaryNode("M");
        t.leftChild = n;
        t.rightChild = m;
        // level 3
        var s = BinaryNode("S");
        var u = BinaryNode("U");
        i.leftChild = s;
        i.rightChild = u;
        var r = BinaryNode("R");
        var w = BinaryNode("W");
        a.leftChild = r;
        a.rightChild = w;
        var d = BinaryNode("D");
        var k = BinaryNode("K");
        n.leftChild = d;
        n.rightChild = k;
        var g = BinaryNode("G");
        var o = BinaryNode("O");
        m.leftChild = g;
        m.rightChild = o;
        // level 4
        var h = BinaryNode("H");
        var v = BinaryNode("V");
        s.leftChild = h;
        s.rightChild = v;
        var f = BinaryNode("F");
        var uUmlaut = BinaryNode("Ü");
        u.leftChild = f;
        u.rightChild = uUmlaut;
        var l = BinaryNode("L");
        var aUmlaut = BinaryNode("Ä");
        r.leftChild = l;
        r.rightChild = aUmlaut;
        var p = BinaryNode("P");
        var j = BinaryNode("J");
        w.leftChild = p;
        w.rightChild = j;
        var b = BinaryNode("B");
        var x = BinaryNode("X");
        d.leftChild = b;
        d.rightChild = x;
        var c = BinaryNode("C");
        var y = BinaryNode("Y");
        k.leftChild = c;
        k.rightChild = y;
        var z = BinaryNode("Z");
        var q = BinaryNode("Q");
        g.leftChild = z;
        g.rightChild = q;
        var oMutant = BinaryNode("Ö");
        var ch = BinaryNode("CH");
        o.leftChild = oMutant;
        o.rightChild = ch;
        // level 5
        var five = BinaryNode("5");
        var four = BinaryNode("4");
        h.leftChild = five;
        h.rightChild = four;
        var sCircumflex = BinaryNode("Ŝ");
        var three = BinaryNode("3");
        v.leftChild = sCircumflex;
        v.rightChild = three;
        var eTailed = BinaryNode("Ę");
        var two = BinaryNode("2");
        var eth = BinaryNode("Ð");
        f.leftChild = eTailed;
        uUmlaut.rightChild = two;
        uUmlaut.leftChild = eth;
        var ampersand = BinaryNode("&");
        var eGrave = BinaryNode("È");
        l.leftChild = ampersand;
        l.rightChild = eGrave;
        var plus = BinaryNode("+");
        aUmlaut.leftChild = plus;
        aUmlaut.rightChild = null;
        var thorn = BinaryNode("Þ");
        var aRing = BinaryNode("Å");
        p.leftChild = thorn;
        p.rightChild = aRing;

    }

    void printTree(){
        root.printTree();
    }

    void getText(String morse){
        var currentNode = root;
        for (int i = 0; i < morse.length; i++){
            if (morse[i] == "."){
                if (currentNode.leftChild != null){
                    currentNode = currentNode.leftChild!;
                }
                else{
                    print("Invalid Morse code");
                }
            }
            else if (morse[i] == "-" || morse[i] == "_"){
                if (currentNode.rightChild != null){
                    currentNode = currentNode.rightChild!;
                }
                else{
                    print("Invalid Morse code");
                }
            }
            else if (morse[i] == " " || morse[i] == "/" || morse[i] == "\\"){
                String result = currentNode.value;
                currentNode = root;
                stdout.write(result);
            }
            else{
                print("Invalid Morse code");
            }
        }
        print(currentNode.value);
    }
}
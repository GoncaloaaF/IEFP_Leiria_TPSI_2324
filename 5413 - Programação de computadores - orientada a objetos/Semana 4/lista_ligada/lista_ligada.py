

class Node:
    def __init__(self, data, next=None):
        self.data = data
        self.next = next

class ListaLigada:
    # head
    def __init__(self, head:Node=None):
        self.head = head
        self.tail = head

    def insert_end(self, data):
        new_node = Node(data)
        if self.head is None:
            self.head = new_node
            self.tail = new_node

        else:
            self.tail.next = new_node
            self.tail = new_node



    def list_all_nodes(self):


        if self.head is None:
            print("Lista vazia")
            return

        cur = self.head
        while cur.next is not None:
            pass




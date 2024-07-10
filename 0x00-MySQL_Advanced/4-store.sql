-- Task: Create a trigger that decreases the quantity of an item after adding a new order
-- Context: Updating multiple tables for one action from your application can generate issues: network disconnection, crash, etc… to keep your data in good shape, let MySQL do it for you!

DELIMITER //

-- Create a trigger that activates after inserting a new row into the orders table
CREATE TRIGGER decrease_item_quantity 
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    -- Update the quantity of the item in the items table
    UPDATE items
    SET quantity = quantity - NEW.number
    WHERE name = NEW.item_name;
END //

DELIMITER ;

# Caterspot Technical Interview Step 1

## Current Application Features

The inventory management Rails application provides high-level workflows
through product and inventory management, with behind-the-scenes order
fulfillment and lightweight employee authentication.

The product currently allows for:

* Browsing available products on the homepage
* Employee sign-in via an access code
* Employees can view recent and fulfillable orders
* Employees can fulfill orders that have appropriate in-stock inventory
* Employees can refill inventory on a per-product basis

The application's [README](./README.md) covers developer setup instructions.

## New Feature Guidance

The new features outlined below may require new database fields, restructuring
of existing values, or additional impacts either within or outside the system
(technical vs process). Consider following existing developer practices as
makes sense.

Please capture any outstanding side-effects of changes (e.g. customer support
needing to collect further information, downtime for any migrations, changes to
employee processes, or messaging around new functionality) in the corresponding
commit message.

## Getting Familiar

### `on_shelf` counter cache

The current version of the application has a view `product_on_shelf_quantities`
to easily refer to the amount of units available in the inventory in SQL.
However, the business is growing and that view is starting to become costly.

Implement a counter cache stored in a new column `products.on_shelf`, drop the
view, and update the existing queries. You can assume downtime to initialize the
cache, but its maintenance should be robust and free of race conditions.

### `Order#fulfillable?` needs a fix

If you study the current model, you'll see the method `Order#fulfillable?` has a
logic bug. Write a comment above the method definition explaining what has been
overlooked and possible ways to address it.

You do not need to write the fix.

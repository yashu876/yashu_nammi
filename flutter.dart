import 'package:flutter/material.dart';

// DATA_MODEL
class Recipe {
  final String name;
  final List<String> steps;

  const Recipe({
    required this.name,
    required this.steps,
  });
}

class Cuisine {
  final String name;
  final List<Recipe> recipes;

  const Cuisine({required this.name, required this.recipes});
}

void main() => runApp(const CookLook());

class CookLook extends StatelessWidget {
  const CookLook({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CookLook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.pinkAccent),
      home: const CookLookHome(),
    );
  }
}

class CookLookHome extends StatefulWidget {
  const CookLookHome({super.key});
  @override
  State<CookLookHome> createState() => _CookLookHomeState();
}

class _CookLookHomeState extends State<CookLookHome> {
  int _index = 0;

  final List<Cuisine> cuisines = [
    Cuisine(
      name: 'Italian',
      recipes: [
        Recipe(
          name: 'Pasta Primavera',
          steps: [
            "1. Boil pasta according to package directions until al dente.",
            "2. Sauté a colorful mix of seasonal vegetables (e.g., asparagus, bell peppers, zucchini, cherry tomatoes) in olive oil with garlic.",
            "3. Add cooked pasta to the vegetables, toss with a light cream sauce or pesto, and a splash of pasta water.",
            "4. Garnish generously with freshly grated Parmesan cheese and fresh basil leaves.",
            "5. Serve immediately and enjoy this vibrant, healthy Italian classic!",
          ],
        ),
        Recipe(
          name: 'Pizza Margherita',
          steps: [
            "1. Prepare or unroll pizza dough onto a lightly floured surface or baking sheet.",
            "2. Spread a thin, even layer of quality tomato sauce over the dough, leaving a small border for the crust.",
            "3. Distribute slices of fresh mozzarella cheese evenly over the sauce, then scatter fresh basil leaves.",
            "4. Bake in a preheated oven (220°C/425°F) for 10-15 minutes, or until the crust is golden and the cheese is bubbly and slightly browned.",
            "5. Remove from oven, drizzle with a little olive oil, slice, and serve hot.",
          ],
        ),
      ],
    ),
    Cuisine(
      name: 'Indian',
      recipes: [
        Recipe(
          name: 'Paneer Butter Masala',
          steps: [
            "1. Cut paneer into cubes and shallow fry until lightly golden. Set aside.",
            "2. Sauté chopped onions, ginger-garlic paste, and tomatoes until softened. Cool slightly and blend into a smooth paste.",
            "3. Heat butter in a pan, add the blended paste, and cook until the raw smell disappears.",
            "4. Stir in powdered spices like turmeric, red chili, coriander, and garam masala. Cook for a few minutes.",
            "5. Add water or vegetable broth to achieve desired consistency, then stir in cream and the fried paneer cubes. Simmer gently.",
            "6. Garnish with fresh cilantro and serve hot with naan or rice.",
          ],
        ),
        Recipe(
          name: 'Biryani',
          steps: [
            "1. Marinate chicken or preferred vegetables with yogurt, ginger-garlic paste, and biryani spices for at least 30 minutes.",
            "2. Partially cook basmati rice with whole spices (cinnamon, cardamom, cloves) until 70% done. Drain.",
            "3. In a heavy-bottomed pot, layer the marinated ingredients, then the partially cooked rice.",
            "4. Garnish with fried onions, fresh mint, cilantro, and a drizzle of saffron-infused milk or ghee.",
            "5. Cover tightly and cook on low heat (dum style) for 20-25 minutes until rice is fully cooked and flavors are melded.",
            "6. Serve gently mixed, with raita on the side.",
          ],
        ),
        Recipe(
          name: 'Butter Chicken',
          steps: [
            "1. Marinate chicken pieces (boneless thigh or breast) with yogurt, ginger-garlic paste, red chili powder, and turmeric. Grill or pan-fry until cooked.",
            "2. For the gravy, sauté onions, tomatoes, cashews, ginger, garlic, and green chilies. Blend to a smooth paste.",
            "3. Melt butter in a pan, add the blended paste, and cook until oil separates.",
            "4. Stir in a blend of spices including garam masala, fenugreek leaves (kasoori methi), and a pinch of sugar.",
            "5. Add the cooked chicken, a generous amount of fresh cream, and simmer until the sauce thickens.",
            "6. Garnish with fresh cilantro and a swirl of cream. Serve with naan or rice.",
          ],
        ),
      ],
    ),
    Cuisine(
      name: 'Japanese',
      recipes: [
        Recipe(
          name: 'Sushi Roll',
          steps: [
            "1. Prepare sushi rice: cook, then season with rice vinegar, sugar, and salt. Allow to cool.",
            "2. Place a sheet of nori (seaweed) on a bamboo rolling mat.",
            "3. Spread a thin, even layer of sushi rice over 2/3 of the nori, leaving a border at the top.",
            "4. Arrange your chosen fillings (e.g., sliced fish, avocado, cucumber, crab stick) in a line across the center of the rice.",
            "5. Using the bamboo mat, carefully roll the sushi tightly from the bottom up. Seal the edge with a little water.",
            "6. Slice the roll into 6-8 pieces with a sharp, wet knife. Serve with soy sauce, wasabi, and pickled ginger.",
          ],
        ),
        Recipe(
          name: 'Ramen Bowl',
          steps: [
            "1. Prepare a flavorful ramen broth (pork, chicken, or vegetable-based) in advance or use a good quality store-bought broth.",
            "2. Cook ramen noodles separately according to package instructions until al dente. Drain well.",
            "3. Warm your ramen bowls. Add a ladle of tare (seasoning base) to each bowl, then pour in the hot broth and stir.",
            "4. Add the cooked noodles to the broth.",
            "5. Carefully arrange your toppings: sliced chashu pork, a perfectly soft-boiled egg (ajitsuke tamago), nori sheets, menma (fermented bamboo shoots), and chopped green onions.",
            "6. Serve immediately, allowing the aromas to entice before enjoying every slurp!",
          ],
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.pinkAccent, Colors.pink],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.pink, Colors.pinkAccent],
              ),
            ),
          ),
          title: const Text(
            "🍴 COOKLOOK 🥄",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: _index == 0
            ? ListView(
                padding: const EdgeInsets.all(12),
                children: cuisines.map<Widget>((cuisine) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    elevation: 6,
                    color: Colors.white.withOpacity(0.95),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    child: ExpansionTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.pinkAccent,
                        child: Text(cuisine.name[0],
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                      title: Text(
                        cuisine.name,
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink),
                      ),
                      children: cuisine.recipes
                          .map<Widget>((recipe) => ListTile(
                                title: Text(
                                  recipe.name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                ),
                                leading: CircleAvatar(
                                  backgroundColor: Colors.pink.shade200,
                                  child: Text(recipe.name[0],
                                      style: const TextStyle(
                                          color: Colors.white)),
                                ),
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute<RecipePage>(
                                      builder: (_) =>
                                          RecipePage(recipe: recipe)),
                                ),
                              ))
                          .toList(),
                    ),
                  );
                }).toList(),
              )
            : Center(
                child: Text(
                  [
                    "Saved Recipes",
                    "Add Recipe",
                    "Inbox",
                    "Profile"
                  ][_index - 1],
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                ),
              ),
        bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.pink[50],
          indicatorColor: Colors.pinkAccent,
          selectedIndex: _index,
          onDestinationSelected: (i) => setState(() => _index = i),
          destinations: const <NavigationDestination>[
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(icon: Icon(Icons.favorite), label: "Saved"),
            NavigationDestination(icon: Icon(Icons.add), label: "Add"),
            NavigationDestination(icon: Icon(Icons.mail), label: "Inbox"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}

class RecipePage extends StatelessWidget {
  final Recipe recipe;
  const RecipePage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.pinkAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("🍲 ${recipe.name}",
                    style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.pink)),
                const SizedBox(height: 12),
                const Text("Steps:",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const SizedBox(height: 8),
                ...recipe.steps.map<Widget>((s) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(s, style: const TextStyle(fontSize: 16)),
                    )),
              ]),
        ),
      ),
    );
  }
}

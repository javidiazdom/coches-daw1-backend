# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sections = Section.create([{title: 'Sección 1', body: 'Texto de prueba', picture_url: 'Imagen/de/prueba.jpg'},{title: 'Sección 2', body: 'Texto de prueba', picture_url: 'Imagen/de/prueba.jpg'},{title: 'Sección 3', body: 'Texto de prueba', picture_url: 'Imagen/de/prueba.jpg'}])
specifications = Specification.create([{prestacion: 'Ejemplo2', valor: 'Ejemplo1'},{prestacion: 'Ejemplo3', valor: 'Ejemplo2'},{prestacion: 'Ejemplo5', valor: 'Ejemplo4'}]);

review = Review.create({title: 'Review 1', sections: sections, specifications: specifications});

article = Article.create({title: 'New 1', description: 'ta pi cua', picture:'', category: 'Electrico', time: '10 minutos'});


 

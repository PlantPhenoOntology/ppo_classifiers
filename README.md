# ppo_classifiers
Classifiers for identifying phenology traits on images of plants

There is a lot of effort to digitize and annotate photographs of plant images and herbarium specimens. However, this effort is, up until now, mostly manual, error prone, and labor intensive resulting in only a fraction of these images being fully annotated. This project uses neural networks to automate the annotation of some biologically significant traits related to [phenology](https://en.wikipedia.org/wiki/Phenology): flowering, fruiting, leaf-out, etc.

The basic steps are:

1. Obtain a database of plant images with corresponding annotations.
   1. Clean and filter the images with annotations to contain only angiosperm records.
   2. It has an annotation of the specimen's phylogenetic order.
   3. It has exactly one image associated with the specimen. More than one image creates confusion as to which image contains the trait.
2. Train a neural network(s) to recognize the traits. We are using the [pytorch](https://pytorch.org/) library to build the neural networks.
3. Use the networks to annotate records.

## Setup

1. `git clone https://github.com/PlantPhenoOntology/ppo_classifiers.git`
2. `cd /path/to/ppo_classifiers`
3. `./setup_env.bash`
4. You need to do this every time you start using this module.
   1. `cd /path/to/herbarim_phenology`
   2. `source ./.venv/bin/activate`

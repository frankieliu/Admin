# limitation
- domain specificity
- hallucination
- knowledge cutoff

# Hallucination
- should not train on every piece of information

# provide some information at training time

# pre-training 
train on the questions and know how to respond to them

knowledge leak into pre-training
not the primary goal
input - output text mapping

#
Train on separable data
What is data that is modifiable
and data that more "fixed"

# give example!

zero shot no example
one-shot one example

diversity of examples
asking llm to do completely different tasks

how much information

diversity of examples more important

you can give a series of different tasks

# few-shot: in-context learning
learning is misused -- no weight updates

# chain of thought
chain of thought prompting
prompt with a train of thought
few shots

ie by giving examples how to solve a problem,
it encourages the LLM to give more steps

does not allow model to do multiple iterations

# yan le cun
doesn't believe llm can do reasoning

# in a single call
let's do it in a single call

# ReAct: Reasoning + Acting
Generates: reasoning traces

Have multiple calls to LLM

Break the problem into smaller problems
- requires planning
- calling llm 
  - update the output with updated information

Have to tell the LLM how to use a tool
- and what information you can get from a tool

To answer question need to give LLM access to
use different tools
- allow LLM to use different tools

# LLM 
weather api and what api is doing
stock api and what api is doing
sql api and tells them employees profile
should I use umbrella in Toronto

How does the LLM know that it has to "wait" for the results of the weather API

What is the

Can break out of the reasoning loop once the LLM
final answer tool or the number of iterations


Solve a question answering by interleaving Thought, Action, Observation

Thought 1 - I need chain thought
Action 1 - Search[Colorado]
Observation 1 - backend will give 

Asking LLM to return the Action
common to add few shot with example

Apple Remote
devices can control the program Apple Remote
orinally deisng

Apple Remote -> Program
Other devices -> Control

Google search

What the the name of the program that Apple Remote can control -> name of the program

Search[Apple Remote] - done by LLM
Observation - Front Row
Search[program]

Search[Front Row [software]]

keyboard function keys

Is this example contrived
This example is a bit more complex

# langchain

Atomic operations chained one after the other
One step is the LLM

from langchain_openai import ChatOpenAI
llm = ChatOpenAI(api_key=os.environ["OPENAI_API_KEY"])
answer = llm.invoke("how ...?")

from langchain_core.prompts import ChatPromptTemplate
template = ChatPromptTemplate.from_message([

])
template.invoke()
chain = prompt | llm
print(chain.first)
chain_result = chain.invoke({"input": "how can langsmith..."})

chain = prompt | llm | output_parser

https://colab.research.google.com/drive/1TBPbhgNv2a3Qc9Z42Ua_Kj_BeW6LN_7F#scrollTo=iAkrcwODDkPJ

from langchain_community.document_loaders import WebBaseLoader

from langchain_community.vectorstores import FAISS
from langchain_text_splitters import RecursiveCharacterTextSplitter

retriever = vector.as_retriever()

retriever will go to the parameter context
retriever | prompt | llm
"waiting for input"

# what are agents
What's the best time to visit the Grand Canyon

ReAct
Tools - APIs

User Request -> Agent -> Tools
                Memory

# keep track of the session history

Ex:
Q1 ...
Q2 ... it?
Q3 ... doing that

Session history context
Backend has the memory

Planning + Tools + Memory + LLM = Agent

Planning without Feedback - 
Planning with Feedback - React

function calls or API

# TavilySearchResults

# status
Biggest

1. Stable high quality connectors or tools
New tools connectors to new tools

2. MCP
protocol connect model with tools

3. Latency
Reduce latency of LLM
make model size smaller
context window to make it fit
- what sets the latency

4. safety and security
model access to external tools
new tools 
malicious content that steer the content
external 
adversarial training

# 80 or 20 when wrong


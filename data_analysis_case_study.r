{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "6b6cb2ae",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-05-26T23:14:28.576133Z",
     "iopub.status.busy": "2021-05-26T23:14:28.574429Z",
     "iopub.status.idle": "2021-05-26T23:14:28.597461Z"
    },
    "papermill": {
     "duration": 0.052174,
     "end_time": "2023-04-14T11:59:43.650567",
     "exception": false,
     "start_time": "2023-04-14T11:59:43.598393",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"Introduction\"></a>\n",
    "# Introduction\n",
    "\n",
    "This is my case study performed under the capstone project of the Google Data Analysis Specialization. This case study covers all the steps of data analysis process namely Ask, Prepare, Process, Analyze, Share, and Act.\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "81556248",
   "metadata": {
    "papermill": {
     "duration": 0.04997,
     "end_time": "2023-04-14T11:59:43.750786",
     "exception": false,
     "start_time": "2023-04-14T11:59:43.700816",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"ask\"></a>\n",
    "# Ask\n",
    "\n",
    "For the ask step, first let's get some context from the cyclistic document:\n",
    "\n",
    "    Scenario\n",
    "    \n",
    "    You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6aeffa6d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-05-26T23:38:29.175737Z",
     "iopub.status.busy": "2021-05-26T23:38:29.173599Z",
     "iopub.status.idle": "2021-05-26T23:38:29.192519Z"
    },
    "papermill": {
     "duration": 0.049075,
     "end_time": "2023-04-14T11:59:43.851205",
     "exception": false,
     "start_time": "2023-04-14T11:59:43.802130",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"ask-guiding\"></a>\n",
    "## Guiding questions\n",
    "\n",
    "* **What is the problem you are trying to solve?**\n",
    "\n",
    "The main objective is understand the usage pattern of casual riders and come up with a strategy to convert the casual users to annual users.\n",
    "    \n",
    "* **How can your insights drive business decisions?**\n",
    "\n",
    "Insights from data analysis can drive business decisions by providing compelling evidence-based recommendations. By analyzing the data, we can identify patterns and trends in the behavior of casual riders and annual members, which can inform the development of a targeted marketing strategy. The insights gained from data analysis can help us understand the factors that drive annual membership, such as the duration and frequency of bike rides, the time of day and day of the week that bikes are rented, and the demographics of annual members. Armed with this information, the team can develop a marketing strategy that speaks directly to the needs and preferences of casual riders, in order to convert them into annual members. By making data-driven decisions, Cyclistic can optimize its marketing efforts and maximize the number of annual memberships.\n",
    "    "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "335dfbc2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-05-26T23:44:00.685499Z",
     "iopub.status.busy": "2021-05-26T23:44:00.68334Z",
     "iopub.status.idle": "2021-05-26T23:44:00.735538Z"
    },
    "papermill": {
     "duration": 0.04925,
     "end_time": "2023-04-14T11:59:43.951205",
     "exception": false,
     "start_time": "2023-04-14T11:59:43.901955",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"ask-key\"></a>\n",
    "## Key tasks\n",
    "\n",
    "- 1) Identify the business task: The business task is to design a new marketing strategy that can convert casual riders into annual members in order to maximize the number of annual memberships and ensure the company's future success.\n",
    "\n",
    "- 2) Consider key stakeholders: The key stakeholders in this task include Cyclistic's executives who must approve the recommendations, the marketing team responsible for developing the marketing strategy, and the casual riders and annual members who are the target of the marketing campaign. Additionally, investors, shareholders, and employees of Cyclistic are also stakeholders who have a vested interest in the success of the company."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3c24da48",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-05-26T23:46:04.486724Z",
     "iopub.status.busy": "2021-05-26T23:46:04.484497Z",
     "iopub.status.idle": "2021-05-26T23:46:04.609649Z"
    },
    "papermill": {
     "duration": 0.052103,
     "end_time": "2023-04-14T11:59:44.054844",
     "exception": false,
     "start_time": "2023-04-14T11:59:44.002741",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"ask-deliverable\"></a>\n",
    "## Deliverable\n",
    "\n",
    "- [x] A clear statement of the business task\n",
    "    \n",
    "    The business task is to increase the number of annual memberships at Cyclistic by designing and implementing a new marketing strategy that targets casual riders, with the aim of converting them into annual members. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5a4e1589",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-05-26T23:47:08.666215Z",
     "iopub.status.busy": "2021-05-26T23:47:08.664228Z",
     "iopub.status.idle": "2021-05-26T23:47:08.685207Z"
    },
    "papermill": {
     "duration": 0.050378,
     "end_time": "2023-04-14T11:59:44.155463",
     "exception": false,
     "start_time": "2023-04-14T11:59:44.105085",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"prepare\"></a>\n",
    "# Prepare\n",
    "\n",
    "The project will use the data provided by [this kaggle dataset](https://www.kaggle.com/timgid/cyclistic-dataset-google-certificate-capstone). But Google also provided their [own link](https://divvy-tripdata.s3.amazonaws.com/index.html) with the same dataset but expanded with more years and station descriptions.\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ab5ea985",
   "metadata": {
    "papermill": {
     "duration": 0.049073,
     "end_time": "2023-04-14T11:59:44.255515",
     "exception": false,
     "start_time": "2023-04-14T11:59:44.206442",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"prepare-guiding\"></a>\n",
    "## Guiding questions\n",
    "\n",
    "* **Where is your data located?**\n",
    "\n",
    "The data is located in a kaggle dataset.\n",
    "\n",
    "* **How is the data organized?**\n",
    "\n",
    "The data is separated by month, each stored in a seperate csv file.\n",
    "\n",
    "* **Are there issues with bias or credibility in this data? Does your data ROCCC?**\n",
    "\n",
    "the dataset is unbiased and credible as it is made up of the company's own clients i.e. riders. And finally, it's ROCCC because it's reliable, original, comprehensive, current and cited.\n",
    "\n",
    "* **How are you addressing licensing, privacy, security, and accessibility?**\n",
    "\n",
    "The company has  their own licence over the dataset. Besides that, the dataset doesn't have any personal information about the riders.\n",
    "\n",
    "* **How did you verify the data’s integrity?**\n",
    "\n",
    "All the files have consistent columns and each column has the correct type of data.\n",
    "\n",
    "* **How does it help you answer your question?**\n",
    "\n",
    "It may have some key insights about the riders and their riding style\n",
    "\n",
    "* **Are there any problems with the data?**\n",
    "\n",
    "Though the dataset is comprehensive, some additional attributes that could be useful in analyzing the differences between casual riders and annual members could include:\n",
    "\n",
    "Rider Type: This attribute would identify whether the rider is a casual rider or an annual member, which is crucial for the analysis and marketing strategy development.\n",
    "\n",
    "- Rider Demographics: Collecting data on the age, gender, income, education level, and other demographic information of riders could help the marketing team better understand the characteristics of their target audience and tailor the marketing strategy accordingly.\n",
    "\n",
    "- Ride Duration and Frequency: Collecting data on the duration and frequency of rides by casual riders and annual members could provide insights into the different usage patterns and behaviors between the two groups.\n",
    "\n",
    "- Ride Purpose: Collecting data on the purpose of the ride, such as commuting, leisure, or exercise, could help the marketing team understand the motivations behind ridership and target the marketing strategy accordingly.\n",
    "\n",
    "Including these additional attributes could provide a more comprehensive understanding of the differences between casual riders and annual members and lead to more effective marketing strategies."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4c02fff8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-05-27T00:07:35.89933Z",
     "iopub.status.busy": "2021-05-27T00:07:35.893873Z",
     "iopub.status.idle": "2021-05-27T00:07:35.940877Z"
    },
    "papermill": {
     "duration": 0.050126,
     "end_time": "2023-04-14T11:59:44.354820",
     "exception": false,
     "start_time": "2023-04-14T11:59:44.304694",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    " <a id=\"prepare-key\"></a>\n",
    " ## Key tasks\n",
    "\n",
    "- [x] Download data and store it appropriately.\n",
    "- [x] Identify how it’s organized.\n",
    "- [x] Sort and filter the data.\n",
    "- [x] Determine the credibility of the data."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4e15ab6d",
   "metadata": {
    "papermill": {
     "duration": 0.049548,
     "end_time": "2023-04-14T11:59:44.456359",
     "exception": false,
     "start_time": "2023-04-14T11:59:44.406811",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"prepare-deliverable\"></a>\n",
    "## Deliverable\n",
    "\n",
    "- [x] A description of all data sources used\n",
    "\n",
    "The main data source is 12 months (Between april 2020 and march 2021) of riding data provided by the Cicylistic company."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1af2f6f2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-05-27T00:11:00.234224Z",
     "iopub.status.busy": "2021-05-27T00:11:00.228627Z",
     "iopub.status.idle": "2021-05-27T00:11:00.271782Z"
    },
    "papermill": {
     "duration": 0.051784,
     "end_time": "2023-04-14T11:59:44.557537",
     "exception": false,
     "start_time": "2023-04-14T11:59:44.505753",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"process\"></a>\n",
    "# Process\n",
    "\n",
    "This step will prepare the data for analysis. All the csv files will be merged into one file to improve workflow"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "2bf9d5b0",
   "metadata": {
    "papermill": {
     "duration": 0.048486,
     "end_time": "2023-04-14T11:59:44.654693",
     "exception": false,
     "start_time": "2023-04-14T11:59:44.606207",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"process-code\"></a>\n",
    "## Code"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d179d4c5",
   "metadata": {
    "papermill": {
     "duration": 0.048394,
     "end_time": "2023-04-14T11:59:44.751456",
     "exception": false,
     "start_time": "2023-04-14T11:59:44.703062",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"process-code-dependences\"></a>\n",
    "### Dependences\n",
    "\n",
    "The main dependencie for the project will be tidyverse."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "1b2aac77",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T11:59:44.858375Z",
     "iopub.status.busy": "2023-04-14T11:59:44.855098Z",
     "iopub.status.idle": "2023-04-14T11:59:46.416319Z",
     "shell.execute_reply": "2023-04-14T11:59:46.415219Z"
    },
    "papermill": {
     "duration": 1.615126,
     "end_time": "2023-04-14T11:59:46.416576",
     "exception": false,
     "start_time": "2023-04-14T11:59:44.801450",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching packages\u001b[22m ─────────────────────────────────────── tidyverse 1.3.0 ──\n",
      "\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2\u001b[39m 3.3.3     \u001b[32m✔\u001b[39m \u001b[34mpurrr  \u001b[39m 0.3.4\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtibble \u001b[39m 3.1.1     \u001b[32m✔\u001b[39m \u001b[34mdplyr  \u001b[39m 1.0.5\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtidyr  \u001b[39m 1.1.3     \u001b[32m✔\u001b[39m \u001b[34mstringr\u001b[39m 1.4.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mreadr  \u001b[39m 1.4.0     \u001b[32m✔\u001b[39m \u001b[34mforcats\u001b[39m 0.5.0\n",
      "\n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\n"
     ]
    }
   ],
   "source": [
    "library(tidyverse)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "d2766c40",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T11:59:46.564509Z",
     "iopub.status.busy": "2023-04-14T11:59:46.525015Z",
     "iopub.status.idle": "2023-04-14T11:59:46.576957Z",
     "shell.execute_reply": "2023-04-14T11:59:46.575788Z"
    },
    "papermill": {
     "duration": 0.108593,
     "end_time": "2023-04-14T11:59:46.577132",
     "exception": false,
     "start_time": "2023-04-14T11:59:46.468539",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "library(dplyr)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e1b116ac",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-05-27T00:22:41.730232Z",
     "iopub.status.busy": "2021-05-27T00:22:41.726599Z",
     "iopub.status.idle": "2021-05-27T00:22:41.75442Z"
    },
    "papermill": {
     "duration": 0.053937,
     "end_time": "2023-04-14T11:59:46.684130",
     "exception": false,
     "start_time": "2023-04-14T11:59:46.630193",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"process-code-concatenating\"></a>\n",
    "### Concatenating\n",
    "All the csvs files will be concatenated into one dataframe."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "5fa1159f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T11:59:46.793060Z",
     "iopub.status.busy": "2023-04-14T11:59:46.790927Z",
     "iopub.status.idle": "2023-04-14T12:03:46.382967Z",
     "shell.execute_reply": "2023-04-14T12:03:46.381898Z"
    },
    "papermill": {
     "duration": 239.649152,
     "end_time": "2023-04-14T12:03:46.383181",
     "exception": false,
     "start_time": "2023-04-14T11:59:46.734029",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "csv_files <- list.files(path = \"../input\", recursive = TRUE, full.names=TRUE)\n",
    "\n",
    "cyclistic_merged <- do.call(rbind, lapply(csv_files, read.csv))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "6ae97622",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:03:46.500363Z",
     "iopub.status.busy": "2023-04-14T12:03:46.498739Z",
     "iopub.status.idle": "2023-04-14T12:03:46.533305Z",
     "shell.execute_reply": "2023-04-14T12:03:46.531865Z"
    },
    "papermill": {
     "duration": 0.089511,
     "end_time": "2023-04-14T12:03:46.533456",
     "exception": false,
     "start_time": "2023-04-14T12:03:46.443945",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 13</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>member_casual</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;fct&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>A847FADBBC638E45</td><td>docked_bike</td><td>2020-04-26 17:45:14</td><td>2020-04-26 18:12:03</td><td><span style=white-space:pre-wrap>Eckhart Park                       </span></td><td>86 </td><td>Lincoln Ave &amp; Diversey Pkwy</td><td>152</td><td>41.8964</td><td>-87.6610</td><td>41.9322</td><td>-87.6586</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>5405B80E996FF60D</td><td>docked_bike</td><td>2020-04-17 17:08:54</td><td>2020-04-17 17:17:03</td><td><span style=white-space:pre-wrap>Drake Ave &amp; Fullerton Ave          </span></td><td>503</td><td><span style=white-space:pre-wrap>Kosciuszko Park            </span></td><td>499</td><td>41.9244</td><td>-87.7154</td><td>41.9306</td><td>-87.7238</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>5DD24A79A4E006F4</td><td>docked_bike</td><td>2020-04-01 17:54:13</td><td>2020-04-01 18:08:36</td><td><span style=white-space:pre-wrap>McClurg Ct &amp; Erie St               </span></td><td>142</td><td>Indiana Ave &amp; Roosevelt Rd </td><td>255</td><td>41.8945</td><td>-87.6179</td><td>41.8679</td><td>-87.6230</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2A59BBDF5CDBA725</td><td>docked_bike</td><td>2020-04-07 12:50:19</td><td>2020-04-07 13:02:31</td><td><span style=white-space:pre-wrap>California Ave &amp; Division St       </span></td><td>216</td><td><span style=white-space:pre-wrap>Wood St &amp; Augusta Blvd     </span></td><td>657</td><td>41.9030</td><td>-87.6975</td><td>41.8992</td><td>-87.6722</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>27AD306C119C6158</td><td>docked_bike</td><td>2020-04-18 10:22:59</td><td>2020-04-18 11:15:54</td><td><span style=white-space:pre-wrap>Rush St &amp; Hubbard St               </span></td><td>125</td><td>Sheridan Rd &amp; Lawrence Ave </td><td>323</td><td>41.8902</td><td>-87.6262</td><td>41.9695</td><td>-87.6547</td><td>casual</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>356216E875132F61</td><td>docked_bike</td><td>2020-04-30 17:55:47</td><td>2020-04-30 18:01:11</td><td>Mies van der Rohe Way &amp; Chicago Ave</td><td>173</td><td><span style=white-space:pre-wrap>Streeter Dr &amp; Grand Ave    </span></td><td>35 </td><td>41.8969</td><td>-87.6217</td><td>41.8923</td><td>-87.6120</td><td>member</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 13\n",
       "\\begin{tabular}{r|lllllllllllll}\n",
       "  & ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & start\\_lat & start\\_lng & end\\_lat & end\\_lng & member\\_casual\\\\\n",
       "  & <fct> & <fct> & <fct> & <fct> & <fct> & <chr> & <fct> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <fct>\\\\\n",
       "\\hline\n",
       "\t1 & A847FADBBC638E45 & docked\\_bike & 2020-04-26 17:45:14 & 2020-04-26 18:12:03 & Eckhart Park                        & 86  & Lincoln Ave \\& Diversey Pkwy & 152 & 41.8964 & -87.6610 & 41.9322 & -87.6586 & member\\\\\n",
       "\t2 & 5405B80E996FF60D & docked\\_bike & 2020-04-17 17:08:54 & 2020-04-17 17:17:03 & Drake Ave \\& Fullerton Ave           & 503 & Kosciuszko Park             & 499 & 41.9244 & -87.7154 & 41.9306 & -87.7238 & member\\\\\n",
       "\t3 & 5DD24A79A4E006F4 & docked\\_bike & 2020-04-01 17:54:13 & 2020-04-01 18:08:36 & McClurg Ct \\& Erie St                & 142 & Indiana Ave \\& Roosevelt Rd  & 255 & 41.8945 & -87.6179 & 41.8679 & -87.6230 & member\\\\\n",
       "\t4 & 2A59BBDF5CDBA725 & docked\\_bike & 2020-04-07 12:50:19 & 2020-04-07 13:02:31 & California Ave \\& Division St        & 216 & Wood St \\& Augusta Blvd      & 657 & 41.9030 & -87.6975 & 41.8992 & -87.6722 & member\\\\\n",
       "\t5 & 27AD306C119C6158 & docked\\_bike & 2020-04-18 10:22:59 & 2020-04-18 11:15:54 & Rush St \\& Hubbard St                & 125 & Sheridan Rd \\& Lawrence Ave  & 323 & 41.8902 & -87.6262 & 41.9695 & -87.6547 & casual\\\\\n",
       "\t6 & 356216E875132F61 & docked\\_bike & 2020-04-30 17:55:47 & 2020-04-30 18:01:11 & Mies van der Rohe Way \\& Chicago Ave & 173 & Streeter Dr \\& Grand Ave     & 35  & 41.8969 & -87.6217 & 41.8923 & -87.6120 & member\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 13\n",
       "\n",
       "| <!--/--> | ride_id &lt;fct&gt; | rideable_type &lt;fct&gt; | started_at &lt;fct&gt; | ended_at &lt;fct&gt; | start_station_name &lt;fct&gt; | start_station_id &lt;chr&gt; | end_station_name &lt;fct&gt; | end_station_id &lt;chr&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | member_casual &lt;fct&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | A847FADBBC638E45 | docked_bike | 2020-04-26 17:45:14 | 2020-04-26 18:12:03 | Eckhart Park                        | 86  | Lincoln Ave &amp; Diversey Pkwy | 152 | 41.8964 | -87.6610 | 41.9322 | -87.6586 | member |\n",
       "| 2 | 5405B80E996FF60D | docked_bike | 2020-04-17 17:08:54 | 2020-04-17 17:17:03 | Drake Ave &amp; Fullerton Ave           | 503 | Kosciuszko Park             | 499 | 41.9244 | -87.7154 | 41.9306 | -87.7238 | member |\n",
       "| 3 | 5DD24A79A4E006F4 | docked_bike | 2020-04-01 17:54:13 | 2020-04-01 18:08:36 | McClurg Ct &amp; Erie St                | 142 | Indiana Ave &amp; Roosevelt Rd  | 255 | 41.8945 | -87.6179 | 41.8679 | -87.6230 | member |\n",
       "| 4 | 2A59BBDF5CDBA725 | docked_bike | 2020-04-07 12:50:19 | 2020-04-07 13:02:31 | California Ave &amp; Division St        | 216 | Wood St &amp; Augusta Blvd      | 657 | 41.9030 | -87.6975 | 41.8992 | -87.6722 | member |\n",
       "| 5 | 27AD306C119C6158 | docked_bike | 2020-04-18 10:22:59 | 2020-04-18 11:15:54 | Rush St &amp; Hubbard St                | 125 | Sheridan Rd &amp; Lawrence Ave  | 323 | 41.8902 | -87.6262 | 41.9695 | -87.6547 | casual |\n",
       "| 6 | 356216E875132F61 | docked_bike | 2020-04-30 17:55:47 | 2020-04-30 18:01:11 | Mies van der Rohe Way &amp; Chicago Ave | 173 | Streeter Dr &amp; Grand Ave     | 35  | 41.8969 | -87.6217 | 41.8923 | -87.6120 | member |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          rideable_type started_at          ended_at           \n",
       "1 A847FADBBC638E45 docked_bike   2020-04-26 17:45:14 2020-04-26 18:12:03\n",
       "2 5405B80E996FF60D docked_bike   2020-04-17 17:08:54 2020-04-17 17:17:03\n",
       "3 5DD24A79A4E006F4 docked_bike   2020-04-01 17:54:13 2020-04-01 18:08:36\n",
       "4 2A59BBDF5CDBA725 docked_bike   2020-04-07 12:50:19 2020-04-07 13:02:31\n",
       "5 27AD306C119C6158 docked_bike   2020-04-18 10:22:59 2020-04-18 11:15:54\n",
       "6 356216E875132F61 docked_bike   2020-04-30 17:55:47 2020-04-30 18:01:11\n",
       "  start_station_name                  start_station_id\n",
       "1 Eckhart Park                        86              \n",
       "2 Drake Ave & Fullerton Ave           503             \n",
       "3 McClurg Ct & Erie St                142             \n",
       "4 California Ave & Division St        216             \n",
       "5 Rush St & Hubbard St                125             \n",
       "6 Mies van der Rohe Way & Chicago Ave 173             \n",
       "  end_station_name            end_station_id start_lat start_lng end_lat\n",
       "1 Lincoln Ave & Diversey Pkwy 152            41.8964   -87.6610  41.9322\n",
       "2 Kosciuszko Park             499            41.9244   -87.7154  41.9306\n",
       "3 Indiana Ave & Roosevelt Rd  255            41.8945   -87.6179  41.8679\n",
       "4 Wood St & Augusta Blvd      657            41.9030   -87.6975  41.8992\n",
       "5 Sheridan Rd & Lawrence Ave  323            41.8902   -87.6262  41.9695\n",
       "6 Streeter Dr & Grand Ave     35             41.8969   -87.6217  41.8923\n",
       "  end_lng  member_casual\n",
       "1 -87.6586 member       \n",
       "2 -87.7238 member       \n",
       "3 -87.6230 member       \n",
       "4 -87.6722 member       \n",
       "5 -87.6547 casual       \n",
       "6 -87.6120 member       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(cyclistic_merged)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "56dcf371",
   "metadata": {
    "papermill": {
     "duration": 0.053084,
     "end_time": "2023-04-14T12:03:46.638313",
     "exception": false,
     "start_time": "2023-04-14T12:03:46.585229",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"process-code-data\"></a>\n",
    "### Data cleaning"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bd96c776",
   "metadata": {
    "papermill": {
     "duration": 0.050892,
     "end_time": "2023-04-14T12:03:46.741169",
     "exception": false,
     "start_time": "2023-04-14T12:03:46.690277",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"process-code-data-removing\"></a>\n",
    "#### Removing Duplicates"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "16536f20",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:03:46.850070Z",
     "iopub.status.busy": "2023-04-14T12:03:46.849079Z",
     "iopub.status.idle": "2023-04-14T12:03:48.012979Z",
     "shell.execute_reply": "2023-04-14T12:03:48.010878Z"
    },
    "papermill": {
     "duration": 1.221079,
     "end_time": "2023-04-14T12:03:48.013182",
     "exception": false,
     "start_time": "2023-04-14T12:03:46.792103",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"Removed 209 duplicated rows\"\n"
     ]
    }
   ],
   "source": [
    "cyclistic_no_dups <- cyclistic_merged[!duplicated(cyclistic_merged$ride_id), ]\n",
    "print(paste(\"Removed\", nrow(cyclistic_merged) - nrow(cyclistic_no_dups), \"duplicated rows\"))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f0857880",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-05-27T02:27:48.702722Z",
     "iopub.status.busy": "2021-05-27T02:27:48.700731Z",
     "iopub.status.idle": "2021-05-27T02:27:48.715003Z"
    },
    "papermill": {
     "duration": 0.054527,
     "end_time": "2023-04-14T12:03:48.121830",
     "exception": false,
     "start_time": "2023-04-14T12:03:48.067303",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"process-code-data-parsing\"></a>\n",
    "#### Parsing datetime columns"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "15b68eae",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:03:48.237922Z",
     "iopub.status.busy": "2023-04-14T12:03:48.237088Z",
     "iopub.status.idle": "2023-04-14T12:04:15.942734Z",
     "shell.execute_reply": "2023-04-14T12:04:15.941945Z"
    },
    "papermill": {
     "duration": 27.766959,
     "end_time": "2023-04-14T12:04:15.942898",
     "exception": false,
     "start_time": "2023-04-14T12:03:48.175939",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "cyclistic_no_dups$started_at <- as.POSIXct(cyclistic_no_dups$started_at, \"%Y-%m-%d %H:%M:%S\")\n",
    "cyclistic_no_dups$ended_at <- as.POSIXct(cyclistic_no_dups$ended_at, \"%Y-%m-%d %H:%M:%S\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f587744f",
   "metadata": {
    "papermill": {
     "duration": 0.050381,
     "end_time": "2023-04-14T12:04:16.045280",
     "exception": false,
     "start_time": "2023-04-14T12:04:15.994899",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"process-code-manipulating\"></a>\n",
    "### Manipulating the data\n",
    "New columns will help improve calculation time in the future"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "98fc839c",
   "metadata": {
    "papermill": {
     "duration": 0.05112,
     "end_time": "2023-04-14T12:04:16.147166",
     "exception": false,
     "start_time": "2023-04-14T12:04:16.096046",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"process-code-manipulating-riding\"></a>\n",
    "#### ride_time_m\n",
    "Represents the total time of a bike ride, in minutes"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "9386d62a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:04:16.255557Z",
     "iopub.status.busy": "2023-04-14T12:04:16.253635Z",
     "iopub.status.idle": "2023-04-14T12:04:16.546335Z",
     "shell.execute_reply": "2023-04-14T12:04:16.544717Z"
    },
    "papermill": {
     "duration": 0.348564,
     "end_time": "2023-04-14T12:04:16.546491",
     "exception": false,
     "start_time": "2023-04-14T12:04:16.197927",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "     Min.   1st Qu.    Median      Mean   3rd Qu.      Max. \n",
       "-29049.97      7.88     14.52     26.48     26.63  58720.03 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic_no_dups <- cyclistic_no_dups %>%\n",
    "    mutate(ride_time_m = as.numeric(cyclistic_no_dups$ended_at - cyclistic_no_dups$started_at) / 60)\n",
    "summary(cyclistic_no_dups$ride_time_m)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "87808878",
   "metadata": {
    "papermill": {
     "duration": 0.051036,
     "end_time": "2023-04-14T12:04:16.649115",
     "exception": false,
     "start_time": "2023-04-14T12:04:16.598079",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"process-code-manipulating-year\"></a>\n",
    "#### year_month\n",
    "Separate the year and the month into one column"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "6002e2c5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:04:16.814569Z",
     "iopub.status.busy": "2023-04-14T12:04:16.812985Z",
     "iopub.status.idle": "2023-04-14T12:04:30.158975Z",
     "shell.execute_reply": "2023-04-14T12:04:30.157379Z"
    },
    "papermill": {
     "duration": 13.408831,
     "end_time": "2023-04-14T12:04:30.159188",
     "exception": false,
     "start_time": "2023-04-14T12:04:16.750357",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'2020 - 04 (Apr)'</li><li>'2020 - 05 (May)'</li><li>'2020 - 06 (Jun)'</li><li>'2020 - 07 (Jul)'</li><li>'2020 - 08 (Aug)'</li><li>'2020 - 09 (Sep)'</li><li>'2020 - 10 (Oct)'</li><li>'2020 - 11 (Nov)'</li><li>'2020 - 12 (Dec)'</li><li>'2021 - 01 (Jan)'</li><li>'2021 - 02 (Feb)'</li><li>'2021 - 03 (Mar)'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item '2020 - 04 (Apr)'\n",
       "\\item '2020 - 05 (May)'\n",
       "\\item '2020 - 06 (Jun)'\n",
       "\\item '2020 - 07 (Jul)'\n",
       "\\item '2020 - 08 (Aug)'\n",
       "\\item '2020 - 09 (Sep)'\n",
       "\\item '2020 - 10 (Oct)'\n",
       "\\item '2020 - 11 (Nov)'\n",
       "\\item '2020 - 12 (Dec)'\n",
       "\\item '2021 - 01 (Jan)'\n",
       "\\item '2021 - 02 (Feb)'\n",
       "\\item '2021 - 03 (Mar)'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. '2020 - 04 (Apr)'\n",
       "2. '2020 - 05 (May)'\n",
       "3. '2020 - 06 (Jun)'\n",
       "4. '2020 - 07 (Jul)'\n",
       "5. '2020 - 08 (Aug)'\n",
       "6. '2020 - 09 (Sep)'\n",
       "7. '2020 - 10 (Oct)'\n",
       "8. '2020 - 11 (Nov)'\n",
       "9. '2020 - 12 (Dec)'\n",
       "10. '2021 - 01 (Jan)'\n",
       "11. '2021 - 02 (Feb)'\n",
       "12. '2021 - 03 (Mar)'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"2020 - 04 (Apr)\" \"2020 - 05 (May)\" \"2020 - 06 (Jun)\" \"2020 - 07 (Jul)\"\n",
       " [5] \"2020 - 08 (Aug)\" \"2020 - 09 (Sep)\" \"2020 - 10 (Oct)\" \"2020 - 11 (Nov)\"\n",
       " [9] \"2020 - 12 (Dec)\" \"2021 - 01 (Jan)\" \"2021 - 02 (Feb)\" \"2021 - 03 (Mar)\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic_no_dups <- cyclistic_no_dups %>%\n",
    "    mutate(year_month = paste(strftime(cyclistic_no_dups$started_at, \"%Y\"),\n",
    "                              \"-\",\n",
    "                              strftime(cyclistic_no_dups$started_at, \"%m\"),\n",
    "                              paste(\"(\",strftime(cyclistic_no_dups$started_at, \"%b\"), \")\", sep=\"\")))\n",
    "unique(cyclistic_no_dups$year_month)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "94d245da",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-05-27T02:43:48.457093Z",
     "iopub.status.busy": "2021-05-27T02:43:48.455417Z",
     "iopub.status.idle": "2021-05-27T02:43:48.468852Z"
    },
    "papermill": {
     "duration": 0.053226,
     "end_time": "2023-04-14T12:04:30.265625",
     "exception": false,
     "start_time": "2023-04-14T12:04:30.212399",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"process-code-manipulating-weekday\"></a>\n",
    "#### weekday\n",
    "The weekday will be useful to determine patterns of travels in the week"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "c0134c4d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:04:30.375638Z",
     "iopub.status.busy": "2023-04-14T12:04:30.373919Z",
     "iopub.status.idle": "2023-04-14T12:04:37.319475Z",
     "shell.execute_reply": "2023-04-14T12:04:37.317831Z"
    },
    "papermill": {
     "duration": 7.002393,
     "end_time": "2023-04-14T12:04:37.320041",
     "exception": false,
     "start_time": "2023-04-14T12:04:30.317648",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'7 - Sun'</li><li>'5 - Fri'</li><li>'3 - Wed'</li><li>'2 - Tue'</li><li>'6 - Sat'</li><li>'4 - Thu'</li><li>'1 - Mon'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item '7 - Sun'\n",
       "\\item '5 - Fri'\n",
       "\\item '3 - Wed'\n",
       "\\item '2 - Tue'\n",
       "\\item '6 - Sat'\n",
       "\\item '4 - Thu'\n",
       "\\item '1 - Mon'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. '7 - Sun'\n",
       "2. '5 - Fri'\n",
       "3. '3 - Wed'\n",
       "4. '2 - Tue'\n",
       "5. '6 - Sat'\n",
       "6. '4 - Thu'\n",
       "7. '1 - Mon'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] \"7 - Sun\" \"5 - Fri\" \"3 - Wed\" \"2 - Tue\" \"6 - Sat\" \"4 - Thu\" \"1 - Mon\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic_no_dups <- cyclistic_no_dups %>%\n",
    "    mutate(weekday = paste(strftime(cyclistic_no_dups$ended_at, \"%u\"), \"-\", strftime(cyclistic_no_dups$ended_at, \"%a\")))\n",
    "unique(cyclistic_no_dups$weekday)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6318da4c",
   "metadata": {
    "papermill": {
     "duration": 0.056888,
     "end_time": "2023-04-14T12:04:37.432412",
     "exception": false,
     "start_time": "2023-04-14T12:04:37.375524",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"process-code-manipulating-start\"></a>\n",
    "#### start_hour\n",
    "Getting the hour of the day also may be useful for intra day analysis"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "0e85d357",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:04:37.543854Z",
     "iopub.status.busy": "2023-04-14T12:04:37.542395Z",
     "iopub.status.idle": "2023-04-14T12:04:40.301782Z",
     "shell.execute_reply": "2023-04-14T12:04:40.300582Z"
    },
    "papermill": {
     "duration": 2.817059,
     "end_time": "2023-04-14T12:04:40.302011",
     "exception": false,
     "start_time": "2023-04-14T12:04:37.484952",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'18'</li><li>'17'</li><li>'13'</li><li>'11'</li><li>'14'</li><li>'10'</li><li>'15'</li><li>'16'</li><li>'03'</li><li>'12'</li><li>'09'</li><li>'08'</li><li>'20'</li><li>'19'</li><li>'21'</li><li>'23'</li><li>'07'</li><li>'22'</li><li>'06'</li><li>'01'</li><li>'05'</li><li>'00'</li><li>'02'</li><li>'04'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item '18'\n",
       "\\item '17'\n",
       "\\item '13'\n",
       "\\item '11'\n",
       "\\item '14'\n",
       "\\item '10'\n",
       "\\item '15'\n",
       "\\item '16'\n",
       "\\item '03'\n",
       "\\item '12'\n",
       "\\item '09'\n",
       "\\item '08'\n",
       "\\item '20'\n",
       "\\item '19'\n",
       "\\item '21'\n",
       "\\item '23'\n",
       "\\item '07'\n",
       "\\item '22'\n",
       "\\item '06'\n",
       "\\item '01'\n",
       "\\item '05'\n",
       "\\item '00'\n",
       "\\item '02'\n",
       "\\item '04'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. '18'\n",
       "2. '17'\n",
       "3. '13'\n",
       "4. '11'\n",
       "5. '14'\n",
       "6. '10'\n",
       "7. '15'\n",
       "8. '16'\n",
       "9. '03'\n",
       "10. '12'\n",
       "11. '09'\n",
       "12. '08'\n",
       "13. '20'\n",
       "14. '19'\n",
       "15. '21'\n",
       "16. '23'\n",
       "17. '07'\n",
       "18. '22'\n",
       "19. '06'\n",
       "20. '01'\n",
       "21. '05'\n",
       "22. '00'\n",
       "23. '02'\n",
       "24. '04'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"18\" \"17\" \"13\" \"11\" \"14\" \"10\" \"15\" \"16\" \"03\" \"12\" \"09\" \"08\" \"20\" \"19\" \"21\"\n",
       "[16] \"23\" \"07\" \"22\" \"06\" \"01\" \"05\" \"00\" \"02\" \"04\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic_no_dups <- cyclistic_no_dups %>%\n",
    "    mutate(start_hour = strftime(cyclistic_no_dups$ended_at, \"%H\"))\n",
    "unique(cyclistic_no_dups$start_hour)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b448501d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-05-27T02:50:23.917667Z",
     "iopub.status.busy": "2021-05-27T02:50:23.916349Z",
     "iopub.status.idle": "2021-05-27T02:50:24.176743Z"
    },
    "papermill": {
     "duration": 0.053749,
     "end_time": "2023-04-14T12:04:40.411578",
     "exception": false,
     "start_time": "2023-04-14T12:04:40.357829",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"process-code-saving\"></a>\n",
    "### Saving the result as a CSV"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "33e0261b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:04:40.524687Z",
     "iopub.status.busy": "2023-04-14T12:04:40.522853Z",
     "iopub.status.idle": "2023-04-14T12:06:15.740154Z",
     "shell.execute_reply": "2023-04-14T12:06:15.739008Z"
    },
    "papermill": {
     "duration": 95.275458,
     "end_time": "2023-04-14T12:06:15.740412",
     "exception": false,
     "start_time": "2023-04-14T12:04:40.464954",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "cyclistic_no_dups %>%\n",
    "  write.csv(\"cyclistic_clean.csv\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0f3f3e8b",
   "metadata": {
    "papermill": {
     "duration": 0.054017,
     "end_time": "2023-04-14T12:06:15.855019",
     "exception": false,
     "start_time": "2023-04-14T12:06:15.801002",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"process-guiding\"></a>\n",
    "## Guiding questions\n",
    "\n",
    "* **What tools are you choosing and why?**\n",
    "\n",
    "I'm using R for this project, for two main reasons: Because of the large dataset and to gather experience with the language.\n",
    "\n",
    "* **Have you ensured your data’s integrity?**\n",
    "\n",
    "Yes, the data is consistent throughout the columns.\n",
    "\n",
    "* **What steps have you taken to ensure that your data is clean?**\n",
    "\n",
    "First the duplicated values where removed, then the columns where formatted to their correct format.\n",
    "\n",
    "* **How can you verify that your data is clean and ready to analyze?**\n",
    "\n",
    "It can be verified by this notebook.\n",
    "\n",
    "* **Have you documented your cleaning process so you can review and share those results?**\n",
    "\n",
    "Yes, it's all documented in this R notebook."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d26fe491",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-05-27T03:00:20.802942Z",
     "iopub.status.busy": "2021-05-27T03:00:20.801075Z",
     "iopub.status.idle": "2021-05-27T03:00:20.816523Z"
    },
    "papermill": {
     "duration": 0.053059,
     "end_time": "2023-04-14T12:06:15.961853",
     "exception": false,
     "start_time": "2023-04-14T12:06:15.908794",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"process-key\"></a>\n",
    "## Key tasks\n",
    "\n",
    "- [x] Check the data for errors.\n",
    "- [x] Choose your tools.\n",
    "- [x] Transform the data so you can work with it eectively\n",
    "- [x] Document the cleaning process."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "734e38e7",
   "metadata": {
    "papermill": {
     "duration": 0.053392,
     "end_time": "2023-04-14T12:06:16.069798",
     "exception": false,
     "start_time": "2023-04-14T12:06:16.016406",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"process-deliverable\"></a>\n",
    "## Deliverable\n",
    "\n",
    "- [x] Documentation of any cleaning or manipulation of data"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "36a2404e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-05-27T03:01:22.828119Z",
     "iopub.status.busy": "2021-05-27T03:01:22.826184Z",
     "iopub.status.idle": "2021-05-27T03:01:22.840726Z"
    },
    "papermill": {
     "duration": 0.056568,
     "end_time": "2023-04-14T12:06:16.182122",
     "exception": false,
     "start_time": "2023-04-14T12:06:16.125554",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"analyze\"></a>\n",
    "# Analyze\n",
    "The data exploration will consist of building a profile for annual members and how they differ from casual riders.\n",
    "\n",
    "Putting in a new variable with a simpler name will help reduce some typing in the future."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7a3bd10f",
   "metadata": {
    "papermill": {
     "duration": 0.0537,
     "end_time": "2023-04-14T12:06:16.290018",
     "exception": false,
     "start_time": "2023-04-14T12:06:16.236318",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"analyze-code\"></a>\n",
    "## Code"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "a2c4892e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:06:16.404886Z",
     "iopub.status.busy": "2023-04-14T12:06:16.402236Z",
     "iopub.status.idle": "2023-04-14T12:06:16.420545Z",
     "shell.execute_reply": "2023-04-14T12:06:16.418864Z"
    },
    "papermill": {
     "duration": 0.077373,
     "end_time": "2023-04-14T12:06:16.420712",
     "exception": false,
     "start_time": "2023-04-14T12:06:16.343339",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# This function help to resize the plots\n",
    "fig <- function(width, heigth){options(repr.plot.width = width, repr.plot.height = heigth)}"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "622a6edb",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:06:16.536294Z",
     "iopub.status.busy": "2023-04-14T12:06:16.534493Z",
     "iopub.status.idle": "2023-04-14T12:06:16.577314Z",
     "shell.execute_reply": "2023-04-14T12:06:16.575164Z"
    },
    "papermill": {
     "duration": 0.103172,
     "end_time": "2023-04-14T12:06:16.577503",
     "exception": false,
     "start_time": "2023-04-14T12:06:16.474331",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 17</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>member_casual</th><th scope=col>ride_time_m</th><th scope=col>year_month</th><th scope=col>weekday</th><th scope=col>start_hour</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;dttm&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>A847FADBBC638E45</td><td>docked_bike</td><td>2020-04-26 17:45:14</td><td>2020-04-26 18:12:03</td><td><span style=white-space:pre-wrap>Eckhart Park                       </span></td><td>86 </td><td>Lincoln Ave &amp; Diversey Pkwy</td><td>152</td><td>41.8964</td><td>-87.6610</td><td>41.9322</td><td>-87.6586</td><td>member</td><td>26.81667</td><td>2020 - 04 (Apr)</td><td>7 - Sun</td><td>18</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>5405B80E996FF60D</td><td>docked_bike</td><td>2020-04-17 17:08:54</td><td>2020-04-17 17:17:03</td><td><span style=white-space:pre-wrap>Drake Ave &amp; Fullerton Ave          </span></td><td>503</td><td><span style=white-space:pre-wrap>Kosciuszko Park            </span></td><td>499</td><td>41.9244</td><td>-87.7154</td><td>41.9306</td><td>-87.7238</td><td>member</td><td> 8.15000</td><td>2020 - 04 (Apr)</td><td>5 - Fri</td><td>17</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>5DD24A79A4E006F4</td><td>docked_bike</td><td>2020-04-01 17:54:13</td><td>2020-04-01 18:08:36</td><td><span style=white-space:pre-wrap>McClurg Ct &amp; Erie St               </span></td><td>142</td><td>Indiana Ave &amp; Roosevelt Rd </td><td>255</td><td>41.8945</td><td>-87.6179</td><td>41.8679</td><td>-87.6230</td><td>member</td><td>14.38333</td><td>2020 - 04 (Apr)</td><td>3 - Wed</td><td>18</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>2A59BBDF5CDBA725</td><td>docked_bike</td><td>2020-04-07 12:50:19</td><td>2020-04-07 13:02:31</td><td><span style=white-space:pre-wrap>California Ave &amp; Division St       </span></td><td>216</td><td><span style=white-space:pre-wrap>Wood St &amp; Augusta Blvd     </span></td><td>657</td><td>41.9030</td><td>-87.6975</td><td>41.8992</td><td>-87.6722</td><td>member</td><td>12.20000</td><td>2020 - 04 (Apr)</td><td>2 - Tue</td><td>13</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>27AD306C119C6158</td><td>docked_bike</td><td>2020-04-18 10:22:59</td><td>2020-04-18 11:15:54</td><td><span style=white-space:pre-wrap>Rush St &amp; Hubbard St               </span></td><td>125</td><td>Sheridan Rd &amp; Lawrence Ave </td><td>323</td><td>41.8902</td><td>-87.6262</td><td>41.9695</td><td>-87.6547</td><td>casual</td><td>52.91667</td><td>2020 - 04 (Apr)</td><td>6 - Sat</td><td>11</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>356216E875132F61</td><td>docked_bike</td><td>2020-04-30 17:55:47</td><td>2020-04-30 18:01:11</td><td>Mies van der Rohe Way &amp; Chicago Ave</td><td>173</td><td><span style=white-space:pre-wrap>Streeter Dr &amp; Grand Ave    </span></td><td>35 </td><td>41.8969</td><td>-87.6217</td><td>41.8923</td><td>-87.6120</td><td>member</td><td> 5.40000</td><td>2020 - 04 (Apr)</td><td>4 - Thu</td><td>18</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 17\n",
       "\\begin{tabular}{r|lllllllllllllllll}\n",
       "  & ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & start\\_lat & start\\_lng & end\\_lat & end\\_lng & member\\_casual & ride\\_time\\_m & year\\_month & weekday & start\\_hour\\\\\n",
       "  & <fct> & <fct> & <dttm> & <dttm> & <fct> & <chr> & <fct> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <fct> & <dbl> & <chr> & <chr> & <chr>\\\\\n",
       "\\hline\n",
       "\t1 & A847FADBBC638E45 & docked\\_bike & 2020-04-26 17:45:14 & 2020-04-26 18:12:03 & Eckhart Park                        & 86  & Lincoln Ave \\& Diversey Pkwy & 152 & 41.8964 & -87.6610 & 41.9322 & -87.6586 & member & 26.81667 & 2020 - 04 (Apr) & 7 - Sun & 18\\\\\n",
       "\t2 & 5405B80E996FF60D & docked\\_bike & 2020-04-17 17:08:54 & 2020-04-17 17:17:03 & Drake Ave \\& Fullerton Ave           & 503 & Kosciuszko Park             & 499 & 41.9244 & -87.7154 & 41.9306 & -87.7238 & member &  8.15000 & 2020 - 04 (Apr) & 5 - Fri & 17\\\\\n",
       "\t3 & 5DD24A79A4E006F4 & docked\\_bike & 2020-04-01 17:54:13 & 2020-04-01 18:08:36 & McClurg Ct \\& Erie St                & 142 & Indiana Ave \\& Roosevelt Rd  & 255 & 41.8945 & -87.6179 & 41.8679 & -87.6230 & member & 14.38333 & 2020 - 04 (Apr) & 3 - Wed & 18\\\\\n",
       "\t4 & 2A59BBDF5CDBA725 & docked\\_bike & 2020-04-07 12:50:19 & 2020-04-07 13:02:31 & California Ave \\& Division St        & 216 & Wood St \\& Augusta Blvd      & 657 & 41.9030 & -87.6975 & 41.8992 & -87.6722 & member & 12.20000 & 2020 - 04 (Apr) & 2 - Tue & 13\\\\\n",
       "\t5 & 27AD306C119C6158 & docked\\_bike & 2020-04-18 10:22:59 & 2020-04-18 11:15:54 & Rush St \\& Hubbard St                & 125 & Sheridan Rd \\& Lawrence Ave  & 323 & 41.8902 & -87.6262 & 41.9695 & -87.6547 & casual & 52.91667 & 2020 - 04 (Apr) & 6 - Sat & 11\\\\\n",
       "\t6 & 356216E875132F61 & docked\\_bike & 2020-04-30 17:55:47 & 2020-04-30 18:01:11 & Mies van der Rohe Way \\& Chicago Ave & 173 & Streeter Dr \\& Grand Ave     & 35  & 41.8969 & -87.6217 & 41.8923 & -87.6120 & member &  5.40000 & 2020 - 04 (Apr) & 4 - Thu & 18\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 17\n",
       "\n",
       "| <!--/--> | ride_id &lt;fct&gt; | rideable_type &lt;fct&gt; | started_at &lt;dttm&gt; | ended_at &lt;dttm&gt; | start_station_name &lt;fct&gt; | start_station_id &lt;chr&gt; | end_station_name &lt;fct&gt; | end_station_id &lt;chr&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | member_casual &lt;fct&gt; | ride_time_m &lt;dbl&gt; | year_month &lt;chr&gt; | weekday &lt;chr&gt; | start_hour &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | A847FADBBC638E45 | docked_bike | 2020-04-26 17:45:14 | 2020-04-26 18:12:03 | Eckhart Park                        | 86  | Lincoln Ave &amp; Diversey Pkwy | 152 | 41.8964 | -87.6610 | 41.9322 | -87.6586 | member | 26.81667 | 2020 - 04 (Apr) | 7 - Sun | 18 |\n",
       "| 2 | 5405B80E996FF60D | docked_bike | 2020-04-17 17:08:54 | 2020-04-17 17:17:03 | Drake Ave &amp; Fullerton Ave           | 503 | Kosciuszko Park             | 499 | 41.9244 | -87.7154 | 41.9306 | -87.7238 | member |  8.15000 | 2020 - 04 (Apr) | 5 - Fri | 17 |\n",
       "| 3 | 5DD24A79A4E006F4 | docked_bike | 2020-04-01 17:54:13 | 2020-04-01 18:08:36 | McClurg Ct &amp; Erie St                | 142 | Indiana Ave &amp; Roosevelt Rd  | 255 | 41.8945 | -87.6179 | 41.8679 | -87.6230 | member | 14.38333 | 2020 - 04 (Apr) | 3 - Wed | 18 |\n",
       "| 4 | 2A59BBDF5CDBA725 | docked_bike | 2020-04-07 12:50:19 | 2020-04-07 13:02:31 | California Ave &amp; Division St        | 216 | Wood St &amp; Augusta Blvd      | 657 | 41.9030 | -87.6975 | 41.8992 | -87.6722 | member | 12.20000 | 2020 - 04 (Apr) | 2 - Tue | 13 |\n",
       "| 5 | 27AD306C119C6158 | docked_bike | 2020-04-18 10:22:59 | 2020-04-18 11:15:54 | Rush St &amp; Hubbard St                | 125 | Sheridan Rd &amp; Lawrence Ave  | 323 | 41.8902 | -87.6262 | 41.9695 | -87.6547 | casual | 52.91667 | 2020 - 04 (Apr) | 6 - Sat | 11 |\n",
       "| 6 | 356216E875132F61 | docked_bike | 2020-04-30 17:55:47 | 2020-04-30 18:01:11 | Mies van der Rohe Way &amp; Chicago Ave | 173 | Streeter Dr &amp; Grand Ave     | 35  | 41.8969 | -87.6217 | 41.8923 | -87.6120 | member |  5.40000 | 2020 - 04 (Apr) | 4 - Thu | 18 |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          rideable_type started_at          ended_at           \n",
       "1 A847FADBBC638E45 docked_bike   2020-04-26 17:45:14 2020-04-26 18:12:03\n",
       "2 5405B80E996FF60D docked_bike   2020-04-17 17:08:54 2020-04-17 17:17:03\n",
       "3 5DD24A79A4E006F4 docked_bike   2020-04-01 17:54:13 2020-04-01 18:08:36\n",
       "4 2A59BBDF5CDBA725 docked_bike   2020-04-07 12:50:19 2020-04-07 13:02:31\n",
       "5 27AD306C119C6158 docked_bike   2020-04-18 10:22:59 2020-04-18 11:15:54\n",
       "6 356216E875132F61 docked_bike   2020-04-30 17:55:47 2020-04-30 18:01:11\n",
       "  start_station_name                  start_station_id\n",
       "1 Eckhart Park                        86              \n",
       "2 Drake Ave & Fullerton Ave           503             \n",
       "3 McClurg Ct & Erie St                142             \n",
       "4 California Ave & Division St        216             \n",
       "5 Rush St & Hubbard St                125             \n",
       "6 Mies van der Rohe Way & Chicago Ave 173             \n",
       "  end_station_name            end_station_id start_lat start_lng end_lat\n",
       "1 Lincoln Ave & Diversey Pkwy 152            41.8964   -87.6610  41.9322\n",
       "2 Kosciuszko Park             499            41.9244   -87.7154  41.9306\n",
       "3 Indiana Ave & Roosevelt Rd  255            41.8945   -87.6179  41.8679\n",
       "4 Wood St & Augusta Blvd      657            41.9030   -87.6975  41.8992\n",
       "5 Sheridan Rd & Lawrence Ave  323            41.8902   -87.6262  41.9695\n",
       "6 Streeter Dr & Grand Ave     35             41.8969   -87.6217  41.8923\n",
       "  end_lng  member_casual ride_time_m year_month      weekday start_hour\n",
       "1 -87.6586 member        26.81667    2020 - 04 (Apr) 7 - Sun 18        \n",
       "2 -87.7238 member         8.15000    2020 - 04 (Apr) 5 - Fri 17        \n",
       "3 -87.6230 member        14.38333    2020 - 04 (Apr) 3 - Wed 18        \n",
       "4 -87.6722 member        12.20000    2020 - 04 (Apr) 2 - Tue 13        \n",
       "5 -87.6547 casual        52.91667    2020 - 04 (Apr) 6 - Sat 11        \n",
       "6 -87.6120 member         5.40000    2020 - 04 (Apr) 4 - Thu 18        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic <- cyclistic_no_dups\n",
    "head(cyclistic)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "758404a7",
   "metadata": {
    "papermill": {
     "duration": 0.060297,
     "end_time": "2023-04-14T12:06:16.697012",
     "exception": false,
     "start_time": "2023-04-14T12:06:16.636715",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "To quick start, let's generate a summary of the dataset"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "a6ec34e3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:06:16.816018Z",
     "iopub.status.busy": "2023-04-14T12:06:16.814937Z",
     "iopub.status.idle": "2023-04-14T12:06:22.659310Z",
     "shell.execute_reply": "2023-04-14T12:06:22.657938Z"
    },
    "papermill": {
     "duration": 5.906611,
     "end_time": "2023-04-14T12:06:22.659863",
     "exception": false,
     "start_time": "2023-04-14T12:06:16.753252",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "             ride_id              rideable_type    \n",
       " 00009D28BA1C43CB:      1   docked_bike  :2558260  \n",
       " 000164C1A5EE8E34:      1   electric_bike: 611406  \n",
       " 00016D3A09FD9C54:      1   classic_bike : 319873  \n",
       " 00017CD018F07967:      1                          \n",
       " 0001C8191EAB7DA8:      1                          \n",
       " 0001ECEB9AF8C006:      1                          \n",
       " (Other)         :3489533                          \n",
       "   started_at                     ended_at                  \n",
       " Min.   :2020-04-01 00:00:30   Min.   :2020-04-01 00:10:45  \n",
       " 1st Qu.:2020-07-14 19:36:28   1st Qu.:2020-07-14 20:11:10  \n",
       " Median :2020-08-29 14:47:30   Median :2020-08-29 15:18:24  \n",
       " Mean   :2020-09-10 01:13:26   Mean   :2020-09-10 01:39:55  \n",
       " 3rd Qu.:2020-10-20 18:07:35   3rd Qu.:2020-10-20 18:21:47  \n",
       " Max.   :2021-03-31 23:59:08   Max.   :2021-04-06 11:00:11  \n",
       "                                                            \n",
       "                  start_station_name  start_station_id  \n",
       "                           : 122175   Length:3489539    \n",
       " Streeter Dr & Grand Ave   :  35363   Class :character  \n",
       " Clark St & Elm St         :  32471   Mode  :character  \n",
       " Lake Shore Dr & Monroe St :  29918                     \n",
       " Theater on the Lake       :  29887                     \n",
       " Lake Shore Dr & North Blvd:  27126                     \n",
       " (Other)                   :3212599                     \n",
       "                   end_station_name   end_station_id       start_lat    \n",
       "                           : 143241   Length:3489539     Min.   :41.64  \n",
       " Streeter Dr & Grand Ave   :  37425   Class :character   1st Qu.:41.88  \n",
       " Clark St & Elm St         :  32254   Mode  :character   Median :41.90  \n",
       " Theater on the Lake       :  31281                      Mean   :41.90  \n",
       " Lake Shore Dr & Monroe St :  29280                      3rd Qu.:41.93  \n",
       " Lake Shore Dr & North Blvd:  27611                      Max.   :42.08  \n",
       " (Other)                   :3188447                                     \n",
       "   start_lng         end_lat         end_lng       member_casual   \n",
       " Min.   :-87.87   Min.   :41.54   Min.   :-88.07   casual:1430351  \n",
       " 1st Qu.:-87.66   1st Qu.:41.88   1st Qu.:-87.66   member:2059188  \n",
       " Median :-87.64   Median :41.90   Median :-87.64                   \n",
       " Mean   :-87.64   Mean   :41.90   Mean   :-87.64                   \n",
       " 3rd Qu.:-87.63   3rd Qu.:41.93   3rd Qu.:-87.63                   \n",
       " Max.   :-87.52   Max.   :42.16   Max.   :-87.44                   \n",
       "                  NA's   :4737    NA's   :4737                     \n",
       "  ride_time_m         year_month          weekday           start_hour       \n",
       " Min.   :-29049.97   Length:3489539     Length:3489539     Length:3489539    \n",
       " 1st Qu.:     7.88   Class :character   Class :character   Class :character  \n",
       " Median :    14.52   Mode  :character   Mode  :character   Mode  :character  \n",
       " Mean   :    26.48                                                           \n",
       " 3rd Qu.:    26.63                                                           \n",
       " Max.   : 58720.03                                                           \n",
       "                                                                             "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "summary(cyclistic)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ce7c152c",
   "metadata": {
    "papermill": {
     "duration": 0.058579,
     "end_time": "2023-04-14T12:06:22.779205",
     "exception": false,
     "start_time": "2023-04-14T12:06:22.720626",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "One thing that immediately catches the attention is ride_time_m. This field has negative values, and the biggest value is 58720.03, which is 40 days and 46 hours. This field will be explored further in the document."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "aa9ad233",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-05-27T15:47:28.459909Z",
     "iopub.status.busy": "2021-05-27T15:47:28.456639Z",
     "iopub.status.idle": "2021-05-27T15:47:28.505996Z"
    },
    "papermill": {
     "duration": 0.058933,
     "end_time": "2023-04-14T12:06:22.899153",
     "exception": false,
     "start_time": "2023-04-14T12:06:22.840220",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"analyze-code-data\"></a>\n",
    "### Data distribution\n",
    "Here we want to try to answer the most basic questions about how the data is distributed."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "de0f9751",
   "metadata": {
    "papermill": {
     "duration": 0.055263,
     "end_time": "2023-04-14T12:06:23.011029",
     "exception": false,
     "start_time": "2023-04-14T12:06:22.955766",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"analyze-code-data-casuals\"></a>\n",
    "#### Casuals vs members\n",
    "How much of the data is about members and how much is about casuals?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "ced001bc",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:06:23.126879Z",
     "iopub.status.busy": "2023-04-14T12:06:23.125125Z",
     "iopub.status.idle": "2023-04-14T12:06:23.250857Z",
     "shell.execute_reply": "2023-04-14T12:06:23.249315Z"
    },
    "papermill": {
     "duration": 0.184854,
     "end_time": "2023-04-14T12:06:23.251025",
     "exception": false,
     "start_time": "2023-04-14T12:06:23.066171",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 2 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>count</th><th scope=col>%</th></tr>\n",
       "\t<tr><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>1430351</td><td>40.98968</td></tr>\n",
       "\t<tr><td>member</td><td>2059188</td><td>59.01032</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 2 × 3\n",
       "\\begin{tabular}{lll}\n",
       " member\\_casual & count & \\%\\\\\n",
       " <fct> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 1430351 & 40.98968\\\\\n",
       "\t member & 2059188 & 59.01032\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 2 × 3\n",
       "\n",
       "| member_casual &lt;fct&gt; | count &lt;int&gt; | % &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | 1430351 | 40.98968 |\n",
       "| member | 2059188 | 59.01032 |\n",
       "\n"
      ],
      "text/plain": [
       "  member_casual count   %       \n",
       "1 casual        1430351 40.98968\n",
       "2 member        2059188 59.01032"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic %>% \n",
    "    group_by(member_casual) %>% \n",
    "    summarise(count = length(ride_id),\n",
    "              '%' = (length(ride_id) / nrow(cyclistic)) * 100)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "2015bff4",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:06:23.372233Z",
     "iopub.status.busy": "2023-04-14T12:06:23.370489Z",
     "iopub.status.idle": "2023-04-14T12:06:28.118799Z",
     "shell.execute_reply": "2023-04-14T12:06:28.117206Z"
    },
    "papermill": {
     "duration": 4.809473,
     "end_time": "2023-04-14T12:06:28.118981",
     "exception": false,
     "start_time": "2023-04-14T12:06:23.309508",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nVK6wsDDTIwCsxvLy8nJzczM9BQAAwJLoPytQWVlZpkdgFSJAL9306dMzPQLAaqlNmzZJkpSX\nl1dWVmZ6FgAAgCXRfyAS94AGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAA\nACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCg\nAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAA\ngCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAG\nAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAA\nohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoA\nAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACI\nQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAA\nAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAK\nARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAA\nAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgE\naAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAA\nACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCg\nAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIImclX++O4w8ruu7eo9oV\n1n848bWLTr7mg/kPOOHeRwe2aRZCeGPYrcNeHP3N7OyeG2529OCTehTn1h8Qex0AAAAAgBVi\nJQboVNV7z909fGrFofOtzXhvRkGbfX95cu+GlS7FuSGEccOGXv3I+KPPGNyrVc3wO26/5OyK\nB+88OzuJvg4AAAAAwIqykgL09/+54Ve/faWsqq7R+qSPZpVs2L9//94LrKaqbvjrmO6Dbjx4\n124hhPWuzzrkmOvun3DKCZ3y4q53br5SNgMAAAAA4CdhJd0DunTTY6676ZZbbrq40fr7M+e2\n6ltSWzHr+0kzUj8sVs54/ruq2t0HdKz/ML9k277N894b9X3s9YhfPwAAAADAT89KegV0TvP2\n6zQPtVWNe/c7ZdV1/7nl0Fv/V51K5RS22+/4s477WZ/q8jEhhF6FP96UuVdhzogxM6sHxF1v\n+PCRRx5599136/9cWFh4/vnnL/8OAPwEJUkSQmjWrFlurvvsAwAAq7Ti4uJMj7DmqKyszPQI\nrEJW9psQzq+2asK02tC1ZKsr7764bf7c/4649ze/v6ig25/3yC4PIZTm/FirS3Oza8vm1s2N\nu97w4ZgxY/7973/X/7lVq1aXXHLJCv7KAX5KcnJycnIy+a8bAACApcrPz8/0CGuOqqqqTI/A\nKiSTRSA7r9Pjjz/+w0fF2x963icj3hr+h/f3OrsghDCtpq4oO7v+c1Ora7NL8rLy4q43DNan\nT5+ampr6PxcWFs6d+2ObBiB99b/A1dTU1NbWZnoWAACAJdF/VqC6usbvA8dP2ar1krS+7Qv+\nPW1KblGfEF76pKJm7fx5gfiLytoWvVvGXm8Y4/DDDz/88MPr/1xXVzdt2rSV8LUDrHny8vKS\nJKmsrPTXrwAAgFXc7NmzMz0CrJlW0psQLtLMz+4cdNSJE6oaXhaXevnb8pa9euSX7LJWXvYz\nr0yqX62pGPv67KpNd10r9vrK+roBAAAAAH4SMhmgW6w7aP3s2Rde+sf/fjB23EfvDbtlyAvl\nLc4+rWeS5J17UO9P7738uXfGfjf+w3uG/rqg887HdS6OvZ7BrQAAAAAAWPMkqVRqpV2stuqb\nAw4+/dA/PXJUu8L6lbnTP7jn939+/aMvy0LzbuttMui0kzfpMO9Trz38u2Evjv52Tk7P3lud\ncc6Ja+VlrZz1RtyCA2CZtWnTJkmSOXPmuAUHsGZoO2ZspkcAAGKZ3KdnpkdYo5SWlmZ6BFYV\nKzVAr44EaIBlJkADaxgBGgDWYAL0iiVA0yCTt+AAAAAAAGANJkADAAAAABCFAA0AAAAAQBQC\nNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUADAAAA\nABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQ\nAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUeRkegB+copvuCLTIwArSVUIIYTcEHIz\nPAiw8sw+75JMjwAAAKxCvAIaAAAAAIAoBGgAAAAAAKIQoAEAAAAAiEKABgAAAAAgCgEaAAAA\nAIAoBGgAAAAAAKIQoAEAAAAAiEKABgAAAAAgCgEaAAAAAIAoBGgAAAAAAKIQoAEAAAAAiEKA\nBgAAAAAgCgEaAAAAAIAoBGgAAAAAAKIQoAEAAAAAiEKABgAAAAAgCgEaAAAAAIAoBGgAAAAA\nAKIQoAEAAAAAiEKABgAAAAAgCgEaAAAAAIAoBGgAAAAAAKIQoAEAAAAAiEKABgAAAAAgCgEa\nAAAAAIAoBGgAAAAAAKIQoAEAAAAAiEKABgAAAAAgCgEaAAAAAIAoBGgAAAAAAKIQoAEAAAAA\niEKABgAAAAAgCgEaAAAAAIAoBGgAAAAAAKIQoAEAAAAAiEKABgAAAAAgCgEaAAAAAIAoBGgA\nAAAAAKIQoAEAAAAAiEKABgAAAAAgCgEaAAAAAIAoBGgAAAAAAKIQoAEAAAAAiEKABgAAAAAg\nCgEaAAAAAIAoBGgAAAAAAKIQoAEAAAAAiEKABgAAAAAgCgEaAAAAAIAoBGgAAAAAAKIQoAEA\nAAAAiEKABgAAAAAgCgEaAAAAAIAoBGgAAAAAAKIQoAEAAAAAiEKABgAAAAAgCgEaAAAAAIAo\nBGgAAAAAAKIQoAEAAAAAiEKABgAAAAAgCgEaAAAAAIAoBGgAAAAAAKIQoAEAAAAAiEKABgAA\nAAAgCgEaAAAAAIAoBGgAAAAAAKIQoAEAAAAAiCIn0wOsBlq1apXpEdYoNZkeAACIxy9OAMBq\nyq8xK1BZWVmmR2AVIkAvXXl5eaZHWKPkZXoAACAevzgBAKspv8asQDU1Xn/IjwTopZs7d26m\nR1ijCNAAsAbzixMAsJryawxE4h7QAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQ\nAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAA\nQBQCNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUAD\n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"
     },
     "metadata": {
      "image/png": {
       "height": 480,
       "width": 960
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "fig(16,8)\n",
    "ggplot(cyclistic, aes(member_casual, fill=member_casual)) +\n",
    "    geom_bar() +\n",
    "    labs(x=\"Casuals x Members\", title=\"Chart 01 - Casuals x Members distribution\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "dcbcebfa",
   "metadata": {
    "papermill": {
     "duration": 0.079627,
     "end_time": "2023-04-14T12:06:28.264656",
     "exception": false,
     "start_time": "2023-04-14T12:06:28.185029",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "As we can see on the member x casual table, members have a bigger proporcion of the dataset, composing ~59%, ~19% bigger than the count of casual riders."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "cc92a6f2",
   "metadata": {
    "papermill": {
     "duration": 0.069156,
     "end_time": "2023-04-14T12:06:28.391377",
     "exception": false,
     "start_time": "2023-04-14T12:06:28.322221",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"analyze-code-data-month\"></a>\n",
    "#### Month\n",
    "How much of the data is distributed by month?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "a466820d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:06:28.520681Z",
     "iopub.status.busy": "2023-04-14T12:06:28.517278Z",
     "iopub.status.idle": "2023-04-14T12:06:30.203654Z",
     "shell.execute_reply": "2023-04-14T12:06:30.202488Z"
    },
    "papermill": {
     "duration": 1.754468,
     "end_time": "2023-04-14T12:06:30.203827",
     "exception": false,
     "start_time": "2023-04-14T12:06:28.449359",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 12 × 6</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>year_month</th><th scope=col>count</th><th scope=col>%</th><th scope=col>members_p</th><th scope=col>casual_p</th><th scope=col>Member x Casual Perc Difer</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>2020 - 04 (Apr)</td><td> 84776</td><td> 2.429433</td><td>72.12890</td><td>27.87110</td><td>44.257809</td></tr>\n",
       "\t<tr><td>2020 - 05 (May)</td><td>200274</td><td> 5.739268</td><td>56.60495</td><td>43.39505</td><td>13.209902</td></tr>\n",
       "\t<tr><td>2020 - 06 (Jun)</td><td>343005</td><td> 9.829522</td><td>54.89337</td><td>45.10663</td><td> 9.786738</td></tr>\n",
       "\t<tr><td>2020 - 07 (Jul)</td><td>551480</td><td>15.803807</td><td>51.16849</td><td>48.83151</td><td> 2.336984</td></tr>\n",
       "\t<tr><td>2020 - 08 (Aug)</td><td>622361</td><td>17.835049</td><td>53.45772</td><td>46.54228</td><td> 6.915440</td></tr>\n",
       "\t<tr><td>2020 - 09 (Sep)</td><td>532958</td><td>15.273020</td><td>56.71479</td><td>43.28521</td><td>13.429576</td></tr>\n",
       "\t<tr><td>2020 - 10 (Oct)</td><td>388653</td><td>11.137660</td><td>62.68857</td><td>37.31143</td><td>25.377136</td></tr>\n",
       "\t<tr><td>2020 - 11 (Nov)</td><td>259716</td><td> 7.442702</td><td>66.07872</td><td>33.92128</td><td>32.157434</td></tr>\n",
       "\t<tr><td>2020 - 12 (Dec)</td><td>131364</td><td> 3.764509</td><td>77.12082</td><td>22.87918</td><td>54.241649</td></tr>\n",
       "\t<tr><td>2021 - 01 (Jan)</td><td> 96834</td><td> 2.774980</td><td>81.29066</td><td>18.70934</td><td>62.581325</td></tr>\n",
       "\t<tr><td>2021 - 02 (Feb)</td><td> 49622</td><td> 1.422022</td><td>79.58365</td><td>20.41635</td><td>59.167305</td></tr>\n",
       "\t<tr><td>2021 - 03 (Mar)</td><td>228496</td><td> 6.548028</td><td>63.22343</td><td>36.77657</td><td>26.446852</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 12 × 6\n",
       "\\begin{tabular}{llllll}\n",
       " year\\_month & count & \\% & members\\_p & casual\\_p & Member x Casual Perc Difer\\\\\n",
       " <chr> & <int> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 2020 - 04 (Apr) &  84776 &  2.429433 & 72.12890 & 27.87110 & 44.257809\\\\\n",
       "\t 2020 - 05 (May) & 200274 &  5.739268 & 56.60495 & 43.39505 & 13.209902\\\\\n",
       "\t 2020 - 06 (Jun) & 343005 &  9.829522 & 54.89337 & 45.10663 &  9.786738\\\\\n",
       "\t 2020 - 07 (Jul) & 551480 & 15.803807 & 51.16849 & 48.83151 &  2.336984\\\\\n",
       "\t 2020 - 08 (Aug) & 622361 & 17.835049 & 53.45772 & 46.54228 &  6.915440\\\\\n",
       "\t 2020 - 09 (Sep) & 532958 & 15.273020 & 56.71479 & 43.28521 & 13.429576\\\\\n",
       "\t 2020 - 10 (Oct) & 388653 & 11.137660 & 62.68857 & 37.31143 & 25.377136\\\\\n",
       "\t 2020 - 11 (Nov) & 259716 &  7.442702 & 66.07872 & 33.92128 & 32.157434\\\\\n",
       "\t 2020 - 12 (Dec) & 131364 &  3.764509 & 77.12082 & 22.87918 & 54.241649\\\\\n",
       "\t 2021 - 01 (Jan) &  96834 &  2.774980 & 81.29066 & 18.70934 & 62.581325\\\\\n",
       "\t 2021 - 02 (Feb) &  49622 &  1.422022 & 79.58365 & 20.41635 & 59.167305\\\\\n",
       "\t 2021 - 03 (Mar) & 228496 &  6.548028 & 63.22343 & 36.77657 & 26.446852\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 12 × 6\n",
       "\n",
       "| year_month &lt;chr&gt; | count &lt;int&gt; | % &lt;dbl&gt; | members_p &lt;dbl&gt; | casual_p &lt;dbl&gt; | Member x Casual Perc Difer &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|\n",
       "| 2020 - 04 (Apr) |  84776 |  2.429433 | 72.12890 | 27.87110 | 44.257809 |\n",
       "| 2020 - 05 (May) | 200274 |  5.739268 | 56.60495 | 43.39505 | 13.209902 |\n",
       "| 2020 - 06 (Jun) | 343005 |  9.829522 | 54.89337 | 45.10663 |  9.786738 |\n",
       "| 2020 - 07 (Jul) | 551480 | 15.803807 | 51.16849 | 48.83151 |  2.336984 |\n",
       "| 2020 - 08 (Aug) | 622361 | 17.835049 | 53.45772 | 46.54228 |  6.915440 |\n",
       "| 2020 - 09 (Sep) | 532958 | 15.273020 | 56.71479 | 43.28521 | 13.429576 |\n",
       "| 2020 - 10 (Oct) | 388653 | 11.137660 | 62.68857 | 37.31143 | 25.377136 |\n",
       "| 2020 - 11 (Nov) | 259716 |  7.442702 | 66.07872 | 33.92128 | 32.157434 |\n",
       "| 2020 - 12 (Dec) | 131364 |  3.764509 | 77.12082 | 22.87918 | 54.241649 |\n",
       "| 2021 - 01 (Jan) |  96834 |  2.774980 | 81.29066 | 18.70934 | 62.581325 |\n",
       "| 2021 - 02 (Feb) |  49622 |  1.422022 | 79.58365 | 20.41635 | 59.167305 |\n",
       "| 2021 - 03 (Mar) | 228496 |  6.548028 | 63.22343 | 36.77657 | 26.446852 |\n",
       "\n"
      ],
      "text/plain": [
       "   year_month      count  %         members_p casual_p\n",
       "1  2020 - 04 (Apr)  84776  2.429433 72.12890  27.87110\n",
       "2  2020 - 05 (May) 200274  5.739268 56.60495  43.39505\n",
       "3  2020 - 06 (Jun) 343005  9.829522 54.89337  45.10663\n",
       "4  2020 - 07 (Jul) 551480 15.803807 51.16849  48.83151\n",
       "5  2020 - 08 (Aug) 622361 17.835049 53.45772  46.54228\n",
       "6  2020 - 09 (Sep) 532958 15.273020 56.71479  43.28521\n",
       "7  2020 - 10 (Oct) 388653 11.137660 62.68857  37.31143\n",
       "8  2020 - 11 (Nov) 259716  7.442702 66.07872  33.92128\n",
       "9  2020 - 12 (Dec) 131364  3.764509 77.12082  22.87918\n",
       "10 2021 - 01 (Jan)  96834  2.774980 81.29066  18.70934\n",
       "11 2021 - 02 (Feb)  49622  1.422022 79.58365  20.41635\n",
       "12 2021 - 03 (Mar) 228496  6.548028 63.22343  36.77657\n",
       "   Member x Casual Perc Difer\n",
       "1  44.257809                 \n",
       "2  13.209902                 \n",
       "3   9.786738                 \n",
       "4   2.336984                 \n",
       "5   6.915440                 \n",
       "6  13.429576                 \n",
       "7  25.377136                 \n",
       "8  32.157434                 \n",
       "9  54.241649                 \n",
       "10 62.581325                 \n",
       "11 59.167305                 \n",
       "12 26.446852                 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic %>%\n",
    "    group_by(year_month) %>%\n",
    "    summarise(count = length(ride_id),\n",
    "              '%' = (length(ride_id) / nrow(cyclistic)) * 100,\n",
    "              'members_p' = (sum(member_casual == \"member\") / length(ride_id)) * 100,\n",
    "              'casual_p' = (sum(member_casual == \"casual\") / length(ride_id)) * 100,\n",
    "              'Member x Casual Perc Difer' = members_p - casual_p)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "706e6678",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:06:30.331929Z",
     "iopub.status.busy": "2023-04-14T12:06:30.330723Z",
     "iopub.status.idle": "2023-04-14T12:06:36.165612Z",
     "shell.execute_reply": "2023-04-14T12:06:36.166194Z"
    },
    "papermill": {
     "duration": 5.90005,
     "end_time": "2023-04-14T12:06:36.166405",
     "exception": false,
     "start_time": "2023-04-14T12:06:30.266355",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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"
     },
     "metadata": {
      "image/png": {
       "height": 480,
       "width": 960
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic %>%\n",
    "  ggplot(aes(year_month, fill=member_casual)) +\n",
    "    geom_bar() +\n",
    "    labs(x=\"Month\", title=\"Chart 02 - Distribution by month\") +\n",
    "    coord_flip()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f1aeb971",
   "metadata": {
    "papermill": {
     "duration": 0.064478,
     "end_time": "2023-04-14T12:06:36.291354",
     "exception": false,
     "start_time": "2023-04-14T12:06:36.226876",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "Some considerations can be taken by this chart:\n",
    "* There's more data points at the last semester of 2020.\n",
    "* The month with the biggest count of data points was August with ~18% of the dataset.\n",
    "* In all months we have more members' rides than casual rides (Maybe because of returning members).\n",
    "* The difference of proporcion of member x casual is smaller in the last semester of 2020.\n",
    "\n",
    "The distribution looks cyclical. Let's compare it with climate data for Chicago.\n",
    "The data will be taken by [Climate of Chicago](https://en.wikipedia.org/wiki/Climate_of_Chicago) (Daily mean °C, 1991–2020)."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "68d833bf",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:06:36.419783Z",
     "iopub.status.busy": "2023-04-14T12:06:36.418695Z",
     "iopub.status.idle": "2023-04-14T12:06:36.737052Z",
     "shell.execute_reply": "2023-04-14T12:06:36.737559Z"
    },
    "papermill": {
     "duration": 0.385058,
     "end_time": "2023-04-14T12:06:36.737784",
     "exception": false,
     "start_time": "2023-04-14T12:06:36.352726",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\neMar5397lxETj35pTu1uJ9749KW7tXOAgbtPuuSSS+6b8p/zDt97zPCq8gEjJu530pNT/lCV\njE977kc3TlvU4ZLbtd5R54cQnjvn4cYtF//m/WTJyAvH9mkxNv2zV2YmUv2v3XftpltjiYoz\njl4vhHDHC0sXWu1QF9Y9/KgVN8T7JeMh02Jce3ItLGvwV9dp+rS4T1EIYcOvDGi6cUAqHkJo\n1stvnDm+2YF3+/l2IYRnr36nE2W0/PLr0HXrtBbH7VjZ7Wio+fC306uTpetduu2gptuTpetf\nvkn/THrJle/NbbeSVkQ0UTRVM/vBp+cuKRt41DcGlzXdvvE5f3rjjTfuOGy9kFtrFk2/7fVF\ndRVDJ+3Zr6TpftY7/LKmTzt6lVYode5fQwh9t+rX5pm3a+//+8vXN+0/9707Jo4YOHrjrbba\naL3+I7a9ZUrFd8b2CSGUDCzp0LAu1PYM2bXzbcf2VlS5bQjhy+eaL5EPAAAAa6xkvgvomC0r\ni/4yp+alTxaF4ZVtjXn4wQfq0plN9th33ZKl/4e935YrT14y9XOeefzJ16a8NuW1Ka+99u9X\n3/q4oY00s/dGvTtadixRWZGIL2xomFWX7p9aIfRfML8uhFA2qFk60/DINT845oxfTa9t6D16\n519ce9P/7L5e+4cY+51JY1tsLOm/183bDT74mc9/9+jU7x69fqtv7JtKzGmS0+3+6Cd/2WOt\nlZ5RSd99jhtcfuuUs6fWHjesKLH4y9/fN3Px8N0uK483T2kaaj78qKY+hJmlidZjwwVNPpAt\n9y5Urt/mF0COOlRYCCGebOWvNakW59vSzlXNo7fyYduEcM+cV98LYceOltHql1/u163Tmh23\no2W3o3bBiw2ZTEWfvZIt9jRq50Hhn9M/eXNeGL886M/lGzC6iaLRkrlPhhBK+zf/2M9E8Vrj\nxi1/utLWZPdTMXzXZvtJVWwxqCgxfdkH3HX0KjVVX/1pCKF0SGnuZ7fCGZWse88rn9xz6Zk3\n3v/c62+8sWT4uL2P3G/STy+cuf/I/wuh/4iyDg3L0crmpfZmyK6dbzu6t0TxsBBC3fypHTpf\nAAAAKGA9LIDee/chF908/99Xvhq226vVAbXzX9hn/6+FEKYsrA1haa4UL1rJjd7z3/9/u2x/\n1L+mVRf1Grr5Vltuu9+xp1yw5foDHt5up1+1HJxYtjZrh0zsXfTo7Jq/L6jdr+8KacVLC2pD\n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\nAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAA\niIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQA\nGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAA\nAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACA\nSAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACASAig\nAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACASAigAQAA\nAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACASAigAQAAAACI\nRDLfBXRARUVFvktYXcRiseyDkpKSoqKi/BZDpzX2sbS0tLi4OL/F0GmNfSwrK0un0/kthk6L\nx5f+RbasrCyTyeS3GDpNH1lt+Tm2MOhjYdDHwrAG9jGRSIQQYrHYGnjuhSSZTAZ97PmyfYzH\n4/rYqP08xB3QAAAAAABEoifdAb1w4cJ8l7C6iMfj2Rtma2pqamtr810OnZRIJLJ9XLx4cV1d\nXb7LoZMa+1hdXV1fX5/vcuikZDKZ/Q8l1dXVDQ0N+S6HTkqlUvrI6snPsYVBHwuDPhaGNbCP\nJSUlqVQqk8msgedeSEpLS5PJpD72dGVlZclkMp1O62NTZWVlbb3kDmgAAAAAACIhgAYAAAAA\nIBICaAAAAAAAIiGABgAAAAAgEgJoAAAAAAAiIYAGAAAAACASAmgAAAAAACIhgAYAAAAAIBIC\naAAAAAAAIiGABgAAAAAgEgJoAAAAAAAiIYAGAAAAACASAmgAAAAAACIhgAYAAAAAIBICaAAA\nAAAAIiGABgAAAAAgEgJoAAAAAAAiIYAGAAAAACASAmgAAAAAACIhgAYAAAAAIBICaAAAAAAA\nIiGABgAAAAAgEgJoAAAAAAAikcx3AQBAnk2aNCnfJdCmyZMn57sEAACAznMHNAAAAAAAkRBA\nAwAAAAAQCQE0AAAAAACREEADAAAAABAJATQAAAAAAJEQQAMAAAAAEAkBNAAAAAAAkRBAAwAA\n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\n+6qrqyv0CAAAAHR1cb8JYRTlZp92xJDDj7/oimtn//ymxzc1Nb654LDhfY8+Z05LLuB8AAAA\nAAAUqbgB+oVbx02e8+CRZ9UtW7Umf6ZmrzNnTB27pO60E+euDDYeAAAAAADFKm6AvvqCRbXD\nzl888+z9BvV56z0z/c+66jd1o/e895zvBhsPAAAAAIBiFTdAL3ijceipp6S2O3/UxEGNby7s\n2JkAAAAAAEiAuAG6T1nJpuc3bH++fvnGdHn/Dh0JAAAAAIAkiBugLx7dd8Uvv/LImi3bnmx4\nefFJNz/fe9SFAQYDAAAAAKC4xQ3Q4+bNGhCtPnLwqMlTL42i6Mlb6s4/c9Lgwce+EvWbefuE\nkBMCAAAAAFCU4gboyj2Oe+q5xacfVT7nmulRFD106fTrZs8fOPbM+5Y9M26v6pATAgAAAABQ\nlErjP7Vm0OEzFy69fsv6FcuXN2b2GDp0UE1Z3H7dZvbXJlRfddOX96hqO/PY3Blz//DXf2xM\n77vfQSd/67Rh3cp29scEAAAAAKATiluQx4wZ86N/bIqiKF1Ru+8BHxs1Yp98fX7tT1MOP/rk\nWD9ErmnpfTf89s3Gbc+tmDvtitse/cQXT59+7indXvzDd8+b0ZrbuRcAAAAAAEDntIMroJcv\nX54/ePTRRwc/++zyhu7veDjX8uc7H/jTQ6t3+GFee/iH//bjPzY0Zd/57k0/nP/0kEnXnHDM\n4CiKhl5dMv6Uq255+RunDqjZmZcAAAAAAEBntIMAPXz48LbjW4899Nb3ek6PwVN2+GH6jDrl\nqmsnZJtem3LeZW0nt6xf8mpT65mf7J9/s7z2sANrMksXvxadMjR/prGxsbm5OX+cy+VSqdQO\nP1AXse1PhZ+WBEilUvZYvNp2Z490Nn5BJoM9JoM9JoM9JoM9JoM9JkMX3OO2/34s7CTsPhEg\nvh0E6FmzZuUPJk+efMSl103sW/muJ6TLuh82/oQdf5iaPT9UE7U2veOOH82bn46iaETV2zd9\nHlFVevfT9W1vXn755ffcc0/+uGfPnosWLdrhB+pqunfvvuMn0enZYzL06NGj0CPAO/Tu3bvQ\nI9AB7DEZ7DEZ7DEZ7DEZ7DEZuuweS0pKuuxrTxJ73FZra2s7j+4gQJ9xxhn5g9tuu+3zp552\nRv+OvDlGduvmKIr6lL5dpfuUpVsbtnbghwAAAAAAoFB2EKDbLFmypMM/dkmmMoqitS3Z6nQ6\n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\nAAAACEKABgAAAAAgCAEaAAAAAIAgBGgAAAAAAIIoLfQAQBc1ZcqUQo/A+6qrqyv0CAAAAEAS\nuAIaAAAAAIAgBGgAAAAAAIIQoAEAAAAACEKABgAAAAAgCAEaAAAAAIAgBGgAAAAAAIIQoAEA\nAAAACEKABgAAAAAgCAEaAAAAAIAgBGgAAAAAAIIQoAEAAAAACEKABgAAAAAgCAEaAAAAAIAg\nBGgAAAAAAIIQoAEAAAAACEKABgAAAAAgCAEaAAAAAIAgBGgAAAAAAIIQoAEAAAAACEKABgAA\nAAAgCAEaAAAAAIAgBGgAAAAAAIIQoAEAAAAACEKABgAAAAAgCAEaAAAAAIAgBGgAAAAAAIIQ\noAEAAAAACEKABgAAAAAgCAEaAAAAAIAgBGgAAAAAAIIQoAEAAAAACEKABgAAAAAgCAEaAAAA\nAIAgBGgAAAAAAIIQoAEAAAAACEKABgAAAAAgCAEaAAAAAIAgBGgAAAAAAIIQoAEAAAAACEKA\nBgAAAAAgCAEaAAAAAIAgBGgAAAAAAIIQoAEAAAAACEKABgAAAAAgCAEaAAAAAIAgBGgAAAAA\nAIIQoAEAAAAACEKABgAAAAAgCAEaAAAAAIAgBGgAAAAAAIIQoAEAAAAACEKABgAAAAAgiNJC\nD7ATKioqCj1CZ5FKpfIHZWVlJSW+ilCs2naXyWTS6XRhh4Ft+fM2GewxGewxGewxGewxGewx\nGewxGewxGbrgHktLS6MoSqVSXfC1v59cLtfOowJ0cctkMu0vmM6s7QsJ9khn48/bZLDHZLDH\nZLDHZLDHZLDHZLDHZLDHZOiCe8xfUChAbyubzbbzaDEF6PXr1xd6hM6ipKSkV69eURQ1NDQ0\nNTUVehx2UTqd7tmzZxRFmzZtam5uLvQ48DZ/3iaDPSaDPSaDPSaDPSaDPSaDPSaDPSZDF9xj\nVVVVVVVVNpvtgq+9HX369Hm/h9y9AQAAAACAIARoAAAAAACCEKABAAAAAAhCgAYAAAAAIAgB\nGgAAAACAIARoAAAAAACCEKABAAAAAAhCgAYAAAAAIAgBGgAAAACAIARoAAAAAACCEKABAAAA\nAAhCgAYAAAAAIAgBGgAAAACAIARoAAAAAACCEKABAAAAAAhCgAYAAAAAIAgBGgAAAACAIARo\nAAAAAACCEKABAAAAAAhCgAYAAAAAIAgBGgAAAACAIARoAAAAAACCEKABAAAAAAhCgAYAAAAA\n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"
     },
     "metadata": {
      "image/png": {
       "height": 480,
       "width": 960
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "chicago_mean_temp <- c(-3.2, -1.2, 4.4, 10.5, 16.6, 22.2, 24.8, 23.9, 19.9, 12.9, 5.8, -0.3)\n",
    "month <- c(\"001 - Jan\",\"002 - Feb\",\"003 - Mar\",\"004 - Apr\",\"005 - May\",\"006 - Jun\",\"007 - Jul\",\"008 - Aug\",\"009 - Sep\",\"010 - Oct\",\"011 - Nov\",\"012 - Dec\")\n",
    "\n",
    "data.frame(month, chicago_mean_temp) %>%\n",
    "    ggplot(aes(x=month, y=chicago_mean_temp)) +\n",
    "    labs(x=\"Month\", y=\"Mean temperature\", title=\"Chart 02.5 - Mean temperature for Chicago (1991-2020)\") +\n",
    "    geom_col()\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6600dc0d",
   "metadata": {
    "papermill": {
     "duration": 0.064027,
     "end_time": "2023-04-14T12:06:36.866684",
     "exception": false,
     "start_time": "2023-04-14T12:06:36.802657",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The main takeaway is:\n",
    "* Temperature heavily influence the volume of rides in the month."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "74338c87",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-05-28T12:51:50.881644Z",
     "iopub.status.busy": "2021-05-28T12:51:50.879622Z",
     "iopub.status.idle": "2021-05-28T12:51:50.894523Z"
    },
    "papermill": {
     "duration": 0.062346,
     "end_time": "2023-04-14T12:06:36.991002",
     "exception": false,
     "start_time": "2023-04-14T12:06:36.928656",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"analyze-code-data-weekday\"></a>\n",
    "#### Weekday\n",
    "How much of the data is distributed by weekday?"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "65bb0955",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:06:37.125524Z",
     "iopub.status.busy": "2023-04-14T12:06:37.124463Z",
     "iopub.status.idle": "2023-04-14T12:06:37.287091Z",
     "shell.execute_reply": "2023-04-14T12:06:37.285966Z"
    },
    "papermill": {
     "duration": 0.230136,
     "end_time": "2023-04-14T12:06:37.287279",
     "exception": false,
     "start_time": "2023-04-14T12:06:37.057143",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 7 × 6</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>weekday</th><th scope=col>count</th><th scope=col>%</th><th scope=col>members_p</th><th scope=col>casual_p</th><th scope=col>Member x Casual Perc Difer</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>1 - Mon</td><td>420613</td><td>12.05354</td><td>63.73911</td><td>36.26089</td><td>27.4782282</td></tr>\n",
       "\t<tr><td>2 - Tue</td><td>431131</td><td>12.35496</td><td>66.16898</td><td>33.83102</td><td>32.3379669</td></tr>\n",
       "\t<tr><td>3 - Wed</td><td>464879</td><td>13.32207</td><td>65.85563</td><td>34.14437</td><td>31.7112625</td></tr>\n",
       "\t<tr><td>4 - Thu</td><td>467450</td><td>13.39575</td><td>64.44368</td><td>35.55632</td><td>28.8873676</td></tr>\n",
       "\t<tr><td>5 - Fri</td><td>513585</td><td>14.71785</td><td>59.80140</td><td>40.19860</td><td>19.6027921</td></tr>\n",
       "\t<tr><td>6 - Sat</td><td>659637</td><td>18.90327</td><td>49.16628</td><td>50.83372</td><td>-1.6674322</td></tr>\n",
       "\t<tr><td>7 - Sun</td><td>532244</td><td>15.25256</td><td>50.16064</td><td>49.83936</td><td> 0.3212812</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 7 × 6\n",
       "\\begin{tabular}{llllll}\n",
       " weekday & count & \\% & members\\_p & casual\\_p & Member x Casual Perc Difer\\\\\n",
       " <chr> & <int> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 1 - Mon & 420613 & 12.05354 & 63.73911 & 36.26089 & 27.4782282\\\\\n",
       "\t 2 - Tue & 431131 & 12.35496 & 66.16898 & 33.83102 & 32.3379669\\\\\n",
       "\t 3 - Wed & 464879 & 13.32207 & 65.85563 & 34.14437 & 31.7112625\\\\\n",
       "\t 4 - Thu & 467450 & 13.39575 & 64.44368 & 35.55632 & 28.8873676\\\\\n",
       "\t 5 - Fri & 513585 & 14.71785 & 59.80140 & 40.19860 & 19.6027921\\\\\n",
       "\t 6 - Sat & 659637 & 18.90327 & 49.16628 & 50.83372 & -1.6674322\\\\\n",
       "\t 7 - Sun & 532244 & 15.25256 & 50.16064 & 49.83936 &  0.3212812\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 7 × 6\n",
       "\n",
       "| weekday &lt;chr&gt; | count &lt;int&gt; | % &lt;dbl&gt; | members_p &lt;dbl&gt; | casual_p &lt;dbl&gt; | Member x Casual Perc Difer &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|\n",
       "| 1 - Mon | 420613 | 12.05354 | 63.73911 | 36.26089 | 27.4782282 |\n",
       "| 2 - Tue | 431131 | 12.35496 | 66.16898 | 33.83102 | 32.3379669 |\n",
       "| 3 - Wed | 464879 | 13.32207 | 65.85563 | 34.14437 | 31.7112625 |\n",
       "| 4 - Thu | 467450 | 13.39575 | 64.44368 | 35.55632 | 28.8873676 |\n",
       "| 5 - Fri | 513585 | 14.71785 | 59.80140 | 40.19860 | 19.6027921 |\n",
       "| 6 - Sat | 659637 | 18.90327 | 49.16628 | 50.83372 | -1.6674322 |\n",
       "| 7 - Sun | 532244 | 15.25256 | 50.16064 | 49.83936 |  0.3212812 |\n",
       "\n"
      ],
      "text/plain": [
       "  weekday count  %        members_p casual_p Member x Casual Perc Difer\n",
       "1 1 - Mon 420613 12.05354 63.73911  36.26089 27.4782282                \n",
       "2 2 - Tue 431131 12.35496 66.16898  33.83102 32.3379669                \n",
       "3 3 - Wed 464879 13.32207 65.85563  34.14437 31.7112625                \n",
       "4 4 - Thu 467450 13.39575 64.44368  35.55632 28.8873676                \n",
       "5 5 - Fri 513585 14.71785 59.80140  40.19860 19.6027921                \n",
       "6 6 - Sat 659637 18.90327 49.16628  50.83372 -1.6674322                \n",
       "7 7 - Sun 532244 15.25256 50.16064  49.83936  0.3212812                "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic %>%\n",
    "    group_by(weekday) %>% \n",
    "    summarise(count = length(ride_id),\n",
    "              '%' = (length(ride_id) / nrow(cyclistic)) * 100,\n",
    "              'members_p' = (sum(member_casual == \"member\") / length(ride_id)) * 100,\n",
    "              'casual_p' = (sum(member_casual == \"casual\") / length(ride_id)) * 100,\n",
    "              'Member x Casual Perc Difer' = members_p - casual_p)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "2419e90d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:06:37.421676Z",
     "iopub.status.busy": "2023-04-14T12:06:37.420536Z",
     "iopub.status.idle": "2023-04-14T12:06:45.862180Z",
     "shell.execute_reply": "2023-04-14T12:06:45.861520Z"
    },
    "papermill": {
     "duration": 8.510937,
     "end_time": "2023-04-14T12:06:45.862372",
     "exception": false,
     "start_time": "2023-04-14T12:06:37.351435",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\n/c46a0DdllfvuvGTPns2fob5/77rlHGPb7fvkSeP6p1dvfTTt6b9+aqxn556y5hdO2zoYgEA\nAAAA+OF+7AA6nt194MDutYcLP7j/utLut5+yQ+NnuOeGyS03P+2c0bvUHPbeYuvOabPOv/26\nMbtevYFrBQAAAADgv5DKPaCTlQsvv/iRg8ed0SI91vhRn5VVZLdrU7el27Ajjj5852QIIVmx\n//77Pzh/ee1bRw4feuOckpoXj3w968/XjvvNKUePOuq48RNf2UAXAQAAAABA/X7sO6DrmvnY\nZV+3O3hEp2brNWqfbvm3Trnk6ozh++61a8+NW4QQMvK23m+/rdc5cOpV4w/59XlHdir87oMn\njz37io12mzisKKvmrfPOO2/y5Mk1rwsLC6dMmbKelwIAAAA/HUVFRakugQ0mKysrKysr1VXw\n81JcXJzqEmhCUhZAV5XPvnzijENvvmh9B+7xuyu+vem25ybdO+2Je3KKNunXr9+2O+yyy1Zd\n1nkTdXzrEwd1KgwhtOy9X7fsP7397bLaABoAAAAAgA0uZQH0nOduKG6255A2OWu+VTz7mlEn\nvljzevfb7v91+7y678Yz2h455sIjTl02472333777S8WlDx7+7mPdBpx81kjGj5jm4Gtal9n\nxWIh+f1bhxxyyODBg2teJxKJn/BvadLS0nJzc1NdBQAAAE3aT/jfxT8rOTk58Xi8oqKitLQ0\n1bXw81JRUZHqEmhCUhVAJ/8yYWbXo0+t9728difec8+xNa8zmq+SlpYuePLUs58ae8MtnbNy\num0xoNsWA0IIVaUzho0cc++3Qw5vnVj1JFXLq7+PmTMy17rhdd++ffv27Vvzurq6esGCBT/k\nmv4XxONxATQAAAANKysrS3UJbABZWVnxeLyqqsoPFEih1DyEcPn8x14rrjh6UNt6342l5RSs\nlJO2ytYaidx+87/55u7Js+o2ViybHUJYWp0MIRZCKK5cETovn/dcaZ0AGgAAAACAH1Nq7oCe\nM2laIm/rrlnx9R0Yz9z47H26jrt77LivDxrcr0tBTuy7OTMmT3g4v9sBR7fNDbGwZV7GS+Mf\n3PmkIYniL+4f/9fWGet9CgAAAAAANojUBNAvvvB1886jftjYbY67+rJejz/4xAt3/uPRJZXp\nbVq32XzI8WccuFtGLIQQxlx43O/HP3jOrye36dxt31Ov6jjhqrgMGgAAAOLHWiEAACAASURB\nVAAgFWLJ5M9xk4rKZYsXxfOKMuvJpn/ye0AXFhbGpk5PdSEA0BSVTpqY6hIAoEkoPuOCVJfA\nBpCfn59IJEpLS0tKSlJdCz87RUVFqS6BpiJVDyFMsfScfF8CAAAAAIBIpeYhhAAAAAAA/OQJ\noAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEA\nAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAA\niIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQA\nGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAA\nAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACA\nSAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACASAig\nAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACASAigAQAA\nAACIhAAaAAAAAIBIxJLJZKpraFqqq6sXLFiQ6iqiEo/HCwsLQwiLFi2qrKxMdTnQkMLCwmXL\nlpWVlaW6EGhI8+bNMzIyysrKiouLU10LNCQzMzM7O3vRokWpLgQakkgk8vPzQwgLFy6sqqpK\ndTnQkBYtWpSUlJSXl6e6EGhIfn5+IpEoLS0tKSlJdS387BQVFaW6BJoKd0ADAAAAABAJATQA\nAAAAAJEQQAMAAAAAEAkBNAAAAAAAkRBAAwAAAAAQCQE0AAAAAACREEADAAAAABAJATQAAAAA\nAJEQQAMAAAAAEAkBNAAAAAAAkUhPdQGkQGzq9FSXAABQv9JJE1NdAqlUFkIIISfFVcC6VYSQ\nGUJmqsuAhlWHUBZCLIRmqa6ENRWfcUGqS4AfiTugAQAAAACIhAAaAAAAAIBICKABAAAAAIiE\nABoAAAAAgEgIoAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoA\nAAAAgEgIoAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAA\ngEgIoAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgI\noAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEA\nAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAA\niIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQA\nGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAA\nAACASKSnuoAwY+oD901+7T8zvi7YqMewY0/bc7MW6zX8i9efveehZz/98qulIad9h467HHDI\nAYN6RlQqAAAAAACNl+I7oOe/edfp1z3Yart9z7nw9IGdS265cMx7yyrXY/i/7zrl4lvSuuxw\n8lkXX3jmKbv1yf/LVWOvfX52w6MmHX/Yr279z39XOAAAAAAA65DiO6DvvnbSRkMuPmnYZiGE\nzfps/c2357700aK+WxY1cvg9N0xuuflp54zepeaw9xZbd06bdf7t143Z9eqoKgYAAAAAoHFS\nGUBXLH37pcVlow/qtuI4Fj/j0ivWa4bPyiqy27Wp29Jt2BFHF8xJhhALobz4/TvH//nV9z8v\nroi3bt9l78NOHrptm9uPGvn0gtLw9ZkHTR/00L1ja0bNmTNn8eLFK6qIxdq2bfvfXltTFY/H\nU10CAAAAwM9denrq98WNTlVVVapLoAlJ5We9fMnLIYRNv3zh/Mue+WTWvBYbdx4y6lf7btOh\n8TPs0y3/1imXXJ0xfN+9du25cYsQQkbe1vvtt3XNu38+89KXcwYec/KoDnllb09/8O7LTxv4\n4H3H3vGXticfNXmzs68/rlftPLfccsvkyZNrXhcWFk6ZMmWDXSQAAAAArKqgoCDVJUSouLg4\n1SXQhKQygK4s/S6EcOVVUw4a/cvD22b+Z9ojfxh3SuK2e/dql9PIGfb43RXf3nTbc5PunfbE\nPTlFm/Tr12/bHXbZZasusRBCCC12HXbyngdsl58RQujYKf6XZy76tLSydbPMjFgsLT0jMzMR\n1YUBAAAAAJDaADotHg8h7HTBBUN7FIQQevTcYs70kQ/c+M5el29f26d49jWjTnyx5vXut93/\n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\nrkJggg=="
     },
     "metadata": {
      "image/png": {
       "height": 480,
       "width": 960
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(cyclistic, aes(weekday, fill=member_casual)) +\n",
    "    geom_bar() +\n",
    "    labs(x=\"Weekdady\", title=\"Chart 03 - Distribution by weekday\") +\n",
    "    coord_flip()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d4434b14",
   "metadata": {
    "papermill": {
     "duration": 0.065973,
     "end_time": "2023-04-14T12:06:46.000018",
     "exception": false,
     "start_time": "2023-04-14T12:06:45.934045",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "It's interesting to see:\n",
    "* The biggest volume of data is on the weekend.\n",
    "* Saturday has the biggest data points.\n",
    "* Members may have the biggest volume of data, besides on saturday. On this weekday, casual take place as having most data points.\n",
    "* Weekends have the biggest volume of casual, starting on friday, a ~20% increase."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b296bbfb",
   "metadata": {
    "papermill": {
     "duration": 0.065648,
     "end_time": "2023-04-14T12:06:46.133871",
     "exception": false,
     "start_time": "2023-04-14T12:06:46.068223",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"analyze-code-data-hour\"></a>\n",
    "#### Hour of the day"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "1d7a0cdd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:06:46.271946Z",
     "iopub.status.busy": "2023-04-14T12:06:46.270661Z",
     "iopub.status.idle": "2023-04-14T12:06:46.447154Z",
     "shell.execute_reply": "2023-04-14T12:06:46.445539Z"
    },
    "papermill": {
     "duration": 0.247779,
     "end_time": "2023-04-14T12:06:46.447348",
     "exception": false,
     "start_time": "2023-04-14T12:06:46.199569",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 24 × 6</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>start_hour</th><th scope=col>count</th><th scope=col>%</th><th scope=col>members_p</th><th scope=col>casual_p</th><th scope=col>member_casual_perc_difer</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>00</td><td> 41924</td><td> 1.2014194</td><td>33.39853</td><td>66.60147</td><td>-33.202939</td></tr>\n",
       "\t<tr><td>01</td><td> 26372</td><td> 0.7557445</td><td>29.46686</td><td>70.53314</td><td>-41.066282</td></tr>\n",
       "\t<tr><td>02</td><td> 15386</td><td> 0.4409178</td><td>27.46653</td><td>72.53347</td><td>-45.066944</td></tr>\n",
       "\t<tr><td>03</td><td>  9038</td><td> 0.2590027</td><td>27.63886</td><td>72.36114</td><td>-44.722284</td></tr>\n",
       "\t<tr><td>04</td><td>  7391</td><td> 0.2118045</td><td>41.25288</td><td>58.74712</td><td>-17.494250</td></tr>\n",
       "\t<tr><td>05</td><td> 17987</td><td> 0.5154549</td><td>74.99861</td><td>25.00139</td><td> 49.997220</td></tr>\n",
       "\t<tr><td>06</td><td> 56915</td><td> 1.6310177</td><td>81.50751</td><td>18.49249</td><td> 63.015022</td></tr>\n",
       "\t<tr><td>07</td><td>106045</td><td> 3.0389401</td><td>81.58706</td><td>18.41294</td><td> 63.174124</td></tr>\n",
       "\t<tr><td>08</td><td>133253</td><td> 3.8186419</td><td>78.41399</td><td>21.58601</td><td> 56.827989</td></tr>\n",
       "\t<tr><td>09</td><td>123699</td><td> 3.5448522</td><td>72.02403</td><td>27.97597</td><td> 44.048052</td></tr>\n",
       "\t<tr><td>10</td><td>136067</td><td> 3.8992830</td><td>65.53316</td><td>34.46684</td><td> 31.066313</td></tr>\n",
       "\t<tr><td>11</td><td>175790</td><td> 5.0376282</td><td>61.92161</td><td>38.07839</td><td> 23.843222</td></tr>\n",
       "\t<tr><td>12</td><td>222341</td><td> 6.3716439</td><td>60.23585</td><td>39.76415</td><td> 20.471708</td></tr>\n",
       "\t<tr><td>13</td><td>235068</td><td> 6.7363626</td><td>57.68629</td><td>42.31371</td><td> 15.372573</td></tr>\n",
       "\t<tr><td>14</td><td>242837</td><td> 6.9589995</td><td>55.76992</td><td>44.23008</td><td> 11.539839</td></tr>\n",
       "\t<tr><td>15</td><td>264763</td><td> 7.5873346</td><td>55.58518</td><td>44.41482</td><td> 11.170367</td></tr>\n",
       "\t<tr><td>16</td><td>298020</td><td> 8.5403831</td><td>57.83605</td><td>42.16395</td><td> 15.672103</td></tr>\n",
       "\t<tr><td>17</td><td>349360</td><td>10.0116376</td><td>60.23643</td><td>39.76357</td><td> 20.472865</td></tr>\n",
       "\t<tr><td>18</td><td>333746</td><td> 9.5641860</td><td>59.53480</td><td>40.46520</td><td> 19.069592</td></tr>\n",
       "\t<tr><td>19</td><td>254651</td><td> 7.2975542</td><td>56.86646</td><td>43.13354</td><td> 13.732913</td></tr>\n",
       "\t<tr><td>20</td><td>175658</td><td> 5.0338454</td><td>53.05822</td><td>46.94178</td><td>  6.116431</td></tr>\n",
       "\t<tr><td>21</td><td>113455</td><td> 3.2512891</td><td>48.69331</td><td>51.30669</td><td> -2.613371</td></tr>\n",
       "\t<tr><td>22</td><td> 84132</td><td> 2.4109775</td><td>43.85489</td><td>56.14511</td><td>-12.290211</td></tr>\n",
       "\t<tr><td>23</td><td> 65641</td><td> 1.8810794</td><td>39.39154</td><td>60.60846</td><td>-21.216922</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 24 × 6\n",
       "\\begin{tabular}{llllll}\n",
       " start\\_hour & count & \\% & members\\_p & casual\\_p & member\\_casual\\_perc\\_difer\\\\\n",
       " <chr> & <int> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t 00 &  41924 &  1.2014194 & 33.39853 & 66.60147 & -33.202939\\\\\n",
       "\t 01 &  26372 &  0.7557445 & 29.46686 & 70.53314 & -41.066282\\\\\n",
       "\t 02 &  15386 &  0.4409178 & 27.46653 & 72.53347 & -45.066944\\\\\n",
       "\t 03 &   9038 &  0.2590027 & 27.63886 & 72.36114 & -44.722284\\\\\n",
       "\t 04 &   7391 &  0.2118045 & 41.25288 & 58.74712 & -17.494250\\\\\n",
       "\t 05 &  17987 &  0.5154549 & 74.99861 & 25.00139 &  49.997220\\\\\n",
       "\t 06 &  56915 &  1.6310177 & 81.50751 & 18.49249 &  63.015022\\\\\n",
       "\t 07 & 106045 &  3.0389401 & 81.58706 & 18.41294 &  63.174124\\\\\n",
       "\t 08 & 133253 &  3.8186419 & 78.41399 & 21.58601 &  56.827989\\\\\n",
       "\t 09 & 123699 &  3.5448522 & 72.02403 & 27.97597 &  44.048052\\\\\n",
       "\t 10 & 136067 &  3.8992830 & 65.53316 & 34.46684 &  31.066313\\\\\n",
       "\t 11 & 175790 &  5.0376282 & 61.92161 & 38.07839 &  23.843222\\\\\n",
       "\t 12 & 222341 &  6.3716439 & 60.23585 & 39.76415 &  20.471708\\\\\n",
       "\t 13 & 235068 &  6.7363626 & 57.68629 & 42.31371 &  15.372573\\\\\n",
       "\t 14 & 242837 &  6.9589995 & 55.76992 & 44.23008 &  11.539839\\\\\n",
       "\t 15 & 264763 &  7.5873346 & 55.58518 & 44.41482 &  11.170367\\\\\n",
       "\t 16 & 298020 &  8.5403831 & 57.83605 & 42.16395 &  15.672103\\\\\n",
       "\t 17 & 349360 & 10.0116376 & 60.23643 & 39.76357 &  20.472865\\\\\n",
       "\t 18 & 333746 &  9.5641860 & 59.53480 & 40.46520 &  19.069592\\\\\n",
       "\t 19 & 254651 &  7.2975542 & 56.86646 & 43.13354 &  13.732913\\\\\n",
       "\t 20 & 175658 &  5.0338454 & 53.05822 & 46.94178 &   6.116431\\\\\n",
       "\t 21 & 113455 &  3.2512891 & 48.69331 & 51.30669 &  -2.613371\\\\\n",
       "\t 22 &  84132 &  2.4109775 & 43.85489 & 56.14511 & -12.290211\\\\\n",
       "\t 23 &  65641 &  1.8810794 & 39.39154 & 60.60846 & -21.216922\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 24 × 6\n",
       "\n",
       "| start_hour &lt;chr&gt; | count &lt;int&gt; | % &lt;dbl&gt; | members_p &lt;dbl&gt; | casual_p &lt;dbl&gt; | member_casual_perc_difer &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|\n",
       "| 00 |  41924 |  1.2014194 | 33.39853 | 66.60147 | -33.202939 |\n",
       "| 01 |  26372 |  0.7557445 | 29.46686 | 70.53314 | -41.066282 |\n",
       "| 02 |  15386 |  0.4409178 | 27.46653 | 72.53347 | -45.066944 |\n",
       "| 03 |   9038 |  0.2590027 | 27.63886 | 72.36114 | -44.722284 |\n",
       "| 04 |   7391 |  0.2118045 | 41.25288 | 58.74712 | -17.494250 |\n",
       "| 05 |  17987 |  0.5154549 | 74.99861 | 25.00139 |  49.997220 |\n",
       "| 06 |  56915 |  1.6310177 | 81.50751 | 18.49249 |  63.015022 |\n",
       "| 07 | 106045 |  3.0389401 | 81.58706 | 18.41294 |  63.174124 |\n",
       "| 08 | 133253 |  3.8186419 | 78.41399 | 21.58601 |  56.827989 |\n",
       "| 09 | 123699 |  3.5448522 | 72.02403 | 27.97597 |  44.048052 |\n",
       "| 10 | 136067 |  3.8992830 | 65.53316 | 34.46684 |  31.066313 |\n",
       "| 11 | 175790 |  5.0376282 | 61.92161 | 38.07839 |  23.843222 |\n",
       "| 12 | 222341 |  6.3716439 | 60.23585 | 39.76415 |  20.471708 |\n",
       "| 13 | 235068 |  6.7363626 | 57.68629 | 42.31371 |  15.372573 |\n",
       "| 14 | 242837 |  6.9589995 | 55.76992 | 44.23008 |  11.539839 |\n",
       "| 15 | 264763 |  7.5873346 | 55.58518 | 44.41482 |  11.170367 |\n",
       "| 16 | 298020 |  8.5403831 | 57.83605 | 42.16395 |  15.672103 |\n",
       "| 17 | 349360 | 10.0116376 | 60.23643 | 39.76357 |  20.472865 |\n",
       "| 18 | 333746 |  9.5641860 | 59.53480 | 40.46520 |  19.069592 |\n",
       "| 19 | 254651 |  7.2975542 | 56.86646 | 43.13354 |  13.732913 |\n",
       "| 20 | 175658 |  5.0338454 | 53.05822 | 46.94178 |   6.116431 |\n",
       "| 21 | 113455 |  3.2512891 | 48.69331 | 51.30669 |  -2.613371 |\n",
       "| 22 |  84132 |  2.4109775 | 43.85489 | 56.14511 | -12.290211 |\n",
       "| 23 |  65641 |  1.8810794 | 39.39154 | 60.60846 | -21.216922 |\n",
       "\n"
      ],
      "text/plain": [
       "   start_hour count  %          members_p casual_p member_casual_perc_difer\n",
       "1  00          41924  1.2014194 33.39853  66.60147 -33.202939              \n",
       "2  01          26372  0.7557445 29.46686  70.53314 -41.066282              \n",
       "3  02          15386  0.4409178 27.46653  72.53347 -45.066944              \n",
       "4  03           9038  0.2590027 27.63886  72.36114 -44.722284              \n",
       "5  04           7391  0.2118045 41.25288  58.74712 -17.494250              \n",
       "6  05          17987  0.5154549 74.99861  25.00139  49.997220              \n",
       "7  06          56915  1.6310177 81.50751  18.49249  63.015022              \n",
       "8  07         106045  3.0389401 81.58706  18.41294  63.174124              \n",
       "9  08         133253  3.8186419 78.41399  21.58601  56.827989              \n",
       "10 09         123699  3.5448522 72.02403  27.97597  44.048052              \n",
       "11 10         136067  3.8992830 65.53316  34.46684  31.066313              \n",
       "12 11         175790  5.0376282 61.92161  38.07839  23.843222              \n",
       "13 12         222341  6.3716439 60.23585  39.76415  20.471708              \n",
       "14 13         235068  6.7363626 57.68629  42.31371  15.372573              \n",
       "15 14         242837  6.9589995 55.76992  44.23008  11.539839              \n",
       "16 15         264763  7.5873346 55.58518  44.41482  11.170367              \n",
       "17 16         298020  8.5403831 57.83605  42.16395  15.672103              \n",
       "18 17         349360 10.0116376 60.23643  39.76357  20.472865              \n",
       "19 18         333746  9.5641860 59.53480  40.46520  19.069592              \n",
       "20 19         254651  7.2975542 56.86646  43.13354  13.732913              \n",
       "21 20         175658  5.0338454 53.05822  46.94178   6.116431              \n",
       "22 21         113455  3.2512891 48.69331  51.30669  -2.613371              \n",
       "23 22          84132  2.4109775 43.85489  56.14511 -12.290211              \n",
       "24 23          65641  1.8810794 39.39154  60.60846 -21.216922              "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic %>%\n",
    "    group_by(start_hour) %>% \n",
    "    summarise(count = length(ride_id),\n",
    "          '%' = (length(ride_id) / nrow(cyclistic)) * 100,\n",
    "          'members_p' = (sum(member_casual == \"member\") / length(ride_id)) * 100,\n",
    "          'casual_p' = (sum(member_casual == \"casual\") / length(ride_id)) * 100,\n",
    "          'member_casual_perc_difer' = members_p - casual_p)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "id": "05b00086",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:06:46.586017Z",
     "iopub.status.busy": "2023-04-14T12:06:46.585077Z",
     "iopub.status.idle": "2023-04-14T12:06:50.883852Z",
     "shell.execute_reply": "2023-04-14T12:06:50.882291Z"
    },
    "papermill": {
     "duration": 4.369036,
     "end_time": "2023-04-14T12:06:50.884013",
     "exception": false,
     "start_time": "2023-04-14T12:06:46.514977",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\n8PRJ533YOvNhDu8/dt2o85/OdvsVj/Mv4/tX7BZC+NHn9rrj2Y+LS9qmv3zC7p99q7l96C7X\nfqa2d57Su9DhFH3xgk+HEC7a99oQwv5X7torXfdwgIu0P3ux355bjHPpyBuPDiFcv9+o256a\nlUEXWsdedvCp9z38yvj1d+/f/X366fzqNx04rLOjYdQW+//prZlXgwnP3LbHzpfPvtqiXjFi\nHFwAAACAuOa9T3a5MvnlO7dataa4K5IkO3TN1WpmpaXVQ7e7/53pXWu+dvO2IYRtb35trhaG\nVWQyFcO6fnzyBzuFENLZgTt9ftSB+31+i/WHhBB2+sZ5lekkSTIjPrPN9PbOBbTW0TYxn0qS\nJLv1bvsd8fU/zq/s9/9cbDC1xkbbfmGXzwzIpUMI6x/6kwUPdvY7oHtLcV+tse56XVac9ZiI\nJJU/+JI/z77yXKN++NSZTydYdYPNd9xll09vPDyTJCGEXc+dudW8e2N++22u5SesXJOr/fSF\ne6weQsjVDd1iiw36ZVMhhEzFsF++Mrlrq9YZz25SkwshVAwcsee+B+ywxfr5VPKpo27cf1BV\n1aADulbrQRkdF39xRAghSTKrDt90uy1GFrvrN+zzLzS0za/ILutXZdO5lRawk3s4nKK2hhcr\nUkkIIVezcVPHAlpdUElzndU9HGAP9+f8Ou1Oj/rtbJ8SQpi9i24a6vG5NM/YC78+accQQpKk\nV1v3UzvutO16Q6tDCPm6LR6d2LSAHtubxu23Tl1xw1WGb/qptVdMkiRfv8WVX14nhDBm0sxt\ne3jFKFqkgwsAAACwNFiu74AOIdSPOPCJce/cftW5o3bYdOjgfhPfmzhgzQ12/vz+p15+62tv\nPrzXrGy657Y646Ex15295cjBzz069vHn31vpU3vf+IdX/nz12c/e+aMv7rz5SgOHLPgr6FKZ\ngX+6+NjVV6j652N/evrV+d6tufJOZ7/1t9uP2PPTje8+O+avL9cN/+x3R495/tbjFrXa3vLW\na//pMr4ps+Kqa3/hyyf97pn3bjt1pwVsteMljz71m6tHbbt5ZvLbTz76xLuTC1vuesiNDzzz\n0Dkzt+rh3pjXxnuN2n/fz53++1d+ed43NhhYeOm5cYPX3+rQr5322BvPH7beJ89tyFZv/Oi/\nH/zmftuvnP/oDw88OG5G/xN/+PtnbvjKVvvsu+8+n3wLYg/KSJ125/MP3XDu/ntsW9n49j/f\n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\nQBQCaAAAAAAAohBAAwAAAAAQhQAaAAAAAIAoBNAAAAAAAEQhgAYAAAAAIAoBNAAAAAAAUQig\nAQAAAACIQgANAAAAAEAUAmgAAAAAAKLIlLoAAABYTtVedl6klltCCCHkQshF6iCE6aecE61t\nAADKhzugAQAAAACIQgANAAAAAEAUAmgAAAAAAKIQQAMAAAAAEIUAGgAAAACAKATQAAAAAABE\nIYAGAAAAACAKATQAAAAAAFEIoAEAAAAAiEIADQAAAABAFAJoAAAAAACiEEADAAAAABCFABoA\nAAAAgCgE0AAAAAAARCGABgAAAAAgCgE0AAAAAABRCKABAAAAAIhCAA0AAAAAQBQCaAAAAAAA\nohBAAwAAAAAQhQAaAAAAAIAoBNAAAAAAAEQhgAYAAAAAIAoBNAAAAAAAUQigAQAAAACIQgAN\nAAAAAEAUAmgAAAAAAKLIlLoAAADoqdrLzovUciGElmIXkToIYfop50RrGwAAllLugAYAAAAA\nIAoBNAAAAAAAUQigAQAAAACIQgANAAAAAEAUAmgAAAAAAKIQQAMAAAAAEIUAGgAAAACAKATQ\nAAAAAABEIYAGAAAAACAKATQAAAAAAFEIoAEAAAAAiEIADQAAAABAFAJoAAAAAACiEEADAAAA\nABCFABoAAAAAgCgE0AAAAAAARCGABgAAAAAgCgE0AAAAAABRCKABAAAAAIhCAA0AAAAAQBQC\naAAAAAAAohBAAwAAAAAQhQAaAAAAAIAoBNAAAAAAAEQhgAYAAAAAIAoBNAAAAAAAUWRKXQAA\nAAD0VMUeB5W6hMU0odQFAEBJuAMaAAAAAIAoBNAAAAAAAEQhgAYAAAAAIAoBNAAAAAAAUQig\nAQAAAACIQgANAAAAAEAUAmgAAAAAAKIQQAMAAAAAEIUAGgAAAACAKATQAAAAAABEIYAGAAAA\nACAKATQAAAAAAFEIoAEAAAAAiEIADQAAAABAFAJoAAAAAACiEEADAAAAABCFABoAAAAAgCgy\nfdNNZ/vE+2647qF/vjphWufKa6y7z2HH7rLRiovd2t/vHH3no8++Nz09fP1NDz/hq+vWZkMI\nHz115jEXvTD7akfddNeogRVLWjoAAAAAAIuljwLosd8/5Rdv9D/mxJPW6Z967s+3jz77hI5r\nb9ltaPViNPXGnWdfeMe4w79xwoj+7WOuu+ack5p+df1J6SRMeW5K5cC9TzxmZNeaq9dme28E\n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\nPjLuUx+fbs35+oF/j6rUpkv6pFmmG97L7GXj9y/fsH7JP4UQfdZuen/D6GJP7Lz63dXjGggh\nxmzYvGltb/dCR+HvqXUfPBpaq2/65MEd6n+zdVnbe3u4J8c5p9+tX+2eeRu/q5/acczwPvUi\nTk7o1+Yfvd7wWPN3Czqn/HvoriPOh58Z/ESz2t+sGHnvE28XPfrHvikNHhu461Js537D0p99\nqlasZcn4/o0H7BBCJD01WavRLJv1Q9HK2adm7rpS0HD8SA8vAwAAAPydaFwuL28BAQAAgKr8\ntLpZ7e57vKyw60qBOdoohOvJhIhNlvK7T/3YpIJJCOGyZw6/q+ZLx3N3Z2Q3izaMrBq1VPTP\n/n1W0RO/n9io4YQDvxTYbzfq1qXEdz52ue2yr9/v+w9PL1LCxi8ebJvQYMuc05Zht0Xc+ORT\n7z9Yvd2ujZfyHitnEkK4X+u+Sbu/HPsv9wrr297eacuvn14pbBZtGF+33PRTFT45daBJ+VD3\nS68fUL/T0sOzT2UPT/zLDabt+ccrRtfNi2p14NR7d0TohRD5F/bdXb35sTzbU8cuv5Ect7p+\nQu/jxhNZpxKNOvem/q9K9KsFzfMubRZCDKkatSyvad7lre6tfdSpZuu3T3+TZWkUofdhtwAA\nAACqxTugAQAA/nZSeg4cfoMOlcOLVsi/9O7bF/Nq937DPSAWQmhCYl98q7vLWTjho9O+vIRW\nF/F6r3s8PnTrGy9GozNtfOGBom8bdUwUQuQ4nfa8I1N+zKzR9dVr02chhOax2auEEGuX/q/Y\nRi7uT79sc7RcteSOayNjU8L9a4bWLVqh/YcHfzt1+Nr0WQiXLUQjXI6r9/roO/qu/IwPVpzP\nFUK4nLnPb/mtXL3pTJ8BAACAELkLAAAAQFlrOHLi7OS4Ygu37X1j49lc99cFmduFEDV61Lp+\nhZha3YWYd27HefFEUokvoQ+vH63z/CmCt77xYgwRd99m0BV9qwm5+roFGdudLtex5U00y4s/\nJfP7zGJLLn7+mxCiS+OE6xfW6HavmPK9++uoipVcP3+/ed13hw8fPnjouy/37vv9ijU05uqa\nSZ0na599cNGCY72mN7p0cOSPeban5ncsbRAAAABAfRhAAwAA4EYuIYRG89cJskYvhHDZPN/A\nzVHg+Mu62lCPq93cxr3TaCReS2sQQtyVvmpWs0rFHjFGNyi+EU/jco3mz7n2zskd/j1hkyus\nUvM2D5sf6trnxfk/dzcPuVi0QfPzVSKWrpghpr+9c8j7IcZqC5tWvIksAAAAgMowgAYAAEBx\noTEPCbHi5JqfRcPyRQuzT74mhEhoUfQeYfv1T/l5zwW/btwPQmPb6DTP5/9erVWrFkULndaz\ne774KbZWZLGVE5pWF+Kbt76++MTD1YoW/rbxG/cXtpzvHpmwqbx59vGPhoZf+0zFX/86Q+8z\npv68fu+sPXNi6L7zVdpsKhfCze4AAAAA7gENAACAG5jKP/FoOdOxpV2/uVzgXuJyZE3r+IpG\naxj9SDUhRLhOW3D5vxdsTvejeWe39/7yD39t3BdOH94qHWKqNeaO2JPrO398Nq9o4QfpbZo3\nb77Pai+2cnz9qeX1uu3PPPdT3tWHrFe+f2bKIffXttwDhU5XxeapRdPn3NPbJv6aLYSzaAtJ\nHafqNJpR/dIu2hw95jb1MQgAAACgbgygAQAAcCPtss1jouy/PJB0T78hY6aPG/Zwg+pzf8ho\nOWprq1ijEKJdn/q2/J8aNH96/tKVcyaOaJTctsmztUrcqI8b904fZRBC/GfWorVvfFniysO2\nvXy7PrN1jZReg0fNnjW1z6P3pc091OjZN/tXCi+2pi605kdzO1ovb22Q1KT/sPHjhva7L6nx\nmZT27kdN5Tu1LB92cGr7vkPHv7Jy6cThz9Sr81RSUkRh9r7+L07JcriEEIboZkOqRp7Zeiw0\npsWYmjHFSwEAAAD+lhhAAwAAwIMK96efPLK1478q7N64dPLi9Rnx/5z93g/bp6a6H62fvmP5\n2O5RZz5+cdioDbuPdVyyZ92Qzq1btzZpPX/wYKk2XsJz75v96D3V980fN2bujhJXjkzsfOSX\nzwe0rff1f18fM2ne3t8M45Zt/eLlzh5XbjDojWMfvNQ8RWxeMXv19u/qdpl04OMZrVu3vitc\nr9GGb/z2vR4tEraunjt8zNzP/ueYt/fnDz/b1OvR+77avavw2vuxe4+5SwiRPGAmTTYAAADg\npnG5buaTXgAAAAAU8216g3tnHNp0Me/Rcl4+gxEAAAD4G2EADQAAAPiB036pcdxtx2IHZv06\nV+5aAAAAgGARIncBAAAAgOI9O2jopR/e+dpi7f3uULlrAQAAAIII74AGAAAAblWjpISjmfoO\nAxesnfy43LUAAAAAQYQBNAAAAAAAAAAgIPiAbgAAAAAAAABAQDCABgAAAAAAAAAEBANoAAAA\nAAAAAEBAMIAGAAAAAAAAAAQEA2gAAAAAAAAAQEAwgAYAAAAAAAAABAQDaAAAAAAAAABAQDCA\nBgAAAAAAAAAEBANoAAAAAAAAAEBA/D8wfCWIlYR0uQAAAABJRU5ErkJggg=="
     },
     "metadata": {
      "image/png": {
       "height": 480,
       "width": 960
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic %>%\n",
    "    ggplot(aes(start_hour, fill=member_casual)) +\n",
    "    labs(x=\"Hour of the day\", title=\"Chart 04 - Distribution by hour of the day\") +\n",
    "    geom_bar()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6b3ba4f6",
   "metadata": {
    "papermill": {
     "duration": 0.065503,
     "end_time": "2023-04-14T12:06:51.015970",
     "exception": false,
     "start_time": "2023-04-14T12:06:50.950467",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "From this chart, we can see:\n",
    "* There's a bigger volume of bikers in the afternoon.\n",
    "* We have more members during the morning, mainly in between 5am and 11am\n",
    "* And more casuals between 11pm and 4am\n",
    "\n",
    "This chart can be expanded ween seen it divided by day of the week."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "id": "8a600d75",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:06:51.151957Z",
     "iopub.status.busy": "2023-04-14T12:06:51.150148Z",
     "iopub.status.idle": "2023-04-14T12:06:59.014000Z",
     "shell.execute_reply": "2023-04-14T12:06:59.014544Z"
    },
    "papermill": {
     "duration": 7.933884,
     "end_time": "2023-04-14T12:06:59.014784",
     "exception": false,
     "start_time": "2023-04-14T12:06:51.080900",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\n98Xr9eZHLXMRRCQYDDrhvWlLPodC5r8xpvfFytCdZ33FZcvQXfZU15tRSanuqBWX6WbobzSH\npLqUZBpyzhGEo5ZVjsrnNrWsaoreF1uGbusrLrHjaMhKqhtk/f9ucADxeDzWp6FKSnXrKy4r\nqZ5XsoOLAtMQ2qASFaDT8RUictXVLxwz9oTjO3o/efWROy472337/bsloiLSXvtteG3vVjOR\nRNam7Y3bsHjx4nQ6rd+urq42/n4zPco0ZvrtnaeqqumxO896XxRFcUhfTC/c82zpi6ZpppeP\nedb74nK5HNIXh6QHqd4Yqb6BkqV6KpVq6i5FUYy/GkxDjVXSe7N15XNhtvSFVG+sklLdOdNQ\nW0v1AtOQy+Uy3gzyuTHn5DPTUGMOeW+WJtUTBe4zxuv1WgxisJuk+gYqJtXFWF+SyaT1J0LF\nKFEB2qWqIrLPtGkjtq0RkW179/vx9T/8/aYP9zjTLyIr09ng+hF2RSqj1nhcHnu2N27DkCFD\n8h/d9+zZM5FofsjV31GpVMrKZ/76IGXk6ZridrtdLlcmk8kX0FsqX+mw3pdcLmdlEPF4PIqi\n2NKXZDJp5YNQVVVt6Us6nc5kMuYi5Jf+1vuSzWYLHGM0S091K30h1TdAqjdWSame74uRVC/w\nLLlcjmmopWzMZyt9abP53BQ9PWzpC6muc8g0ZGOqW+wLqd5Yi1K9wCuWzWabjVBJ+cyyagNM\nQ41VUqobZOUFNxiBVG/MIakuJZ+GTD8LKlKJCtBaoKfIm3t0Dea3DOoUePXXH93B7UVe/TSW\n7updVzj+Op6p6ltt1/bGbZg1a1b+djwer6+vb7bZ+pszHo+bHiZ8Pp/+JQsjT9eU6upql8uV\nSqUaGhrMRXC5XHV1dSISjUZNj1Z+v1+fU630pba2VlXVZDIZiUTMRdA0TV8fRKNR0xNzMBj0\n+/2ZTMZKX+rq6hRFSSQSsVjMXASPx6PPQw0NDaaH5nA4rKqqxb7oqR6LxUynutfr1b+DYz3V\n0+m06SD5VI/FYqYXf7akek1NjaZpDkn1bDZb3lR3u93V1dXimFSPx+Omvw7m9Xr1t62VZohI\nJpNpNjfyJ9FYyWd9GrKezxanIVVV8/lsehoKBAL618CtT0OJRCIajZqLkM/nSCRi+jgkFArp\nh0NW+qIf2lnJ58bTkOlDu6qqKo/HY2Xozqe69RWXxVS3vuKyK9U1TSt7qmuaVlNTI3akusWh\n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\nzymXH7NZO29N+46euc+9vmzoIV1FJB1b+lZ98tBhHb013WzZXpreAUBrF549o6m79LFbK7jE\nrJ84zfYmAQAAAABgmq92uKqcG/tuywMPHJLfmE3++Nqbn9X2NPnhxYoPHhDZP/9nKvLhkyvj\nNbsP89Vub+NzVfXqL/LCa28ul25V+Y3v3TDz0VXBSybud+j0xzoMnr30+fOD63/J8Jv1pep0\n9Kv/fra2pveup07a7dRJkkuvfva+Sw8++YaTJr+/5OZB+i6Nn+iL15at60jD+wXCWmfyF3ha\nyrd5t23yemwtIjXdunffegtF8UwY2fez+Ze+9N7Sn778791TZ/q7DD6pS9iu7aXpHQAAAAAA\nAADn0Pw9L+5d++WCUS/9+Nv3fp6ePHy//fZ7I2nyCzGRX+49a+Fn6/7Ipe876+hoJjti9h72\nPlfVlhf1DbrfOuucbxPrzlBOR/83avKM2x5KpCLvJbK5jvsNy5eJI98/c+k3a0WyItLw4zX9\n+/c//JK39LsUrWbIUUeKSGJFQkSCqiu+4sllqXVfoIn++Owpb/2i3y4c1rrS/QhhU3qNmjlJ\nblww74q5Ddq2ffe57oKT9cuh2LUdAAAAAAAAQFtzwTO33N/3Twf16HPiqaN6dw5/+vqiOxd9\nOOCMv53WKWgu4BbDd50zcvtv/jhmYI/w+y8/9Nir3/Q6fNYtu21u73MpWu0T95ze99ib+24z\neMzx+3f0Rp6+b87nqeBfnz7T38F1QIfxiy8/8tSVJ+y6facf//fmPfMWde8e+mHpG6ddNPPK\n6TOO6HzfotlDj1p59qBeHX765P1XnlqkejrNuHJnERkxtt/0i1/tv98Jk04Ymv7l47uuuXHP\nM3o+e/NSEfF3OK5A2KtmTjH3cuWVoQCtqLWLFi1qvGX3UefsPmoTe9q1HQAAAAAAAECbEu42\naslX20w6a/rLT953/y+J7j23mzb3qYvHHmwu2v4HHdT7wrsOOuLmq+9/5vpHvtisz06nX3H9\nzX85UinCc2199I1fvTHwjGm3P37X1auUur79j3zs0WsO3zosIo+8s/D806c+de+1C7yddtll\n0HX//GL4Fh+efeolb7+yOOma/Pd3n5tx4YxHnrv/2XtWhTt26bPnnx+bculhW4ZEpN/kF+Yl\nxl173zMXXfDCDgMHHTvntfP2eva4z97yuxTFFSwQNpGdbK4XeeU/AxoAAAAAAAAAChvx3+Ub\n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\nj73xzH23LL86OPiBU/eq1B+SbNsuIjfd/OdTzjz9tD7+919+7J7rLvDetfqovh18+0qnT0gq\nvnnBmk1Tl12b71hEZNLMK/708jkLr7pYRFwu90/mzeuV44KGuUIq9jj7e5HXl8xZesGMY6rc\nTS8+dteOZNqbjucqJt8Ki6XTRtWmp0s16OxSDXk1aofy6lI99Wh3qTb9jdohw13avg1SHxvs\nUpO9pJGQV3KHO5ts1PaYhvSHMA2Jw6YhB85BwjTENCQiVkxD5ucgjRBHTUMoeSxAAwBQfG5f\nUER2JNNh5auPB25PpJSIL9f2vELMl6H+HG/44L4li59ev+P7J55z3mlHhtwdv8rstIx9bnvw\nCZGtG1685KpLMj1XzhxVpT9k67plv36n1/L7f2B4LIqv/+OPP75rr/IDf1y78Zl/PPWrt09d\ncqD+ELeiiMhBc+eeMDwiIsNH7P3Zaz9++I63j1qwn4En5LNnb28sP/KY3jnfj+VKSMU3zz33\nF42Tpv3q/x3RK5j6v9f/Z/7889LX3zNtdB5Pqcsdqr19/sql9/3qpl+mwn2jR8z6yeY7/lim\n9+2lzjEWks5G1aanS3PR36Ua8mrUDuXVpZ3qtEs15NWoHTLQpd9tg8b8u9R8L+VKyCtZY2cz\njfotTEM6Q5iG2ic4ZBpy1BwkTEO7MA2ZnIYsaaQuNA2h5HENaAAAis8bHiMiG1uT2S0ftaUq\nRlfm2p5XiPkyRKRlyyvnz7psXXzMzffcXzv9KI3XqblC6jc8/4cn/5rd2Gv4IcdX+1996KO8\nQr58+e144ztnTDnh+OOP/9GJPxWRp86aevLUOXmN5VtqegcTTdvyKsMT2ktE9h/49ScN9+0b\nim3r+FKAnVWSefCRD4eednyH99VO2PHOine3y4JzT+hfXeYNVo47bNp5g4JPL/t7vmX4q0ac\nO/em+x/63YP3LL34x5PeaUn02C/nJRoNjbFw9Ddqh/Lq0lz0d2leNBq1Q3l1aWc671INeTVq\nLnl1aYdtkG+XmuwljYS8kjvc2ZJG/RamIZ0hTEPtExwyDTlnDhKmoXaYhsxMQ+bnII0QZ05D\nKHksQAMAUHz+yGF9fMra17aq/0y2bvhbY3z85D65tucVYr4MySQXXHa7/9Bz7r7h58N7BoyF\nJOOv37dy6dbErq/tziTfaUkG+gTzChkyffaSXRbfMk9EDrj6hptvPFd/Qv0Hd087bdbmeGrX\n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"
     },
     "metadata": {
      "image/png": {
       "height": 480,
       "width": 960
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic %>%\n",
    "    ggplot(aes(start_hour, fill=member_casual)) +\n",
    "    geom_bar() +\n",
    "    labs(x=\"Hour of the day\", title=\"Chart 05 - Distribution by hour of the day divided by weekday\") +\n",
    "    facet_wrap(~ weekday)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d87e00f7",
   "metadata": {
    "papermill": {
     "duration": 0.067633,
     "end_time": "2023-04-14T12:06:59.151242",
     "exception": false,
     "start_time": "2023-04-14T12:06:59.083609",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "There's a clear diferrence between the midweek and weekends. Let's generate charts for this two configurations."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "id": "34c14947",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:06:59.292999Z",
     "iopub.status.busy": "2023-04-14T12:06:59.291272Z",
     "iopub.status.idle": "2023-04-14T12:07:07.177762Z",
     "shell.execute_reply": "2023-04-14T12:07:07.176777Z"
    },
    "papermill": {
     "duration": 7.958843,
     "end_time": "2023-04-14T12:07:07.177951",
     "exception": false,
     "start_time": "2023-04-14T12:06:59.219108",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nsCrxvVsWpkrXFi8pKSlMlZhKFKxK7g0/iqIlYC65KoWZS/+v0tLSMq+n0ul0794bcz/FiUQi\n1rkvSVVyvykKM5dkMlmAuSxJVeI+dC/MXAp5SuXEraecuPWrKkvSiVuBTw+duOVp4U/c2tvb\n+3RELN4Keg/oLhOfu//SX9zcPny703cY1tn2ydTOMKJmg/Nv+tng4tbnH7rlF9edUbrirTsk\nm0IIg1Jfv5MOSic7G1szrX3T3vXw3nvvffjhh3P/r62t3WWXXRZmakVFRUVFRQvTQ/+pUlxc\nXFxcrEr+CnDYt4RVKS0tVaVHysrKVOmR8vJyVXqkoqIQ96daYqpEUaRKjyQSiV5XaW1tnddT\nJSUlC3O+mkwmCzD3wlRJpVKq9Eg6nS5A2rUkVVmSTnaWpCpL0imVE7f+WWVJOqVy4lawKvX1\n9X07EhZrhQ6g2+om3HL5ZQ++MnWTPY885uDtyhJRSA69++67v3q+ctP9Tn77oX8/8KtXdzqh\nNIQwtSNT/tUZxZT2zmRNUaKob9q7hlRaWlpVVTWzfGVlrz+gzn1qF/fn26qooooqqqiiiiqL\nXZWui5viqJLNZnvXbayjUkUVVfp5lSXgrVUVVVRRpT9XKcDff7AYKWgA3fTZU8f/+PKOVba9\n5MZDRw2a58d0ay1d+vepk9Plq4Xw5NvNHcsVzwyO32/prBpb3VftXeXOOOOMM844I/f/TCYz\nZcqU3s1uwIABiUSiubm5qampdz3kX6Wpqam5uTm+KgMHDoyiqDBVGhsb5/NHtQtv0KBBIYTC\nVGloaJjP9VkLKYqigQMHFqxKfX19W1tbTFUSicSAAQNCCHV1dfH9VU4ymaytrS1YlRkzZnR0\ndMRUJZVK1dTUFKzK9OnTOzs7Y6qSTqerq6sLVmXatGnx/VVaUVFR7vPLwlSZOnVqT4/hKi89\nL55BzVR/8lk9Wr64uLiysjKE0OtftfkoKSmpqKjIZrOxViktLS0vLy9MlUwmM3Xq1PiqlJWV\nlZWVFaZKZ2fntGnT+rzzhoaG3r03VlRUlJSUtLe3z5gxY8FL91ZlZWVxcXFhqrS1tdXV1cVX\npaqqqqioqDBVWltbY71yqrq6Op1Ot7S0NDQ0LO5VampqUqlUc3NzY2Pj4l6ltrY2mUw2NTXF\nekqVq+LEradVnLjlyYlb/6zixK2nCnPixjdH4b6EMGQ7Ljzpl8VbHnnD+KNnTZ9nTLjhoIMP\n+6Sta2/OPvVpU/XokcU1Ww0pSj7y9KRca0fzW/+qb1tzmyF91V6QOQMAAAAAfHMV7gropi9u\ne6W+7burV774/HNfly8dufbYg1ZJ/v30s399zIHbDEi2vPj33z3eVHXxkaOiKHXS3mNPveXc\nR5c5eUxNx/3XXVQ6bMvvDauMotAn7QWbOAAAAADAN1PhAui6d98NIfz20otmbaxa7vTfXbvh\nT6888+brbr32ojMbQ8WKK3/rnKvPHVmaCiGMPODnp4Rf3nHDhdc3pEaN3ezyEw9LRqEP2wGA\nhdSjG33k/gy1Rx8C9/RGHwAAAPQrhQugh2wy/r5Nun+quHb1o8649Kjunhp3wHHjDoixHQAA\nAACAmBTwHtAAAAAAAHyTCKABAAAAAIiFABoAAAAAgFgIoAEAAAAAiIUAGgAAAACAWAigAQAA\nAACIhQAaAAAAAIBYCKABAAAAAIiFABoAAAAAgFgIoAEAAAAAiIUAGgAAAACAWAigAQAAAACI\nhQAaAAAAAIBYCKABAAAAAIiFABoAAAAAgFgIoAEAAAAAiIUAGgAAAACAWAigAQAAAACIhQAa\nAAAAAIBYCKABAAAAAIiFABoAAAAAgFgIoAEAAAAAiIUAGgAAAACAWAigAQAAAACIhQAaAAAA\nAIBYCKABAAAAAIiFABoAAAAAgFgIoAEAAAAAiIUAGgAAAACAWAigAQAAAACIhQAaAAAAAIBY\nCKABAAAAAIiFABoAAAAAgFgIoAEAAAAAiIUAGgAAAACAWAigAQAAAACIhQAaAAAAAIBYCKAB\nAAAAAIiFABoAAAAAgFgIoAEAAAAAiIUAGgAAAACAWAigAQAAAACIhQAaAAAAAIBYCKABAAAA\nAIiFABoAAAAAgFgIoAEAAAAAiIUAGgAAAACAWAigAQAAAACIhQAaAAAAAIBYCKABAAAAAIiF\nABoAAAAAgFgIoAEAAAAAiIUAGgAAAACAWAigAQAAAACIhQAaAAAAAIBYCKABAAAAAIiFABoA\nAAAAgFgIoAEAAAAAiIUAGgAAAACAWAigAQAAAACIhQAaAAAAAIBYCKABAAAAAIiFABoAAAAA\ngFgIoAEAAAAAiIUAGgAAAACAWAigAQAAAACIhQAaAAAAAIBYCKABAAAAAIhFalEPoN9JJpML\n8/Ioihayh3wkEokCVDGXnop1LlEULTFVEomZH30lk8lMJhN3lVjn0tVzMpnMZrMxVSn8XGIq\n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\npPkAAAAAS5VSC+jrrrsu6jwAAAAAAKgypRbQCxcufLu7EqmaxvrsCM0HAAAAAIAqUWoB3dzc\n/HZ3tax9yfwnjhyh+QAAAAAALL0mZFKfevSVb6z1tn3s+FJqAX3GGWcs/mV/ofXpJ+b+4rpb\nm7c9+usn7Dzy8wIAAAAAYJwrtYA+/fTT37yx7ZnbNp/yoZvbj91zROcEAAAAAEAVSA7nyfWr\n73jNlzb+4VGnjtRsAAAAAADGgr6uZ07f/0OTV2qun7Tydp866ZH2nuL2rlfuPnLPrVac1Jir\nnzB5453Ov+Hp4vZnb71st83Wn1CXm7TSmp88/oKu/hBCCAOFRCJx9r9bB4ddMZc++IlXlzBO\nlSn1DOi3U7daXdf8X43IVMaIfD5f3hMTiUQIIZ1Olz1C6SmZTGZgYCBeSlHF9iVexKCKpRR3\nKobBkSuTks1mk8lh/QdViSmpVCpSyuD8K5OSy+XS6eG+or5jSjabjZdSnqivElKkVDgl86WT\nS39KIYQQQsNQUnpOO2coDw/F3/dEIhH1mzBeUrq6ut7urkwmU95rY/HdIZlMRt33akopvh9V\nZl9SqVQF9qWaUmIfuldmXyq5pLJwGyoLtzGVUk0LtwovD6tg4bb4vvT390dKGfxZlJ3S09Mz\nojMaJQPdn9lgo5uaPnz5nF8vn37xwiMP2nH73It/mBVCOGmrj17btNf53541ubnz9p+dNWOv\nTfZqe3nFwn2b7Pa5jY8/7ycXbt366N3HfHbGbmtPvf1z6y0h4S3HWT0X63dhtAzr96G/56UL\nTv1LumbySM1mLBh+AR3v1b/CKZlMJt6r/6AqS6lAOVhNKdlsNt4R+eLHMVWTksvlhprSF2E+\niyu+ZkoZmymxVTJl6fy5FN/rY1fD4yWlUCi83V2ZTKa846JK1qnVUdqqhsdmSvE4oWLVcNUs\ndqopJfZipyqXh1WzpKqChVtlUsb+wq36Uvr6Yh9cV8L8v3/+h8903z3/u1s3ZkMIG9z27PYf\nu/LfhdNXyaVW/PTnv33o8R9dpiaEsOFG6VMu+dADbd0TWm+c19N37IlH7rJsTdh6i/UnrfZY\n/Tt8iuBbjrN6rqYCe1dJpb5Obbnllm/a1vfc4w//e35hs9O+MbJzGl0LFiwo74kTJkxIJpNd\nXV0dHR0jO6U3p3R2dnZ2dsZLmThxYiKRqExKR0fHEs5pGr5JkyaFECqWsoTl8TAlEomJEydW\n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\nAQAAAACIQgENAAAAAEAUCmgAAAAAAKLwIYQA1Sw/de+o48+LOjoAAAAwzjkDGgAAAACAKBTQ\nAAAAAABE4RIcAAyXC30AAAAAb8kZ0AAAAAAARKGABgAAAAAgCgU0AAAAAABRKKABAAAAAIhC\nAQ0AAAAAQBTp0Z4AAJQkP3XvqOPPizo6AAAALJWcAQ0AAAAAQBQKaAAAAAAAonAJDoA3apg9\nq/QHF0IIIdQMZfzW6TOHNB8AAACAccoZ0AAAAAAAROEMaACAyinjbywahjK+v7EAAADGFGdA\nAwAAAAAQhQIaAAAAAIAoFNAAAAAAAEShgAYAAAAAIAoFNAAAAAAAUSigAQAAAACIIj3aEwCi\ny0/dO+r486KODgAAY0DD7FmlP7gnhBBCOoSGkp/SOn3mUKcEAOOCM6ABAAAAAIhCAQ0AAAAA\nQBQKaAAAAAAAolBAAwAAAAAQhQ8hfKNJkyYN5+m1tbW1tbUjNZm3U1dXV1dXVx0p9fX19fX1\n1ZHS0NDQ0FD6p4xUMuWxKFN53eu/NZVIKUTNqMaUavrpS5ESO6W6fveHJplMDvMQqBSpVKrs\nlFdeeeXt7mpoaEilUuVOKmQymQrse2VSstls1aTkcrlcLhc7JZ/P5/P56kipqampqampjpTK\nLKnKSKmmtwkpUmKnlKGpqWlkZ/KWmpubqyalpaVlLKe0traO7EwY1xTQb7RgwYLyntjY2JhM\nJru6urq6ukZ2SotrampKJBKdnZ2FQsR3jUqmdHR0dHd3x0spvu5XQUoikSi+H7e3t/f09ERK\nKU/ZvzVlpMRe8VRfSmxSpFRTytL5u1+sxvr7+xctWhRpSiOSMjAw8HZ3dXR09PX1lTFmbW1t\nNpvt7e1ta2srb1ZjJ6Wuri6TyfT09LS3t1dHSnd3d0dHR7yU+vr6dDpdHSnF/4MpFAqdnZ3j\nPaUyS6qyU6rpbUKKlNgppUsmk42NjSGEtra23t7eOJOqUEoqlSqeLtba2lrewcnYSUmn08XT\n+BYtWtTf31/GCPHmxnikgH6jYb4S9ff3x3stCyEMDAwkEonYKUVShqqvry9eSiKRKN6ozL4M\nSWXmI0WKFClSYqQMriiiTq+YMjAwECOl7PffqLMaVKzOY6dU075UMqUCh+5SltqUMozNtwkp\nUmKnJJOvXRs26oJ68I+lent7x3s5MKi3tzdeyTtYQfT19amSGT7XgAYAAAAAIAoFNAAAAAAA\n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\nTz2V/ri8vPzYY49ttbmVlpZKkSJFihQpUqSsWSltciDNNKCLiory8/PjzyiEdvRNlCJFihQp\nUqRIiZpSV1fXComsKVKNjY1tPYe4Kj6+5tCTXrjlkcf6FH9xZvLQMQc/2fWse675dvrTCRMm\nvPLKK+mPy8rKbr755tyCCgoKQggNDQ0NDQ2rPGspa2RKfX191IKSkpVUKpXuR0hZm1OiLnqk\nrJ4peXl5eXl5UlbPlMbGxvr6+txGWLx4cffu3Vf4Uk1NTfoQWn9WLZGfn59KpaSsnimxl4hS\n1uaU9ney055S2sHJjpRstcuTndU8ZdmyZV26dEl6Xqyp2v8V0IUdtw7hhX9W1TU1oGcvr+88\n4L81cNJJJ5100knpjxsaGhYuXJhbULdu3fLy8pYvX97MFTqrLp1SVVVVVVUVL6V79+6pVKp1\nUiorK5cvXx4vpUePHiGEVkuJ9zcmqVQqfeLdOinLli2rqamJlJKXl9etW7cQwtKlS2trayOl\n5Ofnl5eXt1pKRUVFvN5NQUFB165dWy1lyZIl8c75CwsL06uQVkuJdw5TVFTUuXPnVktZvHhx\nvPVlcXFxp06dQgiLFi2KFNFqKSUlJWVlZY2NjVFTSktLO3bs2DopDQ0NUVM6dOjQoUOHNTql\nsrIyt9+NZWVlJSUldXV1ixcvXvneuerUqVNxcXHrpNTW1i5ZsiReSufOnYuKilonpaampqKi\nIl5Kly5dCgsLa2pqli5duqandO3ataCgoLq6etmyZWt6Snl5eX5+fuxTqtZJceKWLSduuaW0\ngxO3Vj49dOLWQq1z4sbao/0/hLC465D1ivL/+Oe56U/rqma+WlEzcM/12nZWAAAAAADtXvtv\nQKdSRWcdOOD9iRc/++bMT2e9c/f5l5X23v3I3p3ael4AAAAAAO1c+78FRwhhi9GXnR1ufOj2\nK29bWtBvwK7XnXl0fqqt5wQAAAAA0N6tFQ3oEMLg0Zt0YcgAAB8FSURBVKcOHt3WkwAAAAAA\nWJu0/1twAAAAAADQJjSgAQAAAACIQgMaAAAAAIAoNKABAAAAAIhCAxoAAAAAgCg0oAEAAAAA\niEIDGgAAAACAKDSgAQAAAACIQgMaAAAAAIAoNKABAAAAAIhCAxoAAAAAgCg0oAEAAAAAiEID\nGgAAAACAKDSgAQAAAACIQgMaAAAAAIAoNKABAAAAAIhCAxoAAAAAgCg0oAEAAAAAiEIDGgAA\nAACAKDSgAQAAAACIQgMaAAAAAIAoNKABAAAAAIhCAxoAAAAAgCg0oAEAAAAAiEIDGgAAAACA\nKDSgAQAAAACIQgMaAAAAAIAoNKABAAAAAIhCAxoAAAAAgCg0oAEAAAAAiEIDGgAAAACAKFKN\njY1tPYfVSENDw8KFC3N777333ltRUTF48ODtttsu2Vl91cSJEysrK3faaaeBAwfGS7nrrruW\nL1++yy67bLPNNvFSbrvttrq6ut12223AgAHxUm655ZYQwp577tmvX79IEQ0NDb/61a9CCMOG\nDdt0000jpdTW1t5+++0hhOHDh/ft2zdSSnV19Z133hlC2HfffTfaaKNIKZWVlRMnTgwh7Lff\nfr17946UUlFRce+994YQDjjggF69ekVKWbx48f333x9COOigg3r27BkpZcGCBQ8++GAIYdSo\nUT169IiUMnfu3EceeSSEcMghh5SXl0dK+eyzzx599NEQwmGHHda5c+dIKXPmzPnDH/4QQjjy\nyCM7duwYKeWjjz6aNGlSCOHoo48uKSmJlDJ79uzJkyeHEI477rjCwsJIKR9++OFTTz0VQjjh\nhBPy8/MjpcycOfOZZ54JIZx88smRIkII77777vPPP19QUHD88cfHS5kxY8YLL7xQXFx8zDHH\nxEuZPn36Sy+9VFpaetRRR8VLefPNN1955ZWysrIjjjgiXsobb7zx+uuvd+nSZcyYMTkPkukX\n4KJFi+rq6nIYcNq0ae+8806vXr0OOOCAnGe1Us8+++x7773Xp0+fkSNHxkuZOnXq+++/v8km\nm+yzzz7xUqZMmTJr1qxNN9102LBh8VImT548e/bsLbbYYq+99oqX8vjjj3/88cf9+/cfMmRI\nvJTf//73n3766dZbb/39738/Xsojjzwyd+7cbbfdduedd46X8uCDDy5YsGC77bYbPHhwvJTf\n/OY3n3/++Xe+850ddtghXsp99923ZMmSHXfccfvtt4+X8utf/3rZsmXf+973Bg0aFC/lzjvv\nrK6ujn3idvvtt9fW1sY+cZswYUJjY+Mee+yx5ZZbRopoOnEbOnToZpttFimldU7campq7rjj\njhDCD37wg4033jhSSlVV1d133x1CGDlyZJ8+fSKltMsTt4MPPrh79+6RUubNm/fwww+HNeHE\nLd7ZK2ucgraewOolLy8v5/J47rnnPvvss969e++9997Jzuqrnn766YULF26yySZ77rlnvJSn\nnnqqoqKiX79+UX9ZPPnkk9XV1d/61reipkyePLmhoWG77baLl1JXV5duQu24447xUqqqqtIp\nu+yyS7yUJUuWpFOGDBkSL2X+/PnplGHDhsVLqampSaeMGDEiXsqyZcvSKQceeGC8lM8//zyd\nMnr06KgN6HTK4YcfHi/l448/Tqccc8wx8VJmzZqVTjnxxBPjpcycOTOdcuqpp3bt2jVSyowZ\nM9IpY8eO7dChQ6SUN998M50ybty4eG3uV199ddKkSalU6sILL4wUEb78DVNUVHTuuefGS0nX\nS1lZ2TnnnBMv5ZNPPpk0aVK3bt3OPvvseCnpqlx33XXPPPPMeCn//ve/J02a1Lt379NOOy3x\nwXMuwHQVDxo06Ljjjkt2Sl/17rvvTp48eYcddoj6Hwlvv/321KlTd95558MPPzxeyvTp06dN\nmzZkyJBV+Y+ElfrrX//68ssvDx06dPTo0fFS/vKXv7zxxhshhB//+MfxUl577bXp06cXFhYe\neOCB8VJeeeWVd999t2PHjvvvv3+8lJdeeumDDz4oLy8fMWJEvJRp06Z99NFHPXv2jPpfKc8/\n//wnn3yy/vrrDx06NF7KM888M3/+/I033jjqf6VMnTp1yZIlm2++edT/SpkyZUpVVdWAAQNi\nn7jV19cPGjQoXkpDQ0N6wbPDDjvES1m+fHk6Zeedd26FE7fdd989XsqCBQvSKUOHDo2XUltb\n2wonbpWVlemUAw44IF7KokWL0ikHH3xwK5y4HXbYYfFS5syZ03S1jT4yq84tOAAAAAAAiEID\nGgAAAACAKDSgAQAAAACIwkMIAQAAAACIwhXQAAAAAABEoQENAAAAAEAUGtAAAAAAAERR0NYT\nWIO99tDND/3pbx9X5PfbarvDTjlmi06FzW9PNiXttp+M6viLiWN6dliViEwpDXXzn7jrtj++\nMXPekob1N95i5Jjj9txmvcRT6pbNvv+Xd7z07qxFtUUbbjro0BOO236DVTqc5r9itUvfPvHI\n87/zy/uPX69j4in/eeXcY6+c8dXdjpr48P7dS5JNCSF8MO23Dzz12nsffNq1d78fHn3a3t/q\nluyxVMy59tAT//S13Yo6bvu7316aYEoIobHu8ycm/mrKK+/Or8rfaLNBh8T57jfUzPv9Hbc9\n+9f3FtR16LflwGNOP36j0vxVSUn7ZvUlW/uZUprfnkhK4rW/wpTEa3+FKU2Sqv0VpiRe+ytM\nCUnX/jdTYtT+N1NChNpfYUqytd9MXSRY+yutvkRqP1NKsrWfabRItd9y1m+rHmHxlm1KsHjL\nMsXiLdsUi7dsUyzeskoJFm85pazwGJNNWUsWb7QPGtA5+uCh8694cNZhJ5/Sv7xu8m23XHBG\n1QO3n5Gfyrg92ZQQQmismf7sXZMXVP042rFMuWjsvR+UH3vqGZuX501/9rc3n39K/YR7hm6Q\n4z//mVIeHHfeH2sG/PS089Ypqn76/huvPOvSO++/omuuX7KVfP0b63497sq5NfW5Db7SlEXT\nF5V2H3HqsQOa9txoFf4ly5Qy/293n3n9pKFHnnzAmM5/f+7BCRedsf59d27dIcdaXmFKh24j\nzjln8Fd3e/Xum94fsHfix/Kn6392z1/Kjjn1jE07Nb7w6C1XnHnRrfddtU5hjn+ZkSGl8d6x\npz9VtcUJJ/1s/aKqqb+9ZeyJn0286+KOOZdlWHH1JVv7mVKa255cSrK1nykl2drPlPLlS8nU\nfqaUZGs/U0qytb/ClMRrf4UpISRc+xlSEq79THWRbO03V33J1X6mlGRrP9Noydd+NqzfEomw\neMs2xeItyxSLt6xTLN6yTbF4yyolWLxln5LhGBNOWRsWb7QfjeSgofq4A/c//ZEP058t//yl\nESNG3PXviozbk01pbPz0xasPPnC/ESNGjBgx4r7/LItxLHXV/95v5Mir/jKvab+bDz/oiLNf\nTjalevGfR4wY8fCnXxxC9ZI3RowYceunS5NNaXr93d+eM+rYK1YpotmUF3465rir38595Jal\nXD3mRyfd+taXu9VdPe5nE96cl2mYnFO+auE7D/zo0PMX1DYkm9LQsPxH+40c9+fP0tvrqv53\nxIgRV89anGzK0jkTR4wYMW1BVXp7ffWnRx6w31VvLcgxJVP1JVv7mWs8ydrPMFrCtZ8hJeHa\nX9lXJpnaz5ySZO1nTkmy9lv2s7SqtZ8hJeHaz5CSbO1nrItEa7+Z6kuw9jOlJFv7mUZLvPaz\nY/2WRITFWw4pFm9ZpVi8ZZti8ZZDisVbVikWb1mnWLzBN7gHdC6WL3r+05r6vfdYP/1pcded\nBpUVTX/us0zbk00JIfQYePgvrrvppuvOW+VDyZhSV/XBxptssm//rl/umBrYubh2ybJkUxob\nl++yyy67f/m3TvnF64cQahsak01Jf7r0X09e+Lv/nHXlUbkN3pKUtxZXlw/qWl+15LO5i3I8\nhpWl1C6b/uLi6mEHbf7Ffqn8sZdfdeKgHokfS5PGus+vvOTRUZeO7VaQ4/9wZk5pbGgMhSX5\nXx5Kh7xUqj7p7/7S2e+n8jt8v9sXP2N5ResN7lz84ZRPcksJGaov2drPlNLM9gRTkq39TCnJ\n1n6mlLSkar+ZlARrP1NKsrWfKeWrVr32M6ckWfuZUpKt/Ux1kWztN1N9CdZ+ppRkaz/TaInX\nflas3xKJsHjLNsXiLdsUi7dsUyzeckixeMsyxeItu5Rg8Qbf4BYcuaitfDuE0L/Df/9Ip3+H\ngilvL67dY8Xbk00JIRSUrbthWaivSeD/DzKlFB++2w037Na0cfncN+/+ZOlGR/VLOmXI2LFD\nQgg1C+d+unDea0/eWtR5qzHr5vgHI818xRpq51017u6dT/3l9l2Lchu8JSlvLqtteOmmH9/8\nXm1jY0GHniN/ctqRQ7dONqVmr9dDCBv9+/nzr3jy/dnzuvXpu8+hJ+/77Q0SP5Ymsx674tNe\no360SafcIppJSaU2O2OfLa6//qaXzzmyb+eGPz18bcm63z5qwxyDMqWU7NyjsX7Gm0trtysr\nDCE01i9+s6Jm2b8+z/lwVlh9LflKrnpKM9sTTCnukmTtZ05JsvYzpYREa7+ZlARrP1NKzZKX\nQ3K1nynlq1a99jOlpFIlCdZ+ppSS9ZKs/Ux1UVv5cEiu9pupvgRrP1NKcZc+CdZ+MynJ1n5W\nrN8SirB4yy7F4i3bFIu3bFMs3nJIsXjLKsXiLduUYPEG36ABnYuG6soQQo+C//4q6VGYX7+s\nOtP2ZFNyG21VUma9Nmn8NXfXbrT3uGG9I6VMv+TMS2ctTqUK9z/zmpzvJdRMytRrx3024KjL\ndlmvsT73xWvzKfU1cxbWh026fvfSu85bp7j69SkTr5lwbmnfe0dt3iXBlLrlC0IIv7j66YOO\nPWzMesXvvfDoHZf+tPDW+4f2yuUhACv9vtTXzLnyoQ9G33JxDoO3JGXwUT976oUTrvr5aSGE\nVCrv4Isu6pnrfcQypXTe+Pgdur5y3fk3//TIfcrzlk579NaFdQ2FDTWrckQtT082pfWteu2v\nVCK134wEaz+TZGs/k2Rrf6USqf1mJFj7mcSr/a/WRf2/YtV+K1RfMynJpq9wtNi1v0LWb8lG\nWLy1MMXiLdsUi7dVYfHWEhZvObB4yypl1UfLNqW9Lt5oTzSgc5FXVBpCWFjX0DH/iz9CWVBb\nn9+1KNP2ZFNWcfJZpdQs+XDiddc+OX3hzj884eQxe3fIy/G3zEqP5Ts33PdECHNnTjvj52c0\n9rj7qK3KE0yZ+9otd87oOeHXw3KbfAtT8os2eOyxx77cq9MuPx77zyl/mfyrt0Zdt0uCKXn5\n+SGEXS+4YP9+XUMI/bbc9pM///i3N7019ModE0xp2uGTqTdWdNp7n3VXaZGUKaW+Zs4FJ55e\nMfjQXx2yV8/S+n+88j+XXHJyw2V3HDogye9+Kq/D2Bsvufvmib/6xXn1HXttv9fRB8+56fGy\nJBeXzaQnm9Kakqr9lUqk9jNJtvYzSbb2M0m29lcqkdrPJNnazyRG7X+zLioi1H7rVF+mlGTT\nmxktau1nYv2WYESweGtxisVbtikWb7mxeGs5i7dsWbxlm7Iqo2Wb0r4Xb7Qn7gGdi8KOW4cQ\n/llV17Rl9vL6zgO6ZNqebEpuo+WQUvnpi6ccfdZrNVtffcevxx4+dFV+kWVKWTzzuT9Merlp\nY89+u43sVvzSb2YnmzLvhbdqKmYcc+D+I0eO3O+HR4QQJh83+kejz0825Zt7Dlq3tHbp/GRT\nCjpsHkL4Xp///sHLd3t1qJ6f442xVnYsjfc9OGuzMSNzG3ylKQtn3Pb2gnDliftv0K2ssLTL\nNkMOPXmj0idveSPZlBBCcfmWJ17wi1//5nf33XHzaT8ePKOytvuOud98Ldv0NVGCtZ9JsrWf\nSbK133KrUvuZJFv7K5NM7WeSbO03I9naX2FdJF77rVB9zaQkm77C0Vqn9jOxfkskwuIt2xSL\nt2xTgsVb9izeVpHFW/Ms3rJNSdxau3ijPdGAzkVx1yHrFeX/8c9z05/WVc18taJm4J7rZdqe\nbMqqz79FKY11V551Y/HuJ9x++Un9epRESqmreWXi3TfPrW34Yr/GuhmVdSXrlSabsunh4677\n0rXXXBRC2Oncy6++4sRkUxZ/ePuhY46eU1P/5Y6NL35S2aX/FsmmlJTv1Sk/7/kPljSlvPBJ\nZdkmfZNNSX9aNf+x1ypqf7LTqv7IZUrJKyoKjbWL6hua9vy8qj6vqDDDMDmm1Nd8es4550yZ\nvzy9vWruU3+tqBk6pLXqaE2UaO1nkmztZ5Js7WeSbO1nkmztNy+p2s8k2drPJOHaz1AXCdd+\nq1RfxpRk0zOM1jq1n4n1WyIRFm/Zpli8ZZti8ZY1i7csWbxly+It25SErcWLN9oTt+DIRSpV\ndNaBA3428eJne43dqmvdpAlXlfbe/cjenVKpsMLtyaa0zrFU/mfi9IqaI77V6a+vv9a0c0Hp\nFttvk8vfWWT8ivU6oX/xcedccefJB3y/S/7yv0y9Z0Z12YWH5/ivcqaU/FSnzdb9Yp/0rcS6\nbtS373o53jU/U0pew6Gb5z8z7sJbTz5kz275y//6zP3TKjv/4oQcnwDQzM/Y2GF9L7nsog1/\nesTWPYunT71vWkXxhT/dKtmU9KufTHmhsGz7zb582HHOMn/3TxzU+YRxF95ywsF7rVva8O7L\nT9zzWfXR13872ZT8VKetqufcc+71+Ufuu17e/IduuavH9scOLU94cdA61do6Kv9zX4K1n0l5\n/yRrP5OSdTdKsPYz6bxxkrWfSSq/S4K137ykaj+T8v5J1n4m+UW9Eqz9ZuoiwdpvnerLlNK/\n5x8STM+UMmir1qj9TKzfEomweMs2xeIt2xSLt2xZvGXL4i1bFm85pOQ2YFYpa8PijfZEAzpH\nW4y+7Oxw40O3X3nb0oJ+A3a97syj0zdhz7Q92ZRkrTBlyQcfhBDuGX/VV/fs3Gfc/bfkeMuq\nFR9LQfcLrhl3+22/ufmqZ5aFDhttss054y8a1Dn3GzC14Vcs5Hf8+Q3n3z3h3luuOn9ZKOu7\n2bYX3XzxFqW5l1imYxl4/LWndbzhsd9MuH9hbZ++W5197bmDOkX5iv3p+U879z0055FXnlLQ\nfdxNl//m7vsmXn/ZwuV5G2zY75SLf7lX39zX/ZmO5dArLq6+4db7b7w4r3zDrXcaPfaYfRM5\nqBamr3ESr/0Vyku69ttQKunazyTZ2m9GgrW/QnlJ134mCdZ+M3WRYO23TvVlSrlmdJLpzRxL\n29a+9duqR1i8ZZ1i8Zb9sVi8ZcXiLVsWb9myeMshJccRs0lZSxZvtBupxsbGtp4DAAAAAADt\nkHtAAwAAAAAQhQY0AAAAAABRaEADAAAAABCFBjQAAAAAAFFoQAMAAAAAEIUGNAAAAAAAUWhA\nAwAAAAAQhQY0AAAAAABRaEADAAAAABCFBjQAwNrr/Xt2TaVSh85c+M2XpgxeP5VKPb+4uvVn\n9U0PnTe6zzplPTY7aqV7Pti/R2n5npGmseRf52X6cgEAACukAQ0AwGpt2Wd3HHz5g3k7HHrl\nRYd889XZj++RSqV+v6Cq9ScGAACsVEFbTwAAAJpTNW9yCOH4W685tk+ntp4LAACQHVdAAwDQ\nSmoW/++Lz79Yn+W7GhsaQgjFeakYUwIAAKLSgAYAoEUqPnz6Jz/cu/9GPTv26DN4yL7XPvGP\nppfO7tO5c5+zv7rz3y/ePpVKza6uDyE82L9H+abXf/r8tZusu8WuQ3ZdWt/Y8sH/MGCdngMn\nhRDO6t2p4zoHfe1dV2zSdZP9nwshHNijw1cnUPXZyyeO2merDbt37L7B4BEnTvussumlmkUz\nfnbY/oP69Skt67bloCEX3/7UCmbzpfen3LDv7jv06tKx77cGH3H6jXNrGr766ruPTzhg54G9\n1+lSXFa+af/tTr7ktmUNjSGEf0zYKZVK3Txn6Vf2bdijvLSs18rvYQ0AAO2MBjQAACs37/Xx\nm/Yf/sDTH+044ic/O/aHnf7z57H7D9j3gj+18O01S1/f+Qfn9Bp+6LhLri79xrXMzQz+vdsf\nfmjCjiGEY+9/7PGHz/3aG0ff8/t7LhgYQjjv4Sceu/+Y9Mb66n/vOWCPd0s2P27cpaceuO0b\nk28bucNP0p3jpR//ftsNv33do3/bds9R55117NZlsy46fvh3jn5ghXP+242j+//gjOfebtjn\niFMP2nWLN+46e4eDHml69T8vXzbwgFOem18++vgzx510yOblFRMuPGHwiU+HEPoecmleKnXb\n1e807bxk9i+eW7R80IVnryAGAADatVRjYzPXfAAA0J69f8+uWxz5YjM7PLdo+e5dikNo/HHP\nsscq1pk2+x87rVsaQmis+/ysbTa7fuayaQuX7Nql6Ow+nW8NJyz599VNb/z7xdsPuujN/11e\nt3Fx/oP9e4x+b8HI215//LjvrChkJYPPmz6y58BJ13xcceYGZd988+zH99hk/+cenV95QPfS\nEEI667uXTHv1/O+nd3ho5MYHT/rXnxZV79ql6MIB3a+cve7zs9/caZ2SdPRDJ2578K0zxs9e\nctZG/+cG03VVM9frMqCy89A3Z/9hy7LCEELV3Je322S39yprD3lvwQP9ut2zbc9jZhZ/sHj2\nRsX56aH+X+8udy7frXL+EyGE0/t0vq1yl8oFk9OjTT14s2GPfPzG4ortywpb8G0BAID2wxXQ\nAABru/5HnXLWNxy4fsemHarm//6ReZVbHPNAukEcQkgVlP/8t0c2NlRfNPXjlkTk5Zfde/S3\nV/jSqg/+Nan80kd/tnPTp9uP2iiEsLShoa7y7cv+8fmmY+78svscQkgdMH5iCOH+W//5tUHm\n/XXcgtr6vSdO2PLLlnFpz+/dd8aAph1++MfpH82e8WX3OYTG2oJUaKz/4l4fx527TdXCJ+/6\nbFkIobFh2WmTPuq+9ZW6zwAArIUK2noCAAC0sUFnXzy+X7evbZzy0gOPfrIs/fHyz58KIWz6\nk82/ukPXzY8M4bpPn/4sHNR3pRGFHbftkr/ipwiu+uBfU1S23QZF+U2fpgq+yF2+8KmGxsb3\nbt8pdfvX3/L53z//2pZ5f/4ohHDo4J5f3bjp4TuEy/6e/rjzer0aP/z7Ew/+bcaMGdPf+tur\nL73870U1JV2/2LPv6EvzTtrj5hvfO/rK7edPP/sflbWH3DAq2wMBAIB2QAMaAICVagwhpFL/\nt4OcKgwhNNau+H5u9cvr/8++eSUr3C23wZuXSmXIyisKIWwzbuLVu/b62ivFXQZ+fZAVtctT\nqf/2tZ+59MAfXPRYY4deuw3fZ/e9xhz78xs+PHL30+c1Dbj7ab3Lbr3rqnDlI8+c/nhB8YY3\n7bJeDscCAABrOg1oAABWoqTrXiHcNeu+D8OgdZo2Lpn16xBCzyFN1wjXffUtH744N9HBE1BS\nPjw/dVrVvzccOnRI08aGmk9efOX98s07fW3nnrtsEsIbv3193kH7bNi08aNH30h/ULv0b/te\n9Ng6u4+fOfWMjl8+U/Ff/7eHfux52153/O/un/PBGS9/1nv4Y90L3PsOAIC1kXUwAAArUbrO\nQft1L33v1jFvLFie3tJYv/iKUXek8orO3XfDEELH/LzlC/5nbm1D+tXKT5465tX/JDV4SzS0\n4FLpgtLNz9uyfNZDo5/9pLJp45Pjhu+2224v19R9bece216+TmH+U0ec/H7lFy/VLPr7EZe9\nlf64dtmb1Q2N6+22Z1P3ednHUy7+15IQGppG6Dvq8vxU6pzjR8yrrf/Jtbu08EAAAKCd0YAG\nAGCl8m574rzOdf+7c99vH3/6eVdecOY+Aze59p2Fe58zeWh5cQhh/2O3ra16f+Buh91w693X\nXDx2+34jdzpp85UO2sLBm1fYuSiE8Kurb77/gVdXuvOZU365ceHnwzbtf/Sp54y/+vJj9/vu\niGvf2v6k35zQq+PX9swv2WzqtaNqFkwe2HenE8688IIzjv9u38Fz+v8w/WrpOgfvvU6H6Zf/\n8LgzLrzj7lsvPuuIrbc6pG/fsuolL5/w88sW1zeGEIq67Hp6n05zJr9X0nXIeZt1/fpUAABg\n7aABDQDAyq37vXGz3p486vvrTnv01ktveWhhjx3H/+Gdpy7fM/3qtuOevv38IzvPefbnZ57z\n8LT3Rk148cHTRw8bNqw0b8UPHsxq8JW897vj9/v2Ji/fcMF51z690p07bTT67f/984kjt379\nf+4975LrXvqo6ILbJr/yy9Er3HngTx9478nrd+sfnrhr/D1P/W3AoZe8+exVw4YN26ZjYSqv\n46N/+cNPhvScfM+1Z5137Qv/rL/upQ//+MJjR+/33demPVf95fXYx5y3TQih34m/sOYGAGCt\nlWpszOXRLgAAQPP+Mm7gDle99di8yv26N/MMRgAAaM80oAEAIHkNdfMHd9vgvfJTFv/r2rae\nCwAAtJmCtp4AAAC0Nyf99Iz57/zu9YqaY35/RlvPBQAA2pIroAEAIGHb9+357ueFB55y4/2X\n/qit5wIAAG1JAxoAAAAAgCg8kRsAAAAAgCg0oAEAAAAAiEIDGgAAAACAKDSgAQAAAACIQgMa\nAAAAAIAoNKABAAAAAIhCAxoAAAAAgCg0oAEAAAAAiEIDGgAAAACAKP4/Pu71hAv0zrkAAAAA\nSUVORK5CYII="
     },
     "metadata": {
      "image/png": {
       "height": 480,
       "width": 960
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic %>%\n",
    "    mutate(type_of_weekday = ifelse(weekday == '6 - Sat' | weekday == '7 - Sun',\n",
    "                                   'weekend',\n",
    "                                   'midweek')) %>%\n",
    "    ggplot(aes(start_hour, fill=member_casual)) +\n",
    "    labs(x=\"Hour of the day\", title=\"Chart 06 - Distribution by hour of the day in the midweek\") +\n",
    "    geom_bar() +\n",
    "    facet_wrap(~ type_of_weekday)\n",
    "    "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4f6ce3ff",
   "metadata": {
    "papermill": {
     "duration": 0.07086,
     "end_time": "2023-04-14T12:07:07.322389",
     "exception": false,
     "start_time": "2023-04-14T12:07:07.251529",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The two plots differs on some key ways:\n",
    "* While the weekends have a smooth flow of data points, the midweek have a more steep flow of data.\n",
    "* The count of data points doesn't have much meaning knowing each plot represents a different amount of days.\n",
    "* There's a big increase of data points in the midween between 6am to 8am. Then it fall a bit.\n",
    "* Another big increase is from 5pm to 6pm.\n",
    "* During the weekend we have a bigger flow of casuals between 11am to 6pm.\n",
    "\n",
    "It's fundamental to question who are the riders who use the bikes during this time of day.\n",
    "We can assume some factors, one is that members may are people who use the bikes during they \n",
    "daily routine activities, like go to work (data points between 5am to 8am in midweek), go back from work (data points between 5pm to 6pm).\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b763c361",
   "metadata": {
    "papermill": {
     "duration": 0.070983,
     "end_time": "2023-04-14T12:07:07.464279",
     "exception": false,
     "start_time": "2023-04-14T12:07:07.393296",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"analyze-code-data-rideable\"></a>\n",
    "#### Rideable type"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 26,
   "id": "70db3cab",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:07:07.610501Z",
     "iopub.status.busy": "2023-04-14T12:07:07.608793Z",
     "iopub.status.idle": "2023-04-14T12:07:08.818303Z",
     "shell.execute_reply": "2023-04-14T12:07:08.816857Z"
    },
    "papermill": {
     "duration": 1.283988,
     "end_time": "2023-04-14T12:07:08.818818",
     "exception": false,
     "start_time": "2023-04-14T12:07:07.534830",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 3 × 6</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>rideable_type</th><th scope=col>count</th><th scope=col>%</th><th scope=col>members_p</th><th scope=col>casual_p</th><th scope=col>member_casual_perc_difer</th></tr>\n",
       "\t<tr><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>docked_bike  </td><td>2558260</td><td>73.312263</td><td>56.35479</td><td>43.64521</td><td>12.70958</td></tr>\n",
       "\t<tr><td>electric_bike</td><td> 611406</td><td>17.521111</td><td>60.25685</td><td>39.74315</td><td>20.51370</td></tr>\n",
       "\t<tr><td>classic_bike </td><td> 319873</td><td> 9.166626</td><td>77.86590</td><td>22.13410</td><td>55.73181</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 3 × 6\n",
       "\\begin{tabular}{llllll}\n",
       " rideable\\_type & count & \\% & members\\_p & casual\\_p & member\\_casual\\_perc\\_difer\\\\\n",
       " <fct> & <int> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t docked\\_bike   & 2558260 & 73.312263 & 56.35479 & 43.64521 & 12.70958\\\\\n",
       "\t electric\\_bike &  611406 & 17.521111 & 60.25685 & 39.74315 & 20.51370\\\\\n",
       "\t classic\\_bike  &  319873 &  9.166626 & 77.86590 & 22.13410 & 55.73181\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 3 × 6\n",
       "\n",
       "| rideable_type &lt;fct&gt; | count &lt;int&gt; | % &lt;dbl&gt; | members_p &lt;dbl&gt; | casual_p &lt;dbl&gt; | member_casual_perc_difer &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|\n",
       "| docked_bike   | 2558260 | 73.312263 | 56.35479 | 43.64521 | 12.70958 |\n",
       "| electric_bike |  611406 | 17.521111 | 60.25685 | 39.74315 | 20.51370 |\n",
       "| classic_bike  |  319873 |  9.166626 | 77.86590 | 22.13410 | 55.73181 |\n",
       "\n"
      ],
      "text/plain": [
       "  rideable_type count   %         members_p casual_p member_casual_perc_difer\n",
       "1 docked_bike   2558260 73.312263 56.35479  43.64521 12.70958                \n",
       "2 electric_bike  611406 17.521111 60.25685  39.74315 20.51370                \n",
       "3 classic_bike   319873  9.166626 77.86590  22.13410 55.73181                "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic %>%\n",
    "    group_by(rideable_type) %>% \n",
    "    summarise(count = length(ride_id),\n",
    "          '%' = (length(ride_id) / nrow(cyclistic)) * 100,\n",
    "          'members_p' = (sum(member_casual == \"member\") / length(ride_id)) * 100,\n",
    "          'casual_p' = (sum(member_casual == \"casual\") / length(ride_id)) * 100,\n",
    "          'member_casual_perc_difer' = members_p - casual_p)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 27,
   "id": "0314b395",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:07:08.975445Z",
     "iopub.status.busy": "2023-04-14T12:07:08.973965Z",
     "iopub.status.idle": "2023-04-14T12:07:12.413929Z",
     "shell.execute_reply": "2023-04-14T12:07:12.413003Z"
    },
    "papermill": {
     "duration": 3.517937,
     "end_time": "2023-04-14T12:07:12.414107",
     "exception": false,
     "start_time": "2023-04-14T12:07:08.896170",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAB4AAAAPACAIAAABb1/PuAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdZ3wVVcLA4XNz00ghdBQUFBAUELGAYlfUtSKCvZe1rH2t6AIWFuwV1LX3gnWt\noO6ylte21rVgR7ALSIeEtPt+CMaQRAiawxV8ng/+yMmZmTNzb4Dfn3FuIpVKBQAAAAAAaGwZ\n6V4AAAAAAAArJwEaAAAAAIAoBGgAAAAAAKIQoAEAAAAAiEKABgAAAAAgCgEaAAAAAIAoBGgA\nAAAAAKIQoAEAAAAAiEKATrdU+bN3XXXwrpt36bBqfk7e6mut23/nQRff+1Ll4rM+vX3LRCKx\n5e2fpmeRv1eJOjJzCtqv2W3QEac//u6P6VrVCe0LE4nER8Xl6VpAuhRPe/6w/hu2Lszt0Hto\nuteSBks9/V/3xri1W8tEInHPtAWNsUYAAACA5U2ATqeFM1/bZ+PVdzjo5DuffOnrWWWt2hRO\nnfTBhHGPnLn/5h367fvB/N9vwZz+9gNH7L55+9ZF2fnNOvfa+uyrn6xYfEKLrGTdOlytZbdb\nG3Exq3fuUq1ZcuG3kz955JZLd1+//QGXTKg57Yn12yYSiVbr3NeIh46959/D4RpuZP/Bt014\nq7xVj6037pTutaRBY53+7/b1BQAAAPgVBOi0KS/+eLce/e9//ftVNt7v0Zc+Kp4zfcpXP5SU\nzn/t4dFbr5r/zatjt97ib6nlu6Sy+W8nEomijsOXPO2750eu0WffWx57afrCwu7tcie99/wF\nJ+267v7X1ZyTk/sLspMhhKyivEZc9qP/m/jpT6bPn//F+/+99oy9M1Ol95zR/88PTf7Vu23g\n1Yjtd7KMpUuVXvT+jKy8tb/+/I07rj+83ikrzLn8Cg04fQAAAIA/oMx0L+CP6/7Dd3n2u/lt\nNz31kxcuKUwmqgYTySZ99zj+qU27dl9jl8lvX3zK26ddsX7r9K6zlsqyqTvtev78isojrnvu\nmqO3ykmEaR89tcvGg16/99jj/zJwzBarVk37bu78+rZOnbd5uxGvp256bLdY60tkr9Gjz18u\nGtt3jfKNjn34joN3GTXgvTZZGSGEDS684b5ZJTlN+zX6MePt+fdwuAZKVRaXp1J5eT3zMxLp\nXksaNOLp/z5fXwAAAIBfxx3Q6bFw9nOH3j8pI7PZ2CdHVtfnak3a7nDvMWuHEO4/8fnYK1nw\nzQdPP/7klIUVS58aQgjhy6cO+9+80tbrX3rTMVvlJEIIofXaOz/8wJ4hhLsPv3HJ2354897n\nvvT9Pje8sOsqjXkHdL02/Mv9B7XNL1sw8S/Pfl010u5Pu++zzz4Dd+rQKPuved0ad89LtZwP\nx3Lm9QUAAABWJgJ0enx6y5lllalV+l29VbOceif0Hn7ZlVde+beDC2qNz/382SMHbbVKy6Kc\nwlY9Ntxq1J3P1ZpQWTZ17FVnbblRr9XaNMvOb95p7V4Djxr2wudzFzv67VsmEonjP5/15o3H\nrLpGrx0H7Prg9OL71mmVXbBBCGHOlyOW8Jjm5857I4Sw2RX71Rxs3/+aZpkZsydd+E3pL4bs\n4ulPb3PsI6vvdPndh3T9pTmNKnnmWT1DCC+PeL3q67of5Djn8xfPPnTX9dZeszAnr92aa/cf\ndNy496ZXfaveq1Hvdat3zyGEVKpy/JghW3Rfo2mT3I7rbLjHAcf8861pNSe88pfuiURi8IeL\nfVhiqmJ2IpHIb73XUpex+OEq/3PnqH0HbL9Oxzb5rVbv13/XE8654ZvF/1GhaqsjPp1Z/MNL\nJ+2//WptmucWtu6x0TYX3fNiAy7mUvb/r506ZmQ2CyEsmP5gIpEobH9C3V3UPZfJj+ycSCTW\nGPBkrZkfXrtZIpFY+/DnQgjDOxZlNekcQnjuxvO2XW+torwma/bceJ/DT/rXp3PqHmLyC3cf\necAeG67TsUle87XW7XPsedd/XucT/5bwokc9/WpLfWMs9RNHP3ngzNxkRk5hr8e++PnnOtq5\nAwAAAPw2KdLhhh4tQwjbPTa5gfM/uW2LEELPM4e1z0nmr7rWdrsN2Kx3+6pXcP/bPv55XmXJ\n0Ru0CiFkZDbrtWG/Lfv16VCUHULIyu8xYUZJrb3tPfaszEQiu2nb9Tbe6p/Ti9+5/PwzTj0s\nhJDTdLMhQ4acf9kb9a5k5xZNQggPTltQa/z4dgUhhCu/mftLp3Du+q2TWS1fmbOwgafcEFVX\n4K15pfV+d9akM0IITVoNrPqy6qy3uO2Tqi9nf3p3m+xkCKHZGutsttXm3dcoCiEks1qOnTwn\nlUrVezXqvW5191x1KUYeuX4IIbfFauv37paXzAghZCQLhj/5VfXyXj5mnRDCoInTa665snxW\nCCGv1Z5VXy5hGdWHS6Uqrzhg3RBCIpFo22ndTXt3rTpc0067vj+/rHrPVVvt//KDPQrzBv7l\nzOvvumf0had3LcgOIRxY8y1Uj6Xv/9NbLhxyxskhhKy8bkOGDDln1KN191L3XMrmf9AkI5GV\nt05xxWIzj2pXEEK45pu5qVRqWIemmbmdHjm5X0Zm0cCDjr3gonMPHrRNMpFIZre99o1pNbd6\n6dIDqj74sk3HdTbr27N5TjKEULDads9NL66es+QXPerppxr8xqj1+t7StUUI4e6p86u+/OyR\nvzXJSGTld3/489nxzx0AAADgtxKg02Ov1nkhhGGTZy99aiqV+qlJhRA2Omb0vIrKqsEJF/8p\nhJDXes/qaT/894gQQsFqAz+Yvig3V5bPHr1vpxBCrzNer7W3rGRG/xNHTyv7Of6VznsrhNC0\nw7AlrKQgmRFC+K60otb4PWu3DCEMen96vVtNe2tYCKHXKS808HwbaMkBuvjHR0MImbmdqr6s\n1fXOXKMohLDn6Od+OpPyf57ZJ4TQZsNbq76uezV+6brVG6ATiaw/X/Hsol0Xfz/ygA1CCJlN\nukwqLq8abEiAXsIyqg83aey+IYScpr1vfeX7qpGFs987crO2IYQOu9xaa6v85tnHP/xzbv7x\nvYtDCE1a7l7vBVym/dddeV11z+XidVqEEIZ8PKN6ZMG0B0MIea33rvpyWIemiUQymdXy+pe+\nr54z8cFzshKJ3ObbzClf9LMw69PRWRmJrLxu/3j606qR8uIpIw7uEUJo1fus6g2X+qJHPf0G\nvjGWEKAnP3FufjIjK3/tBz6ZVb3beOcOAAAA8Nt5BEd6fFFSHkLokJNcpq1ymm01Ycxx1Z9y\ntvWpDxUmM6qiXpW5nzTZcccdj7ppdPeWi57skUg2PWjkbiGEWe/Nqr23toc/e9XxrTKX4T2Q\nqpg3r6Iykcio+li/moqaZYUQ5k8rqW+7yrP2uCqzSeeHRm7a8GP9dhlZbUIIFaXf1fvdh39Y\nEEIYccRmP51Jcueh1w4ZMuSYQYVL3m0Dr9uag++58eTtFu06t+3Zd71+Quei8uLPjn50yrKc\nxNKNOOnxEMKx48cfuknbqpHspj2vffaF9jnJr8Yd8/b8spqTk4XHjN7j50egtOh5atvsZOm8\n1xtr/8tqr5F9QwgPDHuzeuTDq/8eQuh5xtDqkVSqottRDx+1advqkXUGn3tr//YlM/9z4n9/\nqBp56JCRZZWpg+59+ugduiw609wOf7vl1X3a5k9/54JbflhQNfgrXvRGP/1f/cb46plRvQae\nX5rd5a43X91zraLq8XjnDgAAAPDbCdDp0SIzI4TwY3nlMm215t6jan5iYSIjv3VWRkj9PKHz\nAaPHjRt32Z9Wqx5ZOGPKk7e8GEKoOa1Kx8F/rv3ph0tXtZdEPRumQgihsqyeM/p2wjE3TZmz\n/tAHuuQuW3D/jSrLpocQktmr1vvdnVfJCyEMPOiMx19Z9LDdrIKNLrjggvPOHrzk3Tbwuu19\n4faLD2ScdnW/EMIHoz9owNYNVVEy6Y4fFmQ26XzxJm1rjmc26Xppr1apyoWXf7rYPzysuf/B\ntVbVMjMjpOq8OX7t/pfVan+6LDcj8dVTZ5b/tIRzr/04kci85MhuNaftdXrvWhtuN3LTEMKL\nV30cQgihcsRb05NZra7ZtWPNOYlkwWmHdg4h3P3y1KqRZX3RY5z+r3tjfDPh0l67DJtTXtly\n/WP27lZU4zuxzh0AAACgUQjQ6bFRYXYI4b9fzl/CnKcef+zRRx/9ouTnzzpruVHLpe45VT7z\n+XEPX33ROX/ef48+PdbMb7XmASPfqndmUc+ieseXIJEsLEhmpFIVP9YJzXPnlIUQ8trm1t3q\n2mMeyEgW3nhSz4YcokVW1cNsF9nh6a+WdZHVSue8HELIKuhV73dHTLh+k9XyP37oigGbdi1q\nv/bOex128Q33fzK13ju4F9PA67Zb6ya1Rpr32iaEsOC7TxqyeQOVzn2tIpXKbb5TZp0o3mWb\ntiGELyfOrjlY2HXZbndd1v0vq8y87ud1bV46760LJ88JIcz7ZszjPxY36zJsy6LsmtO2aVb7\nfZXffuMQwsy3Pw0hVJRMmlxSXlE2vcli751EIpHoc9G7IYS5P30I57K+6DFO/9e9Mc7a79zS\nllt2aZL5/cunnPV/31ePxzt3AAAAgEaRme4F/EHtvP2qo26e887lb4dNd6p3Qumcl3cZsHsI\n4d15pSEsunE4I3sp/2Aw57OHtt3i4De/X5DdtN0GfTbaZLfDjz9vo66tn9p06zF1JyeX8QEg\nVTYvyh4/o+SVuaW7tVisCf53bmkIYePmtUNh8fQHRn02u+0mt6yXn9WQ/e9/yKHzK36u2z3a\n5/+KRVb5+on/hBCKuhxY73cL19jn5S+2H3f/fU88+dS/n3tx3IO3jXvwtrOPb3nkRU9c99dN\nlrDbX3fdQghVd4knMmr3x8VmVC5cxj2mQgiJ+m5JT2QmQp170hMZy3bX+7Lu/1fYa2TfMweP\nv2vEO0Nv2fKd864JIWxx2SG15pTXuUe76kKlKktCCKlUeQghM7fTaSfvXe8hVu3ZouoXy/qi\nL4fTX3Scpb0xclpv+cwH49o8eWDXQx66cvcDT/3hmaqHwMQ7dwAAAIBGIUCnR8+zjwg3n/Hl\nE0dPXDCpe149r8JXT54bQmjSauC6Deu2VU7f9rA3v1+w72WP3nDSbtUP65gz+YXGWPIie3co\nHD+j5J7PZu/Wt0ZrTi28Z+qCREbWvq3zas1/7azhqVRqh0t3bOD+x9x0cyOttPLSUe+HEPoN\n7fNLMxKZLXbe/9id9z82hDDt89fvve3mv11w4/WnbbXDwbP3aFnPrdzL5NGpCzZtuthtvDPe\nnhBCaNZz7SVsVTp3SY9jriu7YKOMRKJk5jOVdf53hinPTQ0htOvRbJl2uJz3H0JYfcfLcjOe\nnvzw0Mqb/33qfZOSWS3H7LBarTmP/bCgf7OcmiMz3v5PCKGg01ohhMzczq2ykjNTC88fdUHW\n0gL7Mr3oMU7/170xRrz62GYtc8PBY/8ystV1n/x7x6H/98aFW4aY5w4AAADQKDyCIz2KOp1+\nco8W5Qu/+tPgUQsqa9/dWbFwylHHvhhCWO+v5zV8n6mK2Td/PS8zZ/V7TxlQ81HRP7zwWqOs\nucrWwzYMIbxwxriag9PeGfJ9aUXTjmeuWespz6mFx97zeUay8KI+bRpxDQ3xzo373vrdvKy8\n7v+oUzNDCMXTxq6//vqbbH1i9Ujrzn1OHPGPf3RrnqosffTH4t++gPtPfXLxgYpLTnothLD1\n6d2rvq66r3bWp3NrTpp43YhlOkpmk677tc4rW/Dx0DenLXawkkmnvjUtkZF1SrffFIhj7z/8\n9BSOhbNfPO8/p/93bukqm129ep17zP956hOLD1RedvJ/Qwh9TukeQgiJrDPWalax8JtT/v1N\nrQ0v2b1/v379nppZEn7Vix7j9Jf6xqjXKgVV/0yVvOiZq3IyEm9fusvD3y8IIeK5AwAAADQK\nATptRk24o1OTzK/Hn9Ntm0Meee6NafPLQwghVfrZ/909YIP1J8wqadJq60dOa9Bzk6skkgWr\nZGdUlH77yJfzqgffG3/1Fke+EEIondXQT0tLVSxpZsfdbl03P+u7F44c+fSUqpGyeROP2vXG\nEMKBtx5ba/LsL0Z9uKCssMPpq2Qtt3da5bef/u/mYQdufMyDIYRD7niyTX2Hzi7a/Iv3333t\n+dFDH//5wbuzPht/0ZQ5iUTG3q1+fhjCkq/GEkx5/JADLni86gHelWXTLjiozzVfzM5rs/OY\nnz7OrqhXUQjhzVPO/6500WMcvnnh+oEj3syq9yMef3kZ5172pxDCFdvvet/bP1aNlM2dePyO\nm08uKW+/3bUbF2b/0oYN1Oj7r3sue43sG0K4YI9rQwiDr9yh7iZfPXXYQRc+XnWZKstmXHJI\n39FfzM4u7HN9//ZVEw655YgQwg2DBt7zyk8dNlU67pL9znhswodTu+/YPDcsy4se9fSX+sZY\nssKOB//zmO6VFfOO+tN5qcjnDgAAANAIUqTPzIlj+61eUPVCJBJZ7dfsUPBTLc1vv+XjX86t\nnvnJbVuEELa47ZNae+iUm5mZ26n6y5f/vm0IIZnVcttdBu49aJc+3duGELY97vwmyUQikbnO\nxpvNLa9cwt4qyqbnZCQSiaxN/zTo4L88+0vL/ubfVTvMWKPXFrtvt3GL7GQIofsB19Wd+dpJ\nPUMI6w1541dcnIaoulZrdF272io/PdwgkZGz30X/rjm51llPOGPzqpmr99xom+2269u7W2Yi\nEULY4bxFW9W9Gr903WqNH9+uILuw76idOoYQsova9+nTs2lWRgghM7fTnR/OrN6qdN7b6xdk\nhxByW66z8x57bt2ne05GYr3DbxncKi+v1Z7V0xqwjIoL91onhJBIZK7ebYMt+/SoOlzTTru8\nN7/slxZZrXteVjJ71SVe5gbtv7J8Vgih5srr2dEvvMHK5r+fm5EIIWQX9C6uWGyTYR2ahhD+\nPKBLCCGn+Wp9+q7bLDsZQkhmtbr85R9qznzglG1CCIlEskPX9bbZdou12+eHEHKK+jw/vbh6\nzlJf9Kin38A3Rq1X6pauLUIId0+dXz2hfOFXfQuzQwgHPTAp8rkDAAAA/FbugE6nZuvs/dKk\nL++9+ryBW2/Qvk3T6V9Pb7Fmz/67DD7j0rs++XzCrj+16Ybrd/bTT14/bJMebf73/LgX3/16\n1fV2u+WZD/89ZtjbY6/Yq/9Gq7Zsu+SPoMvIbPmvC4/q2Drv9Rf+9ebHv3jLbbtth01+9d6D\nd+674Ku3n/y/iUXdNj9r9JPv3nVM3ZkPPDQlhNBr347LeiLLZPInH1WbWpy5yupddj/0lH++\n9fU9Z2y7hK22uej5Vx4aM3CLjTJnTnn5+Ze+mpnaZIf9b3nqraeHL9qqgVejrt67Dhy8x/ZD\nnvjwzvOP69ky9cH/JrXp3u+Ao8984bN3D1z75yc2ZOX3fv6d8ScM2qpdzg/PPDV+0rzmJ13+\nxFs3H9ZvwB57DPj5Q+EasIyMM8e++/TN5w3eaYsmC6a8/tnMbpvucOzQ6z6Y+GjP+h4vvuwa\nbf+/dC6ZeT3O7do8hLDmPlfl1vd70rF3vfPIFadvv96qX330WdNOvQcffPwT73z6136LPddl\nz8smvPHI6P0Hbt+0YurLr71f2bLHwWeNmfj1S1vWeLrxUl/0qKffwDfGUiWzV3tw7BEhhPsO\nHfBpcXnMcwcAAAD4rRKpVO0HEAN/HBUL5//446w27dqndxmnrFF0xZQ5130z75h2+TXHh3cs\nGvHlnLfmla6/LJ/GCQAAAMDvRKPcIAmsqJI5+W0Wb77L34Kp910xZU5e632PSfdKAAAAAGhc\nAjSQNnNnzk2WT714j7+GEPqeOzzdywEAAACgkQnQQNqc3bPdmG/nhRDy2vYfe2S3dC8HAAAA\ngEbmQwiBtOk3aLcNe/bead9T/vX+E22y/HYEAAAAsLLxIYQAAAAAAEThlkMAAAAAAKIQoAEA\nAAAAiEKABgAAAAAgCgEaAAAAAIAoBGgAAAAAAKIQoAEAAAAAiEKABgAAAAAgCgEaAAAAAIAo\nMtO9gD+cVCo1Z86cdK8iipycnMzMzIqKipKSknSvBVY2iUQiLy9vwYIFqVQq3WuBlU2TJk0y\nMjLKyspKS0vTvRZY2SSTyZycnAULFqR7IbASys/PDyEsXLiwvLw83WuBlU1WVlYymRQ3fqOi\noqJ0L4HfCwF6eUulUmVlZeleRRRVAXolPkFIo4yMjMzMzPLy8srKynSvBVY2+fn5VT9f/vyC\nRpdIJJLJpB8uiCGZTCYSiZKSEj9i0OgyMzOrblBI90JgJeERHAAAAAAARCFAAwAAAAAQhQAN\nAAAAAEAUAjQAAAAAAFEI0AAAAAAARCFAAwAAAAAQhQANAAAAAEAUAjQAAAAAAFEI0AAAAAAA\nRCFAAwAAAAAQhQANAAAAAEAUAjQAAAAAAFEI0AAAAAAARCFAAwAAAAAQhQANAAAAAEAUAjQA\nAAAAAFEI0AAAAAAARCFAAwAAAAAQhQANAAAAAEAUAjQAAAAAAFEI0AAAAAAARCFAAwAAAAAQ\nhQANAAAAAEAUAjQAAAAAAFEI0AAAAAAARCFAAwAAAAAQhQANAAAAAEAUAjQAAAAAAFEI0AAA\nAAAARCFAAwAAAAAQhQANAAAAAEAUAjQAAAAAAFEI0AAAAAAARCFAAwAAAAAQhQANAAAAAEAU\nAjQAAAAAAFEI0AAAAAAARCFAAwAAAAAQRWa6F8BKJfHcS+leAsugZNzYdB167unD03VoAAAA\nAJYbd0ADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQC\nNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUADAAAA\nABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQ\nAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAA\nQBQCNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUAD\nAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAA\nUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0A\nAAAAQBQCNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABE\nIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAA\nAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUADAAAAABCF\nAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAA\nAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQC\nNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUADAAAA\nABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQ\nAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAA\nQBQCNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUAD\nAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAA\nUQjQAAAAAABEIUADAAAAABCFAA0AAAAAQBQCNAAAAAAAUQjQAAAAAABE8bsI0Pvvsfv1389v\nrL1VlEwaMGDAKQ9NXtYNF856dsCAAVPLKn9ph2UL3hswYMB7C8oaZ6EAAAAAACu1zHQvoPEl\nMpvusssurTs3jbDDuY21TwAAAACAld5KGKAzMlsdffTRMXZYtuCbRtwtAAAAAMDKbbkG6MrS\nqfeNue6Fdz+cUdZkrfW3Our4gzrmJmtOKJ37wc2jb3/1gylzy5Jt2nXecf/jB/ZtG0KY/s74\na+94/KOvvkvkt+y1+S5/PWJgdiIsYfyQQQN7jb7z1PaFSz1iXfO/feX8fzzw0affFa225vb7\nHTdo49Wrd3hi8xpLnfPhOccNW7DRYZefuEsyEVIVc566/brxr3747ayydp17DTzkqP5r/zx7\nxowZxcXF1V/m5eX91kv5u5RIJNK9BFYYyeRSfhKppernKyMjww8aRJJIJPzWBI0uIyMj+HMf\nYsrIyPAjBo0ukUj4y+FvVFlZ+wm3/JEtxwCdKr/q+BPfzO973EnnNk/OfOy6q4cOzbrz0gNq\nTrn9jJEv5216+PEHtC9Y+L+X7r/1gpM3vf/uFmUf/fW8f3Ta/dDTjuxe/PUHN1x32/mrbvj3\nXVYvXzCx3vFlOmJdI4bctevRh+19YOb7E8bePur4yqvv2rNjYa05pXM/Ove44dX1OYTwz+En\nPjCr21FHnbp6YZj48hNXDzk69Y/btltlUWi+/PLLx48fX/Xr5s2bP/vss7/pSsKKr3nz5kuf\nRB3NmjVL9xJgpZWTk5OTk5PuVcDKyZ/7EE9eXt7KeocTpJ0/v36LuXM9xpafLb8APffrW56b\nWn7hPSeuk5cZQug44se/jZowvWy/Vlk/fxBii233OH6H3Tcuyg4hrLFm8s6nzvu8pLyg+I3Z\nFZW77bHzBkXZYZ2uHZq2+Tq3IIRQOq/+8WU6Yl1rHX/uoM3ahhDW7rFB8UcHPHLJc3uO2a3m\nhNI5H513xvlTux90/U/1ueTHx257f+bf7zlt3fysEELnbusm3zrwnmsnbnLHyYgAACAASURB\n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\naVnrs2YiLafsZatVz1yf9TewsgJ027ZtV26/3H2n1wsa/+uL//659k/d/dCjju/e8+S9t9in\n42WnfDTq4LhjAgAAAAD8wdRoclZJ8bO3fr780h1qle4ZfPJx3x1705BjG6a+yLBxXx14YpPS\n7YdHflxrx5trNKm1/sv+QZQVoFfV++FPtj31lZX1uVRWtd1uP2u7P43sFQRoAAAAAGATk1P7\niCEHbXn5AUfVHTlgl/zlLz55y+VPvPfssM1TXyGRlvNWt0OuLRpyUNOqE++/6pqPltz7+TE5\ntfPWc9k/jlQD9KdLi7fMSvv1/kR6onjZl7/eDwAAAABQ6Z3/wgc5vc+4+cIun3xf1KxVu/sn\nvnXYL5/dXIa0zM323ufAZ27u2LlH3+vf/nLrVrvdMfF/p26Zt57L/qEkkslkKsedWT/vwaWt\n3/52YvPc/2/WxUs/PqB+y2lV/7ro69uiTVjZlJSUzJ07t6KniCIvLy93ytSKnoJNV+HYRyt6\nBNZiUa9+FT0CrEHNmjUzMjIKCwsLCgoqehaobLKysvLy8irr336hYtWpUyeRSBQUFBQWFlb0\nLFDZ5ObmZmVlLViwoKIH2bjl5+eX42qLFi2qPvXdclyw1MJdW1arVm3dzl2xdN43Bblb1V3H\nIryep29c1nBT8xr1vfX4ZQv+s8dOBwy+f/Trb0//6O3Xn37ghgNbtHl1wbITbvtb1BEBAAAA\nAP440nNrrU8+Xs/TNy6pPoKj0bF3jx9au1ufoX877dWVO7NrbNf71qevP2rje/Q1AAAAAACx\npRqgQwgH9rxxxhk9Jrz0xieffLI4I79p06Z7HtiuQXZ6vOEAAAAAANh4rSVAz5kzJ5FI1K5d\n+6ejqzQ6uEOjg+OPBQAAAADAxm4tATo/Pz8to9aKornbbLNNGYd99tln5ToVAAAAAAAbvbUE\n6EaNGqVl1AghtG7deoPMAwAAAABAJbGWAL3y1ubRo0fHHwYAAAAAgMojraIHAAAAAACgclrL\nHdAhhBWF82d8OL2oymYtmjdeLVcniwt/+G7mqF4X9PnHi5HmAwAAAAA2cQt3bVnRI7COygzQ\nJYWjLj/l3MFPLitJhhBqN2v34IvPHlK/4NrzL3hswhvf/Th7zvyCFclkCKHPPzbMtAAAAADA\npqVatWoVPQLrrqwA/f7fDzvzuolZ1bY99og/1QjzJz///HF7dLl573f7jp6V33TH7Vu3yQjJ\nKtXrbLfLnzfYuAAAAAAAbCzKCtDXDH4jM3fbN796v0X1rBBC0aKPWtVr1XV00QHXjx/f+8DE\nhhoRAAAAAICNUVkfQvjC3MJ6fxpWWp9DCJnVtv/7HpuHEEac1059BgAAAACgbGUF6AXFJXmN\nq6+6p2aLGiGEpjlr/+hCAAAAAAA2cWUF6BBC+OWtzok0tz4DAAAAAJCStQVoAAAAAABYJwI0\nAAAAAABRrOVpzrPfvPvKK19c+fLrKT+EEK688srVDuvfv3+5TwYAAAAAwEZtLQH6xzfvGvDm\n6jsHDBiw2h4BGgAAAACA1ZQVoCdOnLihxgAAAAAAoLIpK0C3bdt2g80BAAAAAEAl40MIAQAA\nAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgE\naAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAA\nACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCg\nAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAA\ngCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAG\nAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAA\nohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoA\nAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACI\nQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAA\nAAAAohCgAQAAAACIQoAGAAAAACAKARoAAAAAgCgEaAAAAAAAohCgAQAAAACIQoAGAAAAACAK\nARoAAAAAgCgyKnoAKpVku32KiooWLFhQ0YOwKVq0U7+KHiGitLS02rVrz507t6SkpKJnAQAA\nAEiVO6ABAAAAAIhCgAYAAAAAIAoBGgAAAACAKARoAAAAAACiEKABAAAAAIhCgAYAAAAAIAoB\n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"
     },
     "metadata": {
      "image/png": {
       "height": 480,
       "width": 960
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(cyclistic, aes(rideable_type, fill=member_casual)) +\n",
    "    labs(x=\"Rideable type\", title=\"Chart 07 - Distribution of types of bikes\") +\n",
    "    geom_bar() +\n",
    "    coord_flip()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "6b573adc",
   "metadata": {
    "papermill": {
     "duration": 0.077832,
     "end_time": "2023-04-14T12:07:12.569374",
     "exception": false,
     "start_time": "2023-04-14T12:07:12.491542",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "It's important to note that:\n",
    "* Docked bikes have the biggest volume of rides, but this can be that the company may have more docked bikes.\n",
    "* Members have a bigger preference for classic bikes, 56% more.\n",
    "* Also for electric bikes."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3cca4239",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-05-30T14:38:02.950975Z",
     "iopub.status.busy": "2021-05-30T14:38:02.949032Z",
     "iopub.status.idle": "2021-05-30T14:38:02.963205Z"
    },
    "papermill": {
     "duration": 0.111847,
     "end_time": "2023-04-14T12:07:12.759495",
     "exception": false,
     "start_time": "2023-04-14T12:07:12.647648",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"analyze-code-other\"></a>\n",
    "### Other variables\n",
    "\n",
    "Now let's get a look at some variables of the dataset."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "efa3c8f3",
   "metadata": {
    "papermill": {
     "duration": 0.079157,
     "end_time": "2023-04-14T12:07:12.923764",
     "exception": false,
     "start_time": "2023-04-14T12:07:12.844607",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"analyze-code-other-ride\"></a>\n",
    "#### ride_time_m\n",
    "\n",
    "First get some summarized statistic from the dataset"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 28,
   "id": "5d1e60ec",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:07:13.077635Z",
     "iopub.status.busy": "2023-04-14T12:07:13.075841Z",
     "iopub.status.idle": "2023-04-14T12:07:13.314019Z",
     "shell.execute_reply": "2023-04-14T12:07:13.312526Z"
    },
    "papermill": {
     "duration": 0.317085,
     "end_time": "2023-04-14T12:07:13.314170",
     "exception": false,
     "start_time": "2023-04-14T12:07:12.997085",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "     Min.   1st Qu.    Median      Mean   3rd Qu.      Max. \n",
       "-29049.97      7.88     14.52     26.48     26.63  58720.03 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "summary(cyclistic$ride_time_m)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9deb11e4",
   "metadata": {
    "papermill": {
     "duration": 0.071674,
     "end_time": "2023-04-14T12:07:13.457822",
     "exception": false,
     "start_time": "2023-04-14T12:07:13.386148",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "The min and the max may be a problem to plot some charts. How the ride time of some bikes is a negative value? Maybe there's some malfunction stations return bad dates.\n",
    "Checking the start and end stations doesn't appear to have a problem."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 29,
   "id": "fafe0689",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:07:13.607497Z",
     "iopub.status.busy": "2023-04-14T12:07:13.606029Z",
     "iopub.status.idle": "2023-04-14T12:07:13.926617Z",
     "shell.execute_reply": "2023-04-14T12:07:13.924355Z"
    },
    "papermill": {
     "duration": 0.397301,
     "end_time": "2023-04-14T12:07:13.926823",
     "exception": false,
     "start_time": "2023-04-14T12:07:13.529522",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".dl-inline {width: auto; margin:0; padding: 0}\n",
       ".dl-inline>dt, .dl-inline>dd {float: none; width: auto; display: inline-block}\n",
       ".dl-inline>dt::after {content: \":\\0020\"; padding-right: .5ex}\n",
       ".dl-inline>dt:not(:first-of-type) {padding-left: .5ex}\n",
       "</style><dl class=dl-inline><dt>0%</dt><dd>-29049.9666666667</dd><dt>5%</dt><dd>3.1</dd><dt>10%</dt><dd>4.51666666666667</dd><dt>15%</dt><dd>5.68333333333333</dd><dt>20%</dt><dd>6.78333333333333</dd><dt>25%</dt><dd>7.88333333333333</dd><dt>30%</dt><dd>9.03333333333333</dd><dt>35%</dt><dd>10.25</dd><dt>40%</dt><dd>11.5333333333333</dd><dt>45%</dt><dd>12.95</dd><dt>50%</dt><dd>14.5166666666667</dd><dt>55%</dt><dd>16.2833333333333</dd><dt>60%</dt><dd>18.3</dd><dt>65%</dt><dd>20.65</dd><dt>70%</dt><dd>23.3933333333349</dd><dt>75%</dt><dd>26.6333333333333</dd><dt>80%</dt><dd>30.5833333333333</dd><dt>85%</dt><dd>36.4</dd><dt>90%</dt><dd>46.1</dd><dt>95%</dt><dd>73.05</dd><dt>100%</dt><dd>58720.0333333333</dd></dl>\n"
      ],
      "text/latex": [
       "\\begin{description*}\n",
       "\\item[0\\textbackslash{}\\%] -29049.9666666667\n",
       "\\item[5\\textbackslash{}\\%] 3.1\n",
       "\\item[10\\textbackslash{}\\%] 4.51666666666667\n",
       "\\item[15\\textbackslash{}\\%] 5.68333333333333\n",
       "\\item[20\\textbackslash{}\\%] 6.78333333333333\n",
       "\\item[25\\textbackslash{}\\%] 7.88333333333333\n",
       "\\item[30\\textbackslash{}\\%] 9.03333333333333\n",
       "\\item[35\\textbackslash{}\\%] 10.25\n",
       "\\item[40\\textbackslash{}\\%] 11.5333333333333\n",
       "\\item[45\\textbackslash{}\\%] 12.95\n",
       "\\item[50\\textbackslash{}\\%] 14.5166666666667\n",
       "\\item[55\\textbackslash{}\\%] 16.2833333333333\n",
       "\\item[60\\textbackslash{}\\%] 18.3\n",
       "\\item[65\\textbackslash{}\\%] 20.65\n",
       "\\item[70\\textbackslash{}\\%] 23.3933333333349\n",
       "\\item[75\\textbackslash{}\\%] 26.6333333333333\n",
       "\\item[80\\textbackslash{}\\%] 30.5833333333333\n",
       "\\item[85\\textbackslash{}\\%] 36.4\n",
       "\\item[90\\textbackslash{}\\%] 46.1\n",
       "\\item[95\\textbackslash{}\\%] 73.05\n",
       "\\item[100\\textbackslash{}\\%] 58720.0333333333\n",
       "\\end{description*}\n"
      ],
      "text/markdown": [
       "0%\n",
       ":   -29049.96666666675%\n",
       ":   3.110%\n",
       ":   4.5166666666666715%\n",
       ":   5.6833333333333320%\n",
       ":   6.7833333333333325%\n",
       ":   7.8833333333333330%\n",
       ":   9.0333333333333335%\n",
       ":   10.2540%\n",
       ":   11.533333333333345%\n",
       ":   12.9550%\n",
       ":   14.516666666666755%\n",
       ":   16.283333333333360%\n",
       ":   18.365%\n",
       ":   20.6570%\n",
       ":   23.393333333334975%\n",
       ":   26.633333333333380%\n",
       ":   30.583333333333385%\n",
       ":   36.490%\n",
       ":   46.195%\n",
       ":   73.05100%\n",
       ":   58720.0333333333\n",
       "\n"
      ],
      "text/plain": [
       "           0%            5%           10%           15%           20% \n",
       "-29049.966667      3.100000      4.516667      5.683333      6.783333 \n",
       "          25%           30%           35%           40%           45% \n",
       "     7.883333      9.033333     10.250000     11.533333     12.950000 \n",
       "          50%           55%           60%           65%           70% \n",
       "    14.516667     16.283333     18.300000     20.650000     23.393333 \n",
       "          75%           80%           85%           90%           95% \n",
       "    26.633333     30.583333     36.400000     46.100000     73.050000 \n",
       "         100% \n",
       " 58720.033333 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "ventiles = quantile(cyclistic$ride_time_m, seq(0, 1, by=0.05))\n",
    "ventiles"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "4411703a",
   "metadata": {
    "papermill": {
     "duration": 0.075391,
     "end_time": "2023-04-14T12:07:14.083067",
     "exception": false,
     "start_time": "2023-04-14T12:07:14.007676",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "We can see that:\n",
    "* The difference between 0% and 100% is 87770.0 minutes.\n",
    "* The difference between 5% and 95% is 69.95 minutes.\n",
    "Because of that, in the analysis of this variable we are going to use a subset of the dataset without outliners. The subset will contain 95% of the dataset."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 30,
   "id": "c67770bb",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:07:14.239579Z",
     "iopub.status.busy": "2023-04-14T12:07:14.238934Z",
     "iopub.status.idle": "2023-04-14T12:07:15.671525Z",
     "shell.execute_reply": "2023-04-14T12:07:15.670292Z"
    },
    "papermill": {
     "duration": 1.514715,
     "end_time": "2023-04-14T12:07:15.671980",
     "exception": false,
     "start_time": "2023-04-14T12:07:14.157265",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "[1] \"Removed 350103 rows as outliners\"\n"
     ]
    }
   ],
   "source": [
    "cyclistic_without_outliners <- cyclistic %>% \n",
    "    filter(ride_time_m > as.numeric(ventiles['5%'])) %>%\n",
    "    filter(ride_time_m < as.numeric(ventiles['95%']))\n",
    "\n",
    "print(paste(\"Removed\", nrow(cyclistic) - nrow(cyclistic_without_outliners), \"rows as outliners\" ))"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bc4e7345",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-06-01T15:49:01.945453Z",
     "iopub.status.busy": "2021-06-01T15:49:01.942574Z",
     "iopub.status.idle": "2021-06-01T15:49:01.960407Z"
    },
    "papermill": {
     "duration": 0.074492,
     "end_time": "2023-04-14T12:07:15.822841",
     "exception": false,
     "start_time": "2023-04-14T12:07:15.748349",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"analyze-code-other-ride-multivariable\"></a>\n",
    "##### ride_time_m multivariable exploration\n",
    "\n",
    "One of the first interactions between the columns and ride_length is a box plot, with subplots based on the casual_members column. Also the summarized data."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 31,
   "id": "87dcda46",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:07:15.985656Z",
     "iopub.status.busy": "2023-04-14T12:07:15.984837Z",
     "iopub.status.idle": "2023-04-14T12:07:17.340701Z",
     "shell.execute_reply": "2023-04-14T12:07:17.339119Z"
    },
    "papermill": {
     "duration": 1.438719,
     "end_time": "2023-04-14T12:07:17.340892",
     "exception": false,
     "start_time": "2023-04-14T12:07:15.902173",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A tibble: 2 × 6</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>mean</th><th scope=col>first_quarter</th><th scope=col>median</th><th scope=col>third_quarter</th><th scope=col>IR</th></tr>\n",
       "\t<tr><th scope=col>&lt;fct&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>23.67794</td><td>11.3</td><td>19.16667</td><td>31.36667</td><td>20.06667</td></tr>\n",
       "\t<tr><td>member</td><td>15.48325</td><td> 7.3</td><td>12.18333</td><td>20.66667</td><td>13.36667</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A tibble: 2 × 6\n",
       "\\begin{tabular}{llllll}\n",
       " member\\_casual & mean & first\\_quarter & median & third\\_quarter & IR\\\\\n",
       " <fct> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 23.67794 & 11.3 & 19.16667 & 31.36667 & 20.06667\\\\\n",
       "\t member & 15.48325 &  7.3 & 12.18333 & 20.66667 & 13.36667\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A tibble: 2 × 6\n",
       "\n",
       "| member_casual &lt;fct&gt; | mean &lt;dbl&gt; | first_quarter &lt;dbl&gt; | median &lt;dbl&gt; | third_quarter &lt;dbl&gt; | IR &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|\n",
       "| casual | 23.67794 | 11.3 | 19.16667 | 31.36667 | 20.06667 |\n",
       "| member | 15.48325 |  7.3 | 12.18333 | 20.66667 | 13.36667 |\n",
       "\n"
      ],
      "text/plain": [
       "  member_casual mean     first_quarter median   third_quarter IR      \n",
       "1 casual        23.67794 11.3          19.16667 31.36667      20.06667\n",
       "2 member        15.48325  7.3          12.18333 20.66667      13.36667"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "cyclistic_without_outliners %>% \n",
    "    group_by(member_casual) %>% \n",
    "    summarise(mean = mean(ride_time_m),\n",
    "              'first_quarter' = as.numeric(quantile(ride_time_m, .25)),\n",
    "              'median' = median(ride_time_m),\n",
    "              'third_quarter' = as.numeric(quantile(ride_time_m, .75)),\n",
    "              'IR' = third_quarter - first_quarter)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 32,
   "id": "b6474d95",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:07:17.504658Z",
     "iopub.status.busy": "2023-04-14T12:07:17.503841Z",
     "iopub.status.idle": "2023-04-14T12:07:30.357254Z",
     "shell.execute_reply": "2023-04-14T12:07:30.356666Z"
    },
    "papermill": {
     "duration": 12.938002,
     "end_time": "2023-04-14T12:07:30.357421",
     "exception": false,
     "start_time": "2023-04-14T12:07:17.419419",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAB4AAAAPACAIAAABb1/PuAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdd2CU9f3A8e/lMkjCJuwpKlsFBRUUFXHhRNyjjlqtq64qWlttHXWP1tFWraut\ns7VqFUH9iYJ1W3EvFFHBwd4j635/BEIgIVwg34Txev1Fnnvuuc/dc/cY3zw8l0ilUgEAAAAA\nAGpbRn0PAAAAAADAxkmABgAAAAAgCgEaAAAAAIAoBGgAAAAAAKIQoAEAAAAAiEKABgAAAAAg\nCgEaAAAAAIAoBGgAAAAAAKLYYAN0qvj5f/zxuP133qJT2/ycvI5bbjV03xHXPfRK6cprTbx/\nl0Qiscv9E+tnyPVVopLMnIbtN+s+4qQLnnp/Zn1N9Yv2jRKJxKeLi+trgPqyePq4E4du17JR\ng059f7O6dXrnZ1feaxnJ7LZdug/ec/ifnnp3LR735s2bJRKJZ2YvWYfZNzbp7Ivakd4RbP30\n/rUDEonEXs9+W4vbnPXZMWXv6ubdr1rtSqVLeiz/ILw4d2ktPno1NtnjEgAAANSWDTJAL539\nxhE7dNzrJ+f8fdQrU+YUFbRqNG3SR2NHP37h0Tt3GnjkRwvX31IwY8I/Tzpo5/Ytm2TnN918\n690uvmVUSVWrTRx7/xH7DuneqVVu0zZ9dxxy5rUPzilO1fowHTffolzT5NLvJn/++D03HNSv\n/THXj6242tP9WicSiYKeD9f6APG2vD48XPp+P/SQ+8a+U1zQe7cdula/ZuvNKuyzLbbo3LbJ\n9G8m/vf/njzjwH59j7+rfLW1e6b1/vrU+wChJvtiXWy4R7A6MOeLyz9aVPUrMPuLyz5bVFTH\n8wAAAADraMML0MWLPzug99BH3/qhzQ5HPfnKp4vnzfj62x+XFC5849+37tY2f+rrj+w2+Ne1\nH2urVbRwQiKRaNL50upX+37c77sMOPKe/7wyY2mjXu0aTPpg3NVn77/V0X9eZbUXLtmj29AT\n/jlm3PzMgq26NPv6nZdvv+iYzt0P+aGwlk+OfPK9jycuN2Phwq8+fPNPIw/PTBU+OHLozx6b\nvNabTfPViG09GWPNUoXXfjgrK6/HlC/f/tsdP61+3ZveeH9iBV9Nmb5kwXd3XLhPCOG9v51y\n7aS5dTJx7Vgfd1BN9sVaWw+PYOuPREYyVbr0guemVHnr/y79ZwghK5Go26EAAACAdbLhBehH\n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"
     },
     "metadata": {
      "image/png": {
       "height": 480,
       "width": 960
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(cyclistic_without_outliners, aes(x=member_casual, y=ride_time_m, fill=member_casual)) +\n",
    "    labs(x=\"Member x Casual\", y=\"Riding time\", title=\"Chart 08 - Distribution of Riding time for Casual x Member\") +\n",
    "    geom_boxplot()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "db7a8266",
   "metadata": {
    "papermill": {
     "duration": 0.076737,
     "end_time": "2023-04-14T12:07:30.514466",
     "exception": false,
     "start_time": "2023-04-14T12:07:30.437729",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "It's important to note that:\n",
    "* Casual have more riding time thant members.\n",
    "* Mean and IQR is also bigger for casual.\n",
    "\n",
    "Let's see if we can extract more informations when ploting with weekday."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 33,
   "id": "73cd1b1e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:07:30.675154Z",
     "iopub.status.busy": "2023-04-14T12:07:30.674341Z",
     "iopub.status.idle": "2023-04-14T12:07:44.800941Z",
     "shell.execute_reply": "2023-04-14T12:07:44.800228Z"
    },
    "papermill": {
     "duration": 14.211305,
     "end_time": "2023-04-14T12:07:44.801107",
     "exception": false,
     "start_time": "2023-04-14T12:07:30.589802",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nv7V7LBZL75X+5PKyj6aHXXrQ9Kzx6S+zsrLSUzqkv8zOzk5PKxyPx8My89l991jpo6THSa9M\nJpMFBQXV1dVLPzq97F7pAWOxWGNjY25ubnou42Wj5uTkJJPJ9KHTkbKysr7180mvrKurW/pD\nTiQS6W3y8vKqq6uXZlv6Lad3Tw8bi8XSg6d3DyEUFBRUVFSEEPLz85f+HJLJZPooyWQyNzc3\nmUzecsstPXr0WMV/KgA007777rvvvvuGEH7wgx8sfVlc+mjTXzZzs+W+mK72wb+7V/jva2v6\nBSuRSKSn0Uu/MKVfo5e+tKVflLOzs2traxOJRHqbpS/3OTk5dXV1IYRUKlVfX19UVNTQ0LD0\nRTn9at6pU6f6+vr0a256yqalr7mJRKJjx46LFi1asGBBPB7Pzc2trq7u3LnznDlz2rdvn52d\nvXDhwkQikZ2dXVFRUVRUVF9fn52dXVxcXFFRkZ+f39jYWF5enp2dXVBQUFJSUl5eXlVV1alT\np0WLFuXl5aWDZWVl5efnL168OCcnJycnp7GxMScnp76+Pjc3d/HixemJaFKpVG5ubkVFRWFh\nYXpeqY033nju3LkbbLBBRUVFKpUqLi7+6quv0t9+x44dq6urZ8yYUVhY2LFjx/Ly8t69e8+Y\nMWPjjTdeb731XnvttV69en388cf19fVZWVnp772mpiYej9fX1+fl5VVUVJSVlcVisblz5y5a\ntCg/P7+goKB9+/b5+fnxeLy6urqqqmqDDTZIpVLz58/faKONnn/++bq6ung8vummm9bV1TU0\nNEybNq1z587pkdu3bz979uxYLDZr1qyuXbtmZ2eXlZWVlpZOnTo1Ozu7srKytLQ0Fot16NDh\ntddeKysry87OTp+KlJSUzJw5Mycnp7a2Nicnp0+fPvF4fN68eWVlZe3bt3/zzTdjsdjixYsL\nCgry8vKKioq+/vrrDh06LFq0qF+/fl999VW3bt1ycnI+//zzadOm9e3bN5VKtW/fvri4eOrU\nqalUqqCg4Isvvnj55Zfz8/P333//vLy82bNn9+/f/8MPP9xqq60++eSTr7/+uqysrLy8PD8/\nv3379jU1NVVVVTvssEN9ff0rr7zSu3fvRCIxa9asnJycxYsXFxcXr7feerNnz54+fXrv3r1n\nzZpVVVXVsWPHLl269OzZ88svv3z55Zc33njjnj17vvrqq1tuueWsWbPSW/bo0SP9b+yzzz6b\n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\nAAAAgCAU0AAAAAAABKGABgAAAAAgCAU0AAAAAABBKKABAAAAAAhCAQ0AAAAAQBAKaAAAAAAA\nglBAAwAAAAAQhAIaAAAAAIAgFNAAAAAAAAShgAYAAAAAIAgFNAAAAAAAQSigAQAAAAAIQgEN\nAAAAAEAQCmgAAAAAAIJQQAMAAAAAEIQCGgAAAACAINIV2EZ+1bzrfnT5H+fMbctVv22bqUec\nMGPahNp1fOwzl33uP2Yvvubmm0alEuU5d33xyEtfWvn9G2/eNpsqz3nkrOPOfjz5619fnk6s\n0zp/edxh/7vPOf95+Nbr/1QAYGT5/e9/f8EFF5RKpXhjJBKJ9c2QTCaLxeJGWdW6KK92TRt9\n062nUqlCodB/sSiKqqurc7lc3wqTyWSpVCo/vLzAgFWtduvlJctKpdKaAvQ9trxA36PKT6pv\nTl+AVCp12mmn7bnnnmt5sgBsmNNPP/2hhx6KO8UgMuDNa7Xvd+WZ5fesAXelUql8Pp/JZHp7\ne9PpdN8CfW+LZYlEIpVKFYvFvul8Pl9TU9Pb21sqlQqFQlVVVXkTqVSqVCql0+lisVgoFHp7\ne8eOHdvd3Z1MJguFQldXVzKZrKqqKq+hWCxmMplcLjd+/Phisbh48eJygJqamk022aSjo6O8\nfBRF9fX1S5YsKY8H6uvrc7lcT0/PmDFjSqVST09PebFUKjV69Oje3t6VK1fm8/ne3t7y+kul\nUlVVVU1NTWNjYy6Xy2QybW1tqVSqqqpqyZIlURQ1NjZuueWWL7/8ckdHRzKZzGQy5eeYzWbz\n+fzo0aO7u7tffvnlqqqqXXfd9fHHH4+iqKqqqrOzs6WlpbW1dcKECa2trZ2dnaVSadddd62r\nq3vppZc6Ozurq6t7enqiKJo0adK8efPa2tpqa2tzuVxtbW1HR0dVVVU6nd56662jKHr11Vd7\nenp22223np6ep59+urOzs5x/7NixW221VTabffzxx3Na8JEAACAASURBVLu6unbZZZfq6uqH\nH364urp6m222KZVK8+bNW7p0aU1NzejRo7PZbGtra11dXWNjY3t7e6FQSCQSyWSyrq6uWCy2\ntbWNGjWqqalp6dKl3d3dzc3NdXV1o0eP7uzsfOihh5YsWVIqlSZPnjx69Oi3ve1tCxcuTKVS\nEyZMWLp0aXn9XV1d5X8333zz+fPnt7W19fb2jhs3rqamplgsNjU1ZTKZJUuWFIvFXC7X1NQ0\n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\nAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 480,
       "width": 960
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(cyclistic_without_outliners, aes(x=weekday, y=ride_time_m, fill=member_casual)) +\n",
    "    geom_boxplot() +\n",
    "    facet_wrap(~ member_casual) +\n",
    "    labs(x=\"Weekday\", y=\"Riding time\", title=\"Chart 09 - Distribution of Riding time for day of the week\") +\n",
    "    coord_flip()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9388cea1",
   "metadata": {
    "papermill": {
     "duration": 0.080758,
     "end_time": "2023-04-14T12:07:44.961331",
     "exception": false,
     "start_time": "2023-04-14T12:07:44.880573",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "* Riding time for members keeps unchanged during the midweek, increasing during weekends\n",
    "* Casuals follow a more curve distribution, peaking on sundays and valleying on wednesday/thursday.\n",
    "\n",
    "Lastly, let's do rideable_type."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 34,
   "id": "28d05947",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2023-04-14T12:07:45.123696Z",
     "iopub.status.busy": "2023-04-14T12:07:45.122983Z",
     "iopub.status.idle": "2023-04-14T12:08:04.571536Z",
     "shell.execute_reply": "2023-04-14T12:08:04.572053Z"
    },
    "papermill": {
     "duration": 19.533095,
     "end_time": "2023-04-14T12:08:04.572264",
     "exception": false,
     "start_time": "2023-04-14T12:07:45.039169",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\n+Z6XPnHTMTs2TNZROuGVxVHyghm9fOFzMyrv+2bWjkMaJYmJqvumlMcysvac++zXxq655dbF\nVEL9Jed9GkIYetrgebWIZXbcbq8jttvriBDC1G/fuf+OW089/+YbT9h0q31n7dJpPudBz9cT\nU8o3bD/XmYwzPhgbQigetEora1XPfmeBRskuWC8jFquc+d/6ZvHp9y9NCSH0XK14gTps4/4b\ni2Xkje6S//bs6o/m1DQPoAv6rBrCf6e9+V4IG839SOKpGZWLOHRO8ZAQHimb9H8hzPUHodqK\nryYvjtOfF0Jmbv/OWfGZiaqzzzs/a9Ey8LY8iI2leMhS3NLUd8gCvQ0u0Ot0MR6UpN7bXJqb\n8Z8Jj55Wf+sLxz8wPp7V6ZqtlmvS5slfykcU58xd4YshhIJ+K0VREgAAAETBHNBpUNTvxL+t\n1rG26oetdz2vvL7pCW51Vd8fcsSrIYQ1jz0r9T4TdbNunTQnM6f3/cft1Hiq6F9eeWux1LxA\nNjt93RDCKyc923jh1A9P+bm6rv0KJzdMKhKdD2/e8/af5mTlD7yhWaATQqiY+uDaa6+9wWZH\nNyzp0n/w0efccMOADon66iemVyx6AQ8dP2buBXUXH/NWCGGzEwcm7yfPSC0ZN9cP5D+//pwF\nGiUzb+U/dcmvKf/qtPemzjVY5fjj358ay8g6bsAiZYtR999EdiwWQphQVdv8ocLlji3OzCj5\n5tQXZ851kvjU90//cE71Io5b0OOw3jmZsydd+nLJXJ1PfOqExLwnyI5WLOuklYrrqiYf98Lk\nJo9cvPOIoUOHPjMz1di9jQ9ig1QPWYpbmlqzBX0bnO/rdC6L76AkJWfhqJr16lkvnvj27Oru\nw67q3eyk8sePf3ruBfWX/u3tEMLg4wZGURIAAABEQQCdHueNvatfXuak5/45YPh+j7307tSy\n2hBCSFR/83/37rTO2mNLKvM6b/bYCYNS7zAWL+ienVFX/eNjE+c0LPzkuas2PviVEEJ1SaoX\ni0vULcxl5ZpYYcfbV2+X9dMrB5/7n++TS2rmfH7IDjeHEPa5/YhF73/e6n8c99Gtp++z/mEP\nhxD2u2tM16wWnuHZRRt99+nHb7189WlP/T7Ta8k3z134fWksljG68++/vl/ovfH9U/vtff5T\nybNn62umnv/nwdd+Nyu/63bX/HYhuKI1ikII7x139k/Vv06AMPmVG0ee816Lcz60UsaZl24d\n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\nWOPbS/W2LPnKGs0YDgDLlOri4qqOndpyxEQ8o/HtNh69bdTl5ae7BACApZspOAAAAAAAiIQA\nGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAA\nAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACA\nSAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACASAig\nAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACASAigAQAA\nAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACASAigAQAAAACI\nhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAa\nAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAA\nAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBI\nCKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKAB\nAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAA\nAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiE\nABoAAAAAgEgIoAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoA\nAAAAgEgIoAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAA\ngEgIoAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIhEZnqH32uXnTe9\n/r5Du7dbLL3VVY7fZfTfVtzvqst27bNAK1aVPL/7vlff8sjjXbPmSuQbOrxw29m77nnquQ88\nsnp+1mIpFQCWfLW1tVdeeeVLL71UX19fX1+fSCRCCBkZGfX19bFYLNkmuTB5t/ntjIyMRCLR\ncLthrbq6ung83vBQcq1kt4lEIh6PZ2ZmVldXN1TSsGJ9fX08Hk8WE/tNIpFILk+O21BGw6PJ\nBg2dNCxP3qirq2vYqEQi0bjO2tra5CYkGzSsnpGRkSymcT8Nm9YwRLLOeDzesHXJThraJ1ev\nq6uLxWLJ7UouadjYzMzMhp2ZvJGdnV1fX59cJdlDQ5GxWCw7O7uuri7ZICsrq2Gs2trazMzM\nmpqaht1bW1ubLDUjIyPZZ21tbQghKyurof+MjIza2tpEIpGVlZUcLvlMyM3NTSQSVVVVyU1L\nDl1XV5dsWVVVlZGRkZOTE4/Hk20yMjKqq6sHDhx45pln5ubmLurzEiBNxo4de/HFFze8J4ff\n3sab3G5xYWOLca2Iul1C1mr8IVtfX9/4S0Xj1Rs+Xhu+WiTXSn7khd8+K8M8vq407iH52dfw\nnSH5wVpdXd3waPjtm0ZmZmZDSQ0fo5mZmclvCBkZGTU1NVlZWdXV1bW1tQ2fvMmP+5qamvr6\n+qKiouzs7GnTpiXbJz9Sc3JyqqqqkmPl5eVVVFQ0fK/o2LFjdnb2nDlzkjVUVFRkZmZmZWXF\n4/Hy8vLk53UikcjPz4/H49XV1YlEIicnJzc3t6SkJFlDss4QQl1dXd++fYuLiydOnDhr1qxE\nIlFTUxOPxwsLC4uKimpqasrKyiorK5P7IR6P5+fnl5aWZmZmFhcXFxUVde7cuby8/IsvvojH\n41lZWUVFRcXFxdXV1TU1NT169Jg2bdrkyZNra2vz8vKSPeTl5c2ZMycvL69r1661tbWVlZXJ\nbezevXuPHj3Gjh3bsWPH3r17//jjjzk5OTU1NaWlpfF4fMiQITNnzuzQoUNJSUl5eXkikfj5\n559LS0sLCwuLi4tzcnJKSkqys7Pbt2//7rvv1tXVDRs2LB6Pl5WVTZ8+fdq0aT169Kiqqkok\nEuuss8706dPr6upKS0u7d++elZXVqVOnjIyM//3vfyUlJd26dRs8eHBFRcWnn37aqVOn4cOH\njx8/fvLkyR06dMjIyBg6dOikSZNef/310tLS3r17Dxs2rLq6+s0330wkEpWVlWVlZaWlpSus\nsEJtbW337t27des2ffr0KVOmzJo1q0ePHsljmpubmzxw33///dSpU3Nychpafvrpp9XV1YWF\nhT///HNhYeHo0aM/+eSTOXPm1NXV9evXLx6Pf/755927dy8uLv7222+HDRsWQvjqq6/eeOON\n4uLiddddNz8//6effpoyZcqgQYNqa2tnzpyZ3F1VVVUFBQXJl0NtbW1ubu6UKVMyMzPbt2+f\nnZ392WefbbPNNhtssEGANpfmAHrximW233777bv0bx9Bh7MXV58AsOQrLS3dc889GyLXxpIL\nm/yvsvHdxrcb99Ckt+R/qJqslfy3rq6uxUebrNg4v55Xhy0uaf5Qct2G0Rs/1PBftcb9tLhn\n5ltw67Ul/2/cRPOFlZWVzZs1DFFRUdGwsHGC37ir+vr6mpqahuUN0fO8RgwhJP+j2CD5v98W\nGyeXNOkz6cMPPxw5cmQsFrv99tu7d+/efBSAJdYpp5zy4YcfNl/e4sffvD4To1hriSpmsa/V\n8N0geaPxh2/j1RtuN/mwDq1+N2ixh0Qi0fgrQZj7g7Xx6g2fd43bNBmu4YO4tra24WOx4SO4\npKSkoWXD52bjT/nGQ4cQfvrpp5CCWbNmNdwuKytr/FDjDj/77LPm65aVlf3888/Nl8+cObPJ\njXkV9sknn7RS23fffdf47jfffJO8MX369HHjxjVp/P3337fYSTKyb+6ll15qsebx48e3UlJp\naWnD0OPGjXvzzTcbP/rEE080rvbFF19s3sOkSZOaL/z4449bGbRF//znP1t59Pnnn298t/Hb\n0SuvvLJAAyW3cZ111jnvvPMWaEVYRH+oKTgyMjsfeuiho9bquMR2CABLvvr6+j322GO+GSss\nhEQisf/++zdOwAGWcG+//XaL6TPAUur9998/7rjj0l0Fy5Y2OgO6vnrKA9dc/8rHX8yoyVtp\n7U0POerPK+TGGzeonv3ZrVff+eZn38+uiXft2X+bvY4aOaRbCGHah89dd9dTX/7wU6xdpzU2\n2v7Yg0Zmx0Iry/cbNXKNq+8+vlfhfEdsruzHN86+4d9fjvupaLm+W/7pyFHr927o8OgOjUot\n/eKfR55evt4Blx29fTwWEnWlz9x5/XNvfvFjSU3P/muM3O+QEat0mOcYALDEu+aaa1o8cQkW\nl9NPP/2CCy5IdxUAKTnzzDPTXQLAYvb5558n58RLdyEsK9okgE7UXnnU0e+1G3LkMWd2iM98\n8vqrTjst6+5L9m7c5M6Tzn09f8MDj9q7V0HVR689dPv5f9vwoXs71nx57Fk39Nt5/xMOHlgx\n6bObrr/j7B7r/mv73rXln7e4fIFGbO6cU+7Z4dADRu+T+enYB+8876j6q+7ZbYXCJm2qZ395\n5pFnNKTPIYTHzzj63yUDDjnk+N6F4fPXn77qlEMTN9yxRff8hlVGjRrV8EucbbbZ5pBDDgkh\nJGeGyszM7NAhwrT6hRdeeOGFF6Lrvw1MmDAh3SWwtLrjjjuSs18tusazxbFA7LqF1uLMiW3m\n5ZdfTtfQLCM+/fTTSL8Ctf7yKS4uDo0mFm/fvn10L7e2+TJWWloa9RDMmjXr4osvXsROmsye\nzwJJ4yejnwQBf0hvvfXW9ttvH13/TSaBYRnXFgH07Em3vTSl9oL7jl41PzOEsMI50089b+y0\nmj91bnTFv46b73LUVjuvX5QdQujTN373M2d9W1lbUPHurLr6HXfZbp2i7LDqysu37zoptyCE\nUD2n5eULNGJzKx115qhh3UIIq6y2TsWXez928Uu7XbNj4wbVpV+eddLZUwb++cbf0ufK6U/e\n8enMf913wurtskII/QesHn9/n/uu+3yLs9drWOvHH39smO+ppKSk8d+XkjP6L8w+Tc2ECROW\n9gAaFtpbb72V7hIAaFnUZ9y0nhY1vs5k+O20gIj4MvaHUVlZ6VAC8EcyceLESL+PNf66BW0R\nQE9/68usgnWSWXAIIa/zDpddtkOTNrvuNmrC15+/9OaECRPGf/7xr7FRXqeRG/d9/l8HHLDW\nhsPWWG21jTbdaGh+vJXlCzRic9s1mut5s217Pn7PqyHMFUDfeOyZ9bkZc76b0PCX9zmT3ksk\nEqf+adfGzdpVTQrh9wB63333bTgDetVVV01O/J+dnZ282H2Tq/osXsstt9zw4cOj678NfPTR\nRzNmzEh3FSyVBg8evBjPgG64NDapS15GPLR0BTbmK/kZka5TvV5//fVIP54gKyurybWVFq9E\nIpGfnz+vR5OXeMrIyMjJyQkhVFVVRfcO3zZfxkpLS997772oR1nG5ebmDh06dBE7afjjh0/G\nhRCPx9O131q88hjA0m7IkCGRfh/zYUdjbRFA19fUx2JZrTRI1M267ozjXvmlcOiQwasPGrbJ\nNkP/9td/hRBi8fYnXnH7zh++9d4HH773n7vuuvmmjff4x/F7rDav5amPmIpYLLvJkm7bnXD6\nTvF99z/3vOd2OWPb3iGEzPysjHjh/fff2vjPOrGMuYY+4ogjGm5XVlYmLxyfPPe5rq4u0p8k\nDBkyZMiQIdH13wZOPfVUATQL58ADD+zbt+9i6So/Pz8ej8+ePXux9LbsyMrKKioqCiHMmDFD\nfL+gOnToUF5enq4U+LXXXjvnnHPSMjTLiH322SfqX2W2EkCXl5cnEonMzMxkAF1RUdHwY7XF\nrm2+jH311VcC6KgVFRWdfPLJi9hJfn5+fn5+XV3dzJkzF0tVy45YLNapU6d0faN45ZVXxCjA\nH0wsFuvXr59ZMmgzEf7ksEGnwX2r57w3vvLXz+zq2W//9a9//ajs96ufz550038/nXnt9Zf9\n7ZC9Rwxbr2fhr1/IZn055s67n1x57WF/OvDIc6+49ZL9e7z2yM2tLE99xBY99f70htsvP/dj\nu+VHNGkwetf1souGnLn7yu/fcsZXFbUhhPzuWyfq54yZWpv7m2euu+Ke96YHAFhqDRs2rFu3\nbumugj+s/Pz80aNHp7sKgFSNGTMm3SUALGbHH398uktg2dIWAXRR/yM37ZA484xr3/3k6/Ff\nfXTrOdfMSAxco93vpwlnF6yUSNT+57X3J0/95esPX7rk7/eHED74+OvadqWPPnLnZQ//55Ov\nx3/01kvPjP253XJDQwiZhS0vT33E5mKx7PHXnvHwi29/8+VHj13/j3//ULXfiS3/yG7Anmet\nkz/nwvOfCyFkFw4+aK1OD5527vNvfzz+y/cfue3Mu177aq3Vixd9pwFAGt15550HHHBAuqvg\nD2jbbbd99NFH010FwIJ57rnn0l0C0KaWtPmLF2M9ubm599577xZbbLG4OoRUtMUUHCGWefQ1\nF9919c03XnzGrPr8Fdccfs6Rf2780sntNPK0fSbfcsflj1Vm9lt59dGnXbvps1ffe+8tO1x+\n6dkHVdw+5sFz7puZVdhp5XW3OveQ3UII7Xr9qcXlqY/YtMB40SoD1zztLxtefOPdD4+f1qXv\nikeed9PmnXNbbpyRf8w/d9v3+Jvv+nzYvgM77PjPa7PuuOrJWy79saS2Z5/Vjz3vinULms7d\nAQBLnT322GOPPfZIdxULpqCgIDc3t7a2tqSkJN21LGXi8XiHDh2mT5+erpnHAZZwS2kGXVxc\nnJmZWVFR4Yf2Cyr5E2ffKBZU8htFCGHWrFk1NfP5GTpNtG/fvra2try8PN2FwOLXJgF0CJn5\nyx948jkHNlt+32NPJG8MGX3kkNFH/v7AIadsHEIIYfmdDrxip+brhTXnsfzORx9vfcQWZRcO\nufD8ISGEsy9qOu3Gbx2u/uSTTzYsLFpxjyee+PX/5LGMvG0PPHnbFEcCAAAAAFhmtMUUHAAA\nAAAALIPa6AzoJUHZT3eec+UXLT6UW7z5mads1cb1AAAAAAD8sS1DAXS7HvtdcEG6iwAAAAAA\nWGaYggMAAAAAgEgIoAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiE\nABoAAAAAgEgIoAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoA\nAAAAgEgIoAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAA\ngEgIoAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgI\noAEAAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEA\nAAAAiIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAA\niIQAGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQA\nGgAAAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAA\nAACASAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACA\nSAigAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAEAAAAAiIQAGgAAAACASAig\nAQAAAACIhAAaAAAAAIBICKABAAAAAIiEABoAAAAAgEgIoAHg/9m78zid6sUP4N9ndgzGVtJC\n9qJo335Fu9KuRKtWWrTcyo0sJal0aaFFpX2RS6rbvqB0tWlfEEmuVHYxzJjl+f0xXbmlmQdz\nPIb3+9UfZ85zvt/zeQbNmc+c+R4AAAAgEgpoAAAAAAAioYAGAAAAACASCmgAAAAAACKhgAYA\nAAAAIBIKaAAAAAAAIqGABgAAAAAgEgpoAAAAAAAioYAGAAAAACASCmgAAAAAACKhgAYAAAAA\nIBIKaAAAAAAAIqGABgAAAAAgEgpoAAAAAAAioYAGAAAAACASCmgAAAAAACKhgAYAAAAAIBIK\naAAAAAAAIqGABgAAAAAgEmnJDgBlm7l8xRM//JjsFOtveWHRmtsV+r1s+hbkr0p2BABIjtof\nvFeYXXVjnjF1Zd6a23XHv7Uxz75xZH8/M9kRAAAqNgU0m7RYLBZCmL48d/qM3GRnKR/LCgvv\nnfFDslNsEUr+8gDAZm/1l7yt3x6fxBhpK1ds+9ILSQwAAMCmSQHNJu3www//6aefiop+v4M4\nFoulpKSsuYcEpaamhhDi8XhxcXGys0Sufv362267bbJTAMDGsOOOO+65555z5szZaGdMSUkJ\nIWwJVxQlYrHYUUcdlewUAAAVlQKaTVqbNm3atGmz5p60tLScnJwFCxYkK1LFVatWrVgslpub\nu3LlymRnAQDKTXp6+oABAzbmGatXr75q1SpXFAAAJMJDCAEAAAAAiIQCGgAAAACASCigAQAA\nAACIhAIaAAAAAIBIKKABAAAAAIiEAhoAAAAAgEgooAEAAAAAiIQCGgAAAACASCigAQAAAACI\nhAIaAAAAAIBIKKABAAAAAIiEAhoAAAAAgEgooAEAAAAAiIQCGgAAAACASCigAQAAAACIhAIa\nAAAAAIBIKKABAAAAAIiEAhoAAAAAgEgooAEAAAAAiIQCGgAAAACASCigAQAAAACIhAIaAAAA\nAIBIKKABAAAAAIiEAhoAAAAAgEgooAEAAAAAiIQCGgAAAACASCigAQAAAACIhAIaAAAAAIBI\nKKABAAAAAIiEAhoAAAAAgEgooAEAAAAAiIQCGgAAAACASCigAQAAAACIhAIaAAAAAIBIKKAB\nAAAAAIiEAhoAAAAAgEgooAEAAAAAiIQCGgAAAACASCigAQAAAACIhAIaAAAAAIBIKKABAAAA\nAIiEAhoAAAAAgEgooAEAAAAAiIQCGgAAAACASCigAQAAAACIhAIaAAAAAIBIKKABAAAAAIiE\nAhoAAAAAgEgooAEAAAAAiIQCGgAAAACASCigAQAAAACIhAIaAAAAAIBIKKABAAAAAIiEAhoA\nAAAAgEgooAEAAAAAiIQCGgAAAACASCigAQAAAACIhAIaAAAAAIBIKKABAAAAAIiEAhoAAAAA\ngEgooAEAAAAAiERasgOwRSsoKBgzZsy8efMSH5KSkpKRkZGXlxddqs1VVlZWCKGwsLCwsDDZ\nWUIIoX79+scdd1wsFkt2EACowGbNmvXyyy9v5C/uGRkZxcXFm8gVEMxEjQAAIABJREFURXQa\nNWrUvn37ZKcAAKjwFNAk06RJkx555JFkpyBpmjdv3qxZs2SnAIAKbPjw4Z9++mmyU2y2WrZs\n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\nkslkQUFBRUVFrgtpfG6//fZly5btueeevXr1ynUtjUxeXl4ikaiqqsp1IY3M559//vjjj4cQ\nTjjhhBYtWuS6nEamWbNm1dXVNTU1uS6kkXnllVfee++99u3bDx48ONe1NDKJRKJZs2Yb08tr\nSUnJqh4qLS3NZDKlpaUTJ04MIRx55JGrOZiVKigoqK2tra6uznUhjcxbb7315ptvFhUVHXPM\nMbmupZGpe45atmyZd69rauLEiaWlpTvvvHPfvn1zXUsjk0qlUqlUZWVlrgtpZBYtWnTvvfeG\nEAYPHty+fftcl9PIbHwvr1os6uXluoCmJZ1Op9PpEML06dMnTZq02267DR06NNdFNUotW7bM\ndQmNz+TJk8vKyrp37+41gOyYOXPmpEmTQginnnqqVUd2fPTRR5MmTdp+++2HDRuW61oapSby\n8tquXbsQwvz58+ueo4YMGeI5iuz47LPPJk2atMUWW5x55pm5rqVRaiLPUevXq6+++tFHHxUX\nFw8aNCjXtdAkVFRU1L28HnLIIV5egXq24AAAAAAAIAoBNAAAAAAAUQigAQAAAACIwocQAgAA\nAAAQhSugAQAAAACIQgANAAAAAEAUAmgAAAAAAKLIy3UBTdSfH7rxoZemzlqc6rbdLseeduK2\nrfJzXREbm9rquU/cccszb3349aLazbfadtAxJw/YoX3dQ5YfsVWVTTv1hIt3G3ffsPYt6kas\nOuL5+MUH75/85xkfzynu2O3QoWfu16tt3bhVx+pZIWSBfoxc0YyRTZox4Hu5AjoHPn7o4tET\n3+h72EmXnHlcq09eGnn2jTU+CZL17elR502YUjpo6NlXXXr+jzstvfHi0575fEmw/MiCTPXd\nI678qrKmfsCqI565U+885ze/26TPQSNGndO3S9n4UWdPK68OVh3fxwohO/Rj5IZmjCzSjAEN\nIYDOukzl2IendT36ssMH/LBn7x/9Yszp5V++eM/nZbkui41KTeWs296f1+e8EQf8cKetu+8w\nePjofYuTD97wnuVHFkx/6OLnK7b/132rjpjuuvbpjgMv/fmhA3ptv/uxp4/t1739Kx8usOr4\nHlYIWaEfI1c0Y2STZgxoCAF0tlUsmDKnsma/fTavu9usuN/OLQvefeGL3FbFRqZ66cdbde58\nUI/ibwcSO7VuVrVoieVHbGX/eOqSR74898qf1Y9YdcRTteTdVxYu2/+Ibb65n0idd8VVp+5c\n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\nAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 480,
       "width": 960
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(cyclistic_without_outliners, aes(x=rideable_type, y=ride_time_m, fill=member_casual)) +\n",
    "    geom_boxplot() +\n",
    "    facet_wrap(~ member_casual) +\n",
    "    labs(x=\"Rideable type\", y=\"Riding time\", title=\"Chart 10 - Distribution of Riding time for rideeable type\") +\n",
    "    coord_flip()"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0f7aacf0",
   "metadata": {
    "papermill": {
     "duration": 0.080301,
     "end_time": "2023-04-14T12:08:04.736340",
     "exception": false,
     "start_time": "2023-04-14T12:08:04.656039",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "* Electric bikes have less riding time than other bikes, for both members and casuals.\n",
    "* Docked bikes have more riding time. And for docked bikes, members have more riding time than casuals. "
   ]
  },
  {
   "cell_type": "markdown",
   "id": "a88d7210",
   "metadata": {
    "papermill": {
     "duration": 0.082166,
     "end_time": "2023-04-14T12:08:04.902134",
     "exception": false,
     "start_time": "2023-04-14T12:08:04.819968",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"analyze-guiding\"></a>\n",
    "## Guiding questions\n",
    "\n",
    "* **How should you organize your data to perform analysis on it?**\n",
    "\n",
    "The data has been organized into a single CSV concatenating all the files from the dataset.\n",
    "\n",
    "* **Has your data been properly formatted?**\n",
    "\n",
    "Yes, all the columns have their correct data type.\n",
    "\n",
    "* **What surprises did you discover in the data?**\n",
    "\n",
    "One of the main surprises is how members differ from casuals when analysed from weekdays. Also that members have less riding time than casual.\n",
    "\n",
    "* **What trends or relationships did you find in the data?**\n",
    "    * There are more members than casuals in the dataset.\n",
    "    * There are more data points in the last semester of 2020.\n",
    "    * There are more of a difference between the flow of members/casual from midweek to weekends.\n",
    "    * Members use bikes on schedules that differs from casual.\n",
    "    * Members have less riding time.\n",
    "    * Members tend to prefer docked bikes.\n",
    "\n",
    "\n",
    "* **How will these insights help answer your business questions?**\n",
    "\n",
    "This insights helps to build a profile for members."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "9c3d617a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-06-03T00:33:48.481028Z",
     "iopub.status.busy": "2021-06-03T00:33:48.478523Z",
     "iopub.status.idle": "2021-06-03T00:33:48.498006Z"
    },
    "papermill": {
     "duration": 0.082122,
     "end_time": "2023-04-14T12:08:05.066856",
     "exception": false,
     "start_time": "2023-04-14T12:08:04.984734",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"analyze-key\"></a>\n",
    "## Key tasks\n",
    "\n",
    "- [x] Aggregate your data so it’s useful and accessible.\n",
    "- [x] Organize and format your data.\n",
    "- [x] Perform calculations.\n",
    "- [x] Identify trends and relationships."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "5ee921c3",
   "metadata": {
    "papermill": {
     "duration": 0.084988,
     "end_time": "2023-04-14T12:08:05.233889",
     "exception": false,
     "start_time": "2023-04-14T12:08:05.148901",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"analyze-deliverable\"></a>\n",
    "## Deliverable\n",
    "\n",
    "- [x] A summary of your analysis"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f75a726f",
   "metadata": {
    "papermill": {
     "duration": 0.078433,
     "end_time": "2023-04-14T12:08:05.393812",
     "exception": false,
     "start_time": "2023-04-14T12:08:05.315379",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"share\"></a>\n",
    "# Share\n",
    "\n",
    "The share phase is usually done by building a presentation. But for kaggle, the best representation of the analysis and conclusions is it's own notebook.\n",
    "\n",
    "Let's go through the main finds and try to arrive at a conclusion.\n",
    "\n",
    "\n",
    "What we know about the dataset:\n",
    "* Members have the biggest proportion of the dataset, ~19% bigger thand casuals.\n",
    "* There's more data points at the last semester of 2020.\n",
    "* The month with the biggest count of data points was August with ~18% of the dataset.\n",
    "* In all months we have more members' rides than casual rides.\n",
    "* The difference of proporcion of member x casual is smaller in the last semester of 2020.\n",
    "* Temperature heavily influences the volume of rides in the month.\n",
    "* The biggest volume of data is on the the weekend.\n",
    "* There's a bigger volume of bikers in the afternoon.\n",
    "\n",
    "It's possible to notice that the distribution of rides by month is cyclical through years, as seen on chart 02 and it's influenced by the temperature. The remaining question is: Why are there more members than casual? One plausible answer is that members have a bigger need for the bikes than casuals, as can be seen on how there are more members than casuals on cold months.\n",
    "\n",
    "Besides that, we have more bike rides on the weekends. Maybe because on those days the bikes were utilized for more recreational ways. This even more plausible when knowing that *There's a bigger volume of bikers in the afternoon*.\n",
    "\n",
    "Now for how members differs from casuals:\n",
    "* Members may have the biggest volume of data, besides on saturday. On this weekday, casuals take place as having the most data points.\n",
    "* Weekends have the biggest volume of casuals, starting on friday, a ~20% increase.\n",
    "* We have more members during the morning, mainly between 5am and 11am. And more casuals between 11pm and 4am.\n",
    "* There's a big increase of data points in the midweek between 6am to 8am for members. Then it fell a bit. Another big increase is from 5pm to 6pm.\n",
    "* During the weekend we have a bigger flow of casuals between 11am to 6pm.\n",
    "* Members have a bigger preference for classic bikes, 56% more.\n",
    "* Casuals have more riding time than members.\n",
    "* Riding time for members keeps unchanged during the midweek, increasing during weekends.\n",
    "* Casuals follow a more curve distribution, peaking on sundays and valleying on wednesday/thursday.\n",
    "\n",
    "What we can take from this information is that members have a more fixed use for bikes besides casuals. Their uses is for more routine activities, like:\n",
    "* Go to work.\n",
    "* Use it as an exercise.\n",
    "\n",
    "This can be proven we state that *we have more members in between 6am to 8am and at 5pm to 6pm*. Also, members may have set routes when using the bikes, as proven by *riding time for members keeps unchanged during the midweek, increasing during weekends*. The bikes is also \n",
    "heavily used for recreation on the weekends, when riding time increases and casuals take place. \n",
    "\n",
    "Members also have a bigger preference for classic bikes, so they can exercise when going to work.\n",
    "\n",
    "Concluding:\n",
    "* Members use the bikes for fixed activities, one of those is going to work.\n",
    "* Bikes are used for recreation on the weekends.\n",
    "* Rides are influenced by temperature.\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "bdfd1417",
   "metadata": {
    "papermill": {
     "duration": 0.079087,
     "end_time": "2023-04-14T12:08:05.552369",
     "exception": false,
     "start_time": "2023-04-14T12:08:05.473282",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"share-guiding\"></a>\n",
    "## Guiding questions\n",
    "\n",
    "* **Were you able to answer the question of how annual members and casual riders use Cyclistic bikes differently?**\n",
    "\n",
    "Yes. The data points to several differences between casuals and members.\n",
    "\n",
    "* **What story does your data tell?**\n",
    "\n",
    "The main story the data tells is that members have set schedules, as seen on chart 06 on key timestamps. Those timestamps point out that members use the bikes for routine activities, like going to work. Charts like 08 also point out that they have less riding time, because they have a set route to take.\n",
    "\n",
    "* **How do your findings relate to your original question?**\n",
    "\n",
    "The findings build a profile for members, relating to \"*Find the keys differences between casuals and annual riders*\", also knowing whey they use the bikes helps to find \"*How digital media could influence them*\".\n",
    "\n",
    "* **Who is your audience? What is the best way to communicate with them?**\n",
    "\n",
    "The main target audience is my cyclistic marketing analytics team and Lily Moreno. The best way to communicate is through a slide presentation of the findings.\n",
    "\n",
    "* **Can data visualization help you share your findings?**\n",
    "\n",
    "Yes, the main core of the finds is through data visualization.\n",
    "\n",
    "* **Is your presentation accessible to your audience?**\n",
    "\n",
    "Yes, the plots were made using vibrant colors, and corresponding labels."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "52b2fe26",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-06-03T00:54:29.86861Z",
     "iopub.status.busy": "2021-06-03T00:54:29.866276Z",
     "iopub.status.idle": "2021-06-03T00:54:29.916599Z"
    },
    "papermill": {
     "duration": 0.080603,
     "end_time": "2023-04-14T12:08:05.712840",
     "exception": false,
     "start_time": "2023-04-14T12:08:05.632237",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"share-key\"></a>\n",
    "## Key tasks\n",
    "\n",
    "- [x] Determine the best way to share your findings.\n",
    "- [x] Create effective data visualizations.\n",
    "- [x] Present your findings.\n",
    "- [x] Ensure your work is accessible."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fdbc0e6e",
   "metadata": {
    "papermill": {
     "duration": 0.079676,
     "end_time": "2023-04-14T12:08:05.872755",
     "exception": false,
     "start_time": "2023-04-14T12:08:05.793079",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"share-deliverable\"></a>\n",
    "## Deliverable\n",
    "\n",
    "- [x] Supporting visualizations and key findings"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "07db1264",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-06-03T02:09:14.765232Z",
     "iopub.status.busy": "2021-06-03T02:09:14.763399Z",
     "iopub.status.idle": "2021-06-03T02:09:14.777361Z"
    },
    "papermill": {
     "duration": 0.078515,
     "end_time": "2023-04-14T12:08:06.030668",
     "exception": false,
     "start_time": "2023-04-14T12:08:05.952153",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"act\"></a>\n",
    "# Act\n",
    "\n",
    "The act phase would be done by the marketing team of the company. The main takeaway will be the top three recommendations for the marketing."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "155a38c2",
   "metadata": {
    "papermill": {
     "duration": 0.078759,
     "end_time": "2023-04-14T12:08:06.187604",
     "exception": false,
     "start_time": "2023-04-14T12:08:06.108845",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"act-guiding\"></a>\n",
    "## Guiding questions\n",
    "\n",
    "* **What is your final conclusion based on your analysis?**\n",
    "\n",
    "Members and casual have different habits when using the bikes. The conclusion is further stated on the share phase.\n",
    "\n",
    "* **How could your team and business apply your insights?**\n",
    "\n",
    "The insights could be implemented when preparing a marketing campaign for turning casual into members. The marketing can have a focus on workers as a green way to get to work.\n",
    "\n",
    "* **What next steps would you or your stakeholders take based on your findings?**\n",
    "\n",
    "Further analysis could be done to improve the findings, besides that, the marketing team can take the main information to build a marketing campaign.\n",
    "\n",
    "* **Is there additional data you could use to expand on your findings?**\n",
    "    * Mobility data.\n",
    "    * Improved climate data.\n",
    "    * More information members."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ff4c0b17",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2021-06-03T02:17:44.321962Z",
     "iopub.status.busy": "2021-06-03T02:17:44.320263Z",
     "iopub.status.idle": "2021-06-03T02:17:44.3364Z"
    },
    "papermill": {
     "duration": 0.078629,
     "end_time": "2023-04-14T12:08:06.344525",
     "exception": false,
     "start_time": "2023-04-14T12:08:06.265896",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"act-key\"></a>\n",
    "## Key tasks\n",
    "\n",
    "- [x] Create your portfolio.\n",
    "- [x] Add your case study.\n",
    "- [x] Practice presenting your case study to a friend or family member."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "db128df7",
   "metadata": {
    "papermill": {
     "duration": 0.078163,
     "end_time": "2023-04-14T12:08:06.500777",
     "exception": false,
     "start_time": "2023-04-14T12:08:06.422614",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"act-deliverable\"></a>\n",
    "## Deliverable\n",
    "\n",
    "* Your top three recommendations based on your analysis\n",
    "1. Build a marketing campaign focusing on show how bikes help people to get to work, while maintaining the planet green and avoid traffic. The ads could be show on  professional social networks.\n",
    "2. Increase benefits for riding during cold months. Coupons and discounts could be handed out.\n",
    "3. As the bikes are also used for recreations on the weekends, ads campaigns could also be made showing people using the bikes for exercise during the weeks. The ads could focus on how practical and **consistent** the bikes can be."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "de2f7ab8",
   "metadata": {
    "papermill": {
     "duration": 0.082613,
     "end_time": "2023-04-14T12:08:06.661342",
     "exception": false,
     "start_time": "2023-04-14T12:08:06.578729",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "<a id=\"conclusion\"></a>\n",
    "# Conclusion\n",
    "\n",
    "The [Google Analytics Professional Certificate](https://www.coursera.org/professional-certificates/google-data-analytics?utm_source=gg&utm_medium=sem&utm_campaign=15-GoogleDataAnalytics-LATAM&utm_content=15-GoogleDataAnalytics-LATAM&campaignid=12686019520&adgroupid=120140812253&device=c&keyword=google%20analytics%20course&matchtype=b&network=g&devicemodel=&adpostion=&creativeid=512414119178&hide_mobile_promo&gclid=EAIaIQobChMIwPGyn7f68AIVAgyRCh2nCwfVEAAYAyAAEgKjpvD_BwE) helped me understand the knitty gritties of data analysis and create a foundation to further explore the world of data analysis."
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "4d5b16ed",
   "metadata": {
    "papermill": {
     "duration": 0.078941,
     "end_time": "2023-04-14T12:08:06.818710",
     "exception": false,
     "start_time": "2023-04-14T12:08:06.739769",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "3.6.3"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 507.372429,
   "end_time": "2023-04-14T12:08:07.952350",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2023-04-14T11:59:40.579921",
   "version": "2.3.3"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}

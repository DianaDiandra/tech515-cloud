 [Intro to cloud](#intro-to-cloud)
- [Intro to cloud](#intro-to-cloud)
  - [How we have used the cloud](#how-we-have-used-the-cloud)
  - [Questions we have](#questions-we-have)
  - [What is cloud computing?](#what-is-cloud-computing)
    - on-demand delivery of computing power, storage, applications or other IT resources
    - Usually has pau-as-you-go pricing
    - You can access many resources, almsot instantly
    - Cloud provider usually own and maintain the network & hardware
    ### How do we know if something is in the cloud?
    To determine whether a system or service is “in the cloud,” we typically look for these characteristics:

    - **Delivered as a service over the Internet:**
      Cloud resources are accessed remotely rather than installed locally on a physical machine.

    - **Available on demand:**
      Users can scale resources up or down instantly without manual hardware setup.

    - **Centrally managed:**
      Infrastructure, updates, security, and maintenance are handled by the cloud provider rather than local IT teams.

    ### Differences between On-Premises and Cloud
    **On-Premises (On-Prem):**
    - Hardware and servers are physically located within the organization.
    - The company manages installation, updates, security, and scaling.
    - Higher upfront cost and limited flexibility.

    **Cloud:**
    - Resources are hosted and maintained by a cloud provider (AWS, Azure, GCP).
    - Pay-as-you-go pricing with flexible scaling.
    - Accessed over the Internet with reduced need for on-site hardware.

  - [4 deployment models of cloud: private vs public vs hybrid vs multi-cloud](#4-deployment-models-of-cloud-private-vs-public-vs-hybrid-vs-multi-cloud)
   #### Public cloud ("multi-tenant")
    - owned & operated by a 3rd party cloud service provider
    - available to anyone over the internet
    - shared with the public
    #### Private cloud ("single-tenant cloud")
    - cloud infrastructure dedicated to a private organisation
    - could be owned by the organisation
    - could be hosted by a 3rd party organisation
    - could be used when there is no internet access (e.g. on a cruise ship)
    - advantages: complete control, security for sensitive apps/data
   #### Multi-cloud
    - Multi-cloud refers to the use of **multiple cloud providers** (e.g., AWS, Azure, GCP) within a single organization.
    - This approach helps increase flexibility, avoid vendor lock-in, optimize costs, and take advantage of unique services offered by different providers. For example, a company might use AWS for computing, GCP for machine learning, and Azure for enterprise integrations.

    #### Hybrid-cloud (a mix of on-premises cloud and public cloud)
    - Hybrid-cloud is a model where an organization combines **on-premises infrastructure** (private cloud or local data center) with a **public cloud** provider.
    - This allows data and applications to move between environments. It is especially useful for companies that need to keep sensitive data on-site while still benefiting from the scalability and elasticity of the public cloud.

  - [Types of cloud services](#types-of-cloud-services-iaas-paas-saas)

    - IaaS, PaaS, SaaS

  - [What are the advantages/disadvantages of the cloud? (Particularly for a business)](#what-are-the-advantagesdisadvantages-of-the-cloud-particularly-for-a-business)

  ### Advantages
  1. **Scalability**
     - Services like **Compute Engine** and **Kubernetes Engine** allow businesses to scale resources up or down.
     - Example: Retail websites handling traffic spikes during Black Friday without over-provisioning.

  2. **Cost Efficiency**
     - Pay-as-you-go pricing reduces upfront hardware costs.

  3. **Global Reach and Performance**
     - Multi-region and edge network options (Cloud CDN, Global Load Balancing) allow low-latency access worldwide.

  4. **Security and Compliance**
     - Built-in security, DDoS protection, **Cloud IAM**, and certifications like ISO, GDPR, HIPAA.

  5. **Managed Services and Innovation**
     - Focus on business logic rather than infrastructure with services like **BigQuery**, **Cloud SQL**, **App Engine**, and AI/ML APIs.

  6. **Disaster Recovery & Reliability**
     - Automatic backups, multi-region replication, and **99.99% SLA services** reduce downtime risks.

  ### Disadvantages (GCP context)
  1. **Ongoing Costs**
     - Costs can accumulate if resources aren’t managed efficiently.

  2. **Vendor Lock-In**
     - Heavy reliance on GCP-specific services can make migration difficult.

  3. **Limited Control**
     - Managed services abstract infrastructure; less granular control over configurations.

  4. **Learning Curve**
     - Teams may need training to fully leverage GCP services.

  5. **Latency Concerns**
     - Applications with strict latency requirements may face challenges if compute/storage i
    - [Difference between OpEx vs CapEx and how it relates the cloud]

| Aspect        | CapEx (Capital Expenditure)                 | OpEx (Operational Expenditure)                       | Relation to GCP                                                   |
|---------------|-------------------------------------------|------------------------------------------------------|------------------------------------------------------------------|
| **Definition** | Upfront spending on physical assets        | Ongoing operational spending (subscriptions, usage) | Cloud shifts spending from CapEx → OpEx                          |
| **Cost Timing** | Paid upfront                              | Paid as you go                                       | GCP bills monthly or by usage (Compute Engine, BigQuery, Storage)|
| **Risk**       | Higher upfront financial risk; may become outdated | Flexible; costs align with usage                     | No need to buy hardware; scale instances as needed               |
| **Accounting** | Depreciated over time                      | Fully deductible as an expense                       | Expenses appear in OpEx, improving cash flow                     |
| **Example**    | Buying servers and storage racks           | Paying GCP per VM/hour or per GB stored              | Run 10–50 Compute Engine instances on demand instead of buying a 50-server cluster |

    - [Is migrating to the cloud always cheaper?](#is-migrating-to-the-cloud-always-cheaper)
    - [Guaranteed levels of service](#guaranteed-levels-of-service)
  - [Marketshare - Who are the biggest cloud providers?](#marketshare---who-are-the-biggest-cloud-providers)
  The cloud market is dominated by a few major providers:

  1. **Amazon Web Services (AWS)**
     - Largest market share (~33–34%)
     - Offers a wide range of services: compute, storage, databases, AI/ML, analytics, and more.

  2. **Microsoft Azure**
     - Second largest (~21–22%)
     - Strong in enterprise adoption due to integration with Microsoft products like Office 365 and Windows Server.

  3. **Google Cloud Platform (GCP)**
     - Around 10% market share (growing)
     - Known for data analytics, AI/ML capabilities, and global network performance.

  4. **Others**
     - IBM Cloud, Oracle Cloud, Alibaba Cloud, and smaller niche providers.
  - [Which cloud provider do you think might be the best?](#which-cloud-provider-do-you-think-might-be-the-best)

| Provider | Strengths | Ideal Use Cases |
|----------|----------|----------------|
| **AWS** | Largest ecosystem, mature services | Any workload, especially startups and companies needing a wide variety of services |
| **Azure** | Enterprise integration, hybrid cloud | Businesses using Microsoft products heavily |
| **GCP** | AI/ML, analytics, global networking | Data-intensive workloads, AI/ML applications, startups focused on innovation |
  - [What sorts of things do you usually need to pay for when using the cloud?- Intro to cloud](#what-sorts-of-things-do-you-usually-need-to-pay-for-when-using-the-cloud--intro-to-cloud)
1. **Compute Resources**
   - Virtual machines, containers, serverless functions
   - Billed per CPU-hour, memory, or execution time

2. **Storage**
   - Object storage (S3, Cloud Storage), block storage (EBS, Persistent Disk)
   - Billed per GB stored and sometimes per I/O operation

3. **Networking**
   - Data transfer (egress) between regions or to the internet
   - Load balancers, VPN, CDN usage

4. **Databases**
   - Managed relational or NoSQL databases
   - Billed per instance, storage, and read/write operations

5. **Managed Services**
   - AI/ML APIs, analytics platforms, monitoring tools
   - Typically usage-based pricing

6. **Support and Licenses**
   - Optional premium support plans
   - Software licenses (Windows, SQL Server) in cloud environments

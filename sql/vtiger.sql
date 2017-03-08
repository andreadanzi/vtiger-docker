-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: vtiger
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `com_vtiger_workflow_activatedonce`
--

DROP TABLE IF EXISTS `com_vtiger_workflow_activatedonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_vtiger_workflow_activatedonce` (
  `workflow_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  PRIMARY KEY (`workflow_id`,`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_vtiger_workflow_activatedonce`
--

LOCK TABLES `com_vtiger_workflow_activatedonce` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflow_activatedonce` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflow_activatedonce` VALUES (2,30);
/*!40000 ALTER TABLE `com_vtiger_workflow_activatedonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflow_tasktypes`
--

DROP TABLE IF EXISTS `com_vtiger_workflow_tasktypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_vtiger_workflow_tasktypes` (
  `id` int(11) NOT NULL,
  `tasktypename` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `classpath` varchar(255) DEFAULT NULL,
  `templatepath` varchar(255) DEFAULT NULL,
  `modules` varchar(500) DEFAULT NULL,
  `sourcemodule` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_vtiger_workflow_tasktypes`
--

LOCK TABLES `com_vtiger_workflow_tasktypes` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflow_tasktypes` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflow_tasktypes` VALUES (1,'VTEmailTask','Send Mail','VTEmailTask','modules/com_vtiger_workflow/tasks/VTEmailTask.inc','com_vtiger_workflow/taskforms/VTEmailTask.tpl','{\"include\":[],\"exclude\":[]}',''),(2,'VTEntityMethodTask','Invoke Custom Function','VTEntityMethodTask','modules/com_vtiger_workflow/tasks/VTEntityMethodTask.inc','com_vtiger_workflow/taskforms/VTEntityMethodTask.tpl','{\"include\":[],\"exclude\":[]}',''),(3,'VTCreateTodoTask','Create Todo','VTCreateTodoTask','modules/com_vtiger_workflow/tasks/VTCreateTodoTask.inc','com_vtiger_workflow/taskforms/VTCreateTodoTask.tpl','{\"include\":[\"Leads\",\"Accounts\",\"Potentials\",\"Contacts\",\"HelpDesk\",\"Campaigns\",\"Quotes\",\"PurchaseOrder\",\"SalesOrder\",\"Invoice\"],\"exclude\":[\"Calendar\",\"FAQ\",\"Events\"]}',''),(4,'VTCreateEventTask','Create Event','VTCreateEventTask','modules/com_vtiger_workflow/tasks/VTCreateEventTask.inc','com_vtiger_workflow/taskforms/VTCreateEventTask.tpl','{\"include\":[\"Leads\",\"Accounts\",\"Potentials\",\"Contacts\",\"HelpDesk\",\"Campaigns\"],\"exclude\":[\"Calendar\",\"FAQ\",\"Events\"]}',''),(5,'VTUpdateFieldsTask','Update Fields','VTUpdateFieldsTask','modules/com_vtiger_workflow/tasks/VTUpdateFieldsTask.inc','com_vtiger_workflow/taskforms/VTUpdateFieldsTask.tpl','{\"include\":[],\"exclude\":[]}',''),(6,'VTCreateEntityTask','Create Entity','VTCreateEntityTask','modules/com_vtiger_workflow/tasks/VTCreateEntityTask.inc','com_vtiger_workflow/taskforms/VTCreateEntityTask.tpl','{\"include\":[],\"exclude\":[]}',''),(7,'VTSMSTask','SMS Task','VTSMSTask','modules/com_vtiger_workflow/tasks/VTSMSTask.inc','com_vtiger_workflow/taskforms/VTSMSTask.tpl','{\"include\":[],\"exclude\":[]}','SMSNotifier');
/*!40000 ALTER TABLE `com_vtiger_workflow_tasktypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflow_tasktypes_seq`
--

DROP TABLE IF EXISTS `com_vtiger_workflow_tasktypes_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_vtiger_workflow_tasktypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_vtiger_workflow_tasktypes_seq`
--

LOCK TABLES `com_vtiger_workflow_tasktypes_seq` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflow_tasktypes_seq` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflow_tasktypes_seq` VALUES (7);
/*!40000 ALTER TABLE `com_vtiger_workflow_tasktypes_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflows`
--

DROP TABLE IF EXISTS `com_vtiger_workflows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_vtiger_workflows` (
  `workflow_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) DEFAULT NULL,
  `summary` varchar(400) NOT NULL,
  `test` text,
  `execution_condition` int(11) NOT NULL,
  `defaultworkflow` int(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `filtersavedinnew` int(1) DEFAULT NULL,
  `schtypeid` int(10) DEFAULT NULL,
  `schdayofmonth` varchar(100) DEFAULT NULL,
  `schdayofweek` varchar(100) DEFAULT NULL,
  `schannualdates` varchar(100) DEFAULT NULL,
  `schtime` varchar(50) DEFAULT NULL,
  `nexttrigger_time` datetime DEFAULT NULL,
  PRIMARY KEY (`workflow_id`),
  UNIQUE KEY `com_vtiger_workflows_idx` (`workflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_vtiger_workflows`
--

LOCK TABLES `com_vtiger_workflows` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflows` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflows` VALUES (1,'Invoice','UpdateInventoryProducts On Every Save','[{\"fieldname\":\"subject\",\"operation\":\"does not contain\",\"value\":\"`!`\"}]',3,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(2,'Accounts','Send Email to user when Notifyowner is True','[{\"fieldname\":\"notify_owner\",\"operation\":\"is\",\"value\":\"1\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]',2,1,'basic',6,0,'0','0','0','0','0000-00-00 00:00:00'),(3,'Contacts','Send Email to user when Notifyowner is True','[{\"fieldname\":\"notify_owner\",\"operation\":\"is\",\"value\":\"true:boolean\"}]',2,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Contacts','Send Email to user when Portal User is True','[{\"fieldname\":\"portal\",\"operation\":\"is\",\"value\":\"true:boolean\"}]',2,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Potentials','Send Email to users on Potential creation',NULL,1,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Contacts','Workflow for Contact Creation or Modification','',3,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(7,'HelpDesk','Ticket Creation From Portal : Send Email to Record Owner and Contact','[{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":1,\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":0},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"1\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]',1,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(9,'HelpDesk','Send Email to Contact on Ticket Update','[{\"fieldname\":\"(contact_id : (Contacts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":0,\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":0},{\"fieldname\":\"ticketstatus\",\"operation\":\"has changed to\",\"value\":\"Closed\",\"valuetype\":\"rawtext\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"solution\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"description\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"}]',3,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Events','Workflow for Events when Send Notification is True','[{\"fieldname\":\"sendnotification\",\"operation\":\"is\",\"value\":\"true:boolean\"}]',3,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Calendar','Workflow for Calendar Todos when Send Notification is True','[{\"fieldname\":\"sendnotification\",\"operation\":\"is\",\"value\":\"true:boolean\"}]',3,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Potentials','Calculate or Update forecast amount','',3,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Events','Workflow for Events when Send Notification is True','[{\"fieldname\":\"sendnotification\",\"operation\":\"is\",\"value\":\"true:boolean\"}]',3,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Calendar','Workflow for Calendar Todos when Send Notification is True','[{\"fieldname\":\"sendnotification\",\"operation\":\"is\",\"value\":\"true:boolean\"}]',3,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(15,'HelpDesk','Comment Added From CRM : Send Email to Organization','[{\"fieldname\":\"_VT_add_comment\",\"operation\":\"is added\",\"value\":\"\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"(parent_id : (Accounts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]',3,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(16,'PurchaseOrder','Update Inventory Products On Every Save',NULL,3,1,'basic',5,NULL,NULL,NULL,NULL,NULL,NULL),(17,'HelpDesk','Comment Added From Portal : Send Email to Record Owner','[{\"fieldname\":\"_VT_add_comment\",\"operation\":\"is added\",\"value\":\"\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"1\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]',3,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(18,'HelpDesk','Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User','[{\"fieldname\":\"(contact_id : (Contacts) portal)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"_VT_add_comment\",\"operation\":\"is added\",\"value\":\"\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"(contact_id : (Contacts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]',3,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(19,'HelpDesk','Comment Added From CRM : Send Email to Contact, where Contact is Portal User','[{\"fieldname\":\"(contact_id : (Contacts) portal)\",\"operation\":\"is\",\"value\":\"1\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"_VT_add_comment\",\"operation\":\"is added\",\"value\":\"\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"(contact_id : (Contacts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]',3,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(20,'HelpDesk','Send Email to Record Owner on Ticket Update','[{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":0,\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":0},{\"fieldname\":\"ticketstatus\",\"operation\":\"has changed to\",\"value\":\"Closed\",\"valuetype\":\"rawtext\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"solution\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"assigned_user_id\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"description\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"}]',3,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(21,'HelpDesk','Ticket Creation From CRM : Send Email to Record Owner','[{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]',1,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(22,'HelpDesk','Send Email to Organization on Ticket Update','[{\"fieldname\":\"(parent_id : (Accounts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":0,\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":0},{\"fieldname\":\"ticketstatus\",\"operation\":\"has changed to\",\"value\":\"Closed\",\"valuetype\":\"rawtext\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"solution\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"},{\"fieldname\":\"description\",\"operation\":\"has changed\",\"value\":\"\",\"valuetype\":\"\",\"joincondition\":\"or\",\"groupjoin\":\"and\",\"groupid\":\"1\"}]',3,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(23,'HelpDesk','Ticket Creation From CRM : Send Email to Organization','[{\"fieldname\":\"(parent_id : (Accounts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]',1,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL),(24,'HelpDesk','Ticket Creation From CRM : Send Email to Contact','[{\"fieldname\":\"(contact_id : (Contacts) emailoptout)\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"and\",\"groupjoin\":\"and\",\"groupid\":\"0\"},{\"fieldname\":\"from_portal\",\"operation\":\"is\",\"value\":\"0\",\"valuetype\":\"rawtext\",\"joincondition\":\"\",\"groupjoin\":\"and\",\"groupid\":\"0\"}]',1,1,'basic',6,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `com_vtiger_workflows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflows_seq`
--

DROP TABLE IF EXISTS `com_vtiger_workflows_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_vtiger_workflows_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_vtiger_workflows_seq`
--

LOCK TABLES `com_vtiger_workflows_seq` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflows_seq` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflows_seq` VALUES (24);
/*!40000 ALTER TABLE `com_vtiger_workflows_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflowtask_queue`
--

DROP TABLE IF EXISTS `com_vtiger_workflowtask_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_vtiger_workflowtask_queue` (
  `task_id` int(11) DEFAULT NULL,
  `entity_id` varchar(100) DEFAULT NULL,
  `do_after` int(11) DEFAULT NULL,
  `task_contents` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_vtiger_workflowtask_queue`
--

LOCK TABLES `com_vtiger_workflowtask_queue` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflowtask_queue` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflowtask_queue` VALUES (6,'12x6',0,'{\"fromEmail\":\"andrea.dnz@gmail.com\",\"fromName\":\"admin\",\"toEmail\":\"andrea.dnz@gmail.com\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Regarding Contact Assignment\",\"content\":\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON1<\\/b><br>LastName:<b>Danzi<\\/b><br>FirstName:<b>Andrea<\\/b><br>Lead Source:<b><\\/b><br>Department:<b><\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-andrea@danzi.tn.it<br><br>Thank You<br>Admin\"}'),(5,'13x14',0,'{\"fromEmail\":\"andrea.dnz@gmail.com\",\"fromName\":\"admin\",\"toEmail\":\"andrea.dnz@gmail.com\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Regarding Potential Assignment\",\"content\":\"An Potential has been assigned to you on vtigerCRM<br>Details of Potential are :<br><br>Potential No:<b>POT1<\\/b><br>Potential Name:<b>Gestione commerciale SWS Engineering<\\/b><br>Amount:<b>0<\\/b><br>Expected Close Date:<b>13-04-2017 (dd-mm-yyyy)<\\/b><br>Type:<b>Business Esistente<\\/b><br><br><br>Description :<br><br>Thank You<br>Admin\"}'),(6,'12x15',0,'{\"fromEmail\":\"andrea.dnz@gmail.com\",\"fromName\":\"admin\",\"toEmail\":\"andrea.dnz@gmail.com\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Regarding Contact Assignment\",\"content\":\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON2<\\/b><br>LastName:<b>Cucino<\\/b><br>FirstName:<b>Paolo<\\/b><br>Lead Source:<b><\\/b><br>Department:<b><\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-<br><br>Thank You<br>Admin\"}'),(6,'12x15',0,'{\"fromEmail\":\"agente@openon.it\",\"fromName\":\"agente\",\"toEmail\":\"agente@openon.it\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Regarding Contact Assignment\",\"content\":\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON2<\\/b><br>LastName:<b>Cucino<\\/b><br>FirstName:<b>Paolo<\\/b><br>Lead Source:<b><\\/b><br>Department:<b><\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-<br><br>Thank You<br>Admin\"}'),(6,'12x6',0,'{\"fromEmail\":\"agente@openon.it\",\"fromName\":\"agente\",\"toEmail\":\"agente@openon.it\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Regarding Contact Assignment\",\"content\":\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON1<\\/b><br>LastName:<b>Danzi<\\/b><br>FirstName:<b>Andrea<\\/b><br>Lead Source:<b><\\/b><br>Department:<b><\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-andrea@danzi.tn.it<br><br>Thank You<br>Admin\"}'),(5,'13x17',0,'{\"fromEmail\":\"agente@openon.it\",\"fromName\":\"agente\",\"toEmail\":\"agente@openon.it\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Regarding Potential Assignment\",\"content\":\"An Potential has been assigned to you on vtigerCRM<br>Details of Potential are :<br><br>Potential No:<b>POT2<\\/b><br>Potential Name:<b>Nuova fornitura<\\/b><br>Amount:<b>10,000.00<\\/b><br>Expected Close Date:<b>30-04-2017 (dd-mm-yyyy)<\\/b><br>Type:<b><\\/b><br><br><br>Description :<br><br>Thank You<br>Admin\"}'),(6,'12x26',0,'{\"fromEmail\":\"vendite@openon.it\",\"fromName\":\"vendite\",\"toEmail\":\"vendite@openon.it\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Regarding Contact Assignment\",\"content\":\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON3<\\/b><br>LastName:<b>Menapace<\\/b><br>FirstName:<b>Alessandra<\\/b><br>Lead Source:<b><\\/b><br>Department:<b><\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-ale.menapace20@gmail.com<br><br>Thank You<br>Admin\"}'),(6,'12x26',0,'{\"fromEmail\":\"vendite@openon.it\",\"fromName\":\"vendite\",\"toEmail\":\"vendite@openon.it\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Regarding Contact Assignment\",\"content\":\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON3<\\/b><br>LastName:<b>Menapace<\\/b><br>FirstName:<b>Alessandra<\\/b><br>Lead Source:<b>Direct Mail<\\/b><br>Department:<b><\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-ale.menapace20@gmail.com<br><br>Thank You<br>Admin\"}'),(6,'12x26',0,'{\"fromEmail\":\"vendite@openon.it\",\"fromName\":\"vendite\",\"toEmail\":\"vendite@openon.it\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Regarding Contact Assignment\",\"content\":\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON3<\\/b><br>LastName:<b>Menapace<\\/b><br>FirstName:<b>Alessandra<\\/b><br>Lead Source:<b>Direct Mail<\\/b><br>Department:<b><\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-ale.menapace20@gmail.com<br><br>Thank You<br>Admin\"}'),(2,'11x30',0,'{\"fromEmail\":\"andrea.dnz@gmail.com\",\"fromName\":\"admin\",\"toEmail\":\"sales.manager@openon.it, vendite@openon.it, agente@openon.it, tec.manager@openon.it, tecnico@openon.it, consulente@openon.it\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Regarding Account Creation\",\"content\":\"An Account has been assigned to you on vtigerCRM<br>Details of account are :<br><br>AccountId:<b>ACC5<\\/b><br>AccountName:<b>CIAMP<\\/b><br>Rating:<b><\\/b><br>Industry:<b><\\/b><br>AccountType:<b><\\/b><br>Description:<b><\\/b><br><br><br>Thank You<br>Admin\"}'),(25,'17x37',0,'{\"fromEmail\":\"andrea.dnz@gmail.com\",\"fromName\":\"your-support name\",\"toEmail\":\",agente@openon.it\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Ticket Number : TT1 Appuntamento\",\"content\":\"Ticket ID : 37<br>Ticket Title : Appuntamento<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tDear Rizzi Gianni (ag),<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tThe Ticket is replied the details are :<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tTicket No : TT1<br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tStatus : Aperto<br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tCategory : <br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tSeverity : <br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tPriority : <br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tDescription : <br>Buongiornochiedo vs disponibilit\\u00e0 per discutere costruzione case schiera zona Ravinatel 787878Sig Verdi Luca<br \\/>\\n<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tSolution : <br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tRegards<br>Support Administrator\"}'),(27,'17x37',0,'{\"fromEmail\":\"andrea.dnz@gmail.com\",\"fromName\":\"your-support name\",\"toEmail\":\",alessandra_menapace@hotmail.com\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"TT1 [ Ticket Id : 37 ] Appuntamento\",\"content\":\"Ticket ID : 37<br>Ticket Title : Appuntamento<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tDear Impresa Casa Pi\\u00f9,<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tThe Ticket is replied the details are :<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tTicket No : TT1<br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tStatus : Aperto<br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tCategory : <br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tSeverity : <br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tPriority : <br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tDescription : <br>Buongiornochiedo vs disponibilit\\u00e0 per discutere costruzione case schiera zona Ravinatel 787878Sig Verdi Luca<br \\/>\\n<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tSolution : <br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tThe comments are : <br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tRegards<br>Support Administrator\"}'),(5,'13x39',0,'{\"fromEmail\":\"andrea.dnz@gmail.com\",\"fromName\":\"admin\",\"toEmail\":\"andrea.dnz@gmail.com\",\"ccEmail\":\"\",\"bccEmail\":\"\",\"subject\":\"Regarding Potential Assignment\",\"content\":\"An Potential has been assigned to you on vtigerCRM<br>Details of Potential are :<br><br>Potential No:<b>POT3<\\/b><br>Potential Name:<b>Opp da MailManager<\\/b><br>Amount:<b>0<\\/b><br>Expected Close Date:<b>15-03-2017 (dd-mm-yyyy)<\\/b><br>Type:<b><\\/b><br><br><br>Description :<br><br>Thank You<br>Admin\"}');
/*!40000 ALTER TABLE `com_vtiger_workflowtask_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflowtasks`
--

DROP TABLE IF EXISTS `com_vtiger_workflowtasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_vtiger_workflowtasks` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_id` int(11) DEFAULT NULL,
  `summary` varchar(400) NOT NULL,
  `task` text,
  PRIMARY KEY (`task_id`),
  UNIQUE KEY `com_vtiger_workflowtasks_idx` (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_vtiger_workflowtasks`
--

LOCK TABLES `com_vtiger_workflowtasks` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflowtasks` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflowtasks` VALUES (1,1,'','O:18:\"VTEntityMethodTask\":6:{s:18:\"executeImmediately\";b:1;s:10:\"workflowId\";i:1;s:7:\"summary\";s:0:\"\";s:6:\"active\";b:1;s:10:\"methodName\";s:15:\"UpdateInventory\";s:2:\"id\";i:1;}'),(2,2,'An account has been created ','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:1:\"2\";s:7:\"summary\";s:28:\"An account has been created \";s:6:\"active\";s:1:\"1\";s:10:\"methodName\";s:11:\"NotifyOwner\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:26:\"Regarding Account Creation\";s:7:\"content\";s:301:\"An Account has been assigned to you on vtigerCRM<br>Details of account are :<br><br>AccountId:<b>$account_no</b><br>AccountName:<b>$accountname</b><br>Rating:<b>$rating</b><br>Industry:<b>$industry</b><br>AccountType:<b>$accounttype</b><br>Description:<b>$description</b><br><br><br>Thank You<br>Admin\";s:2:\"id\";s:1:\"2\";}'),(3,3,'An contact has been created ','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:1:\"3\";s:7:\"summary\";s:28:\"An contact has been created \";s:6:\"active\";s:1:\"1\";s:10:\"methodName\";s:11:\"NotifyOwner\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:26:\"Regarding Contact Creation\";s:7:\"content\";s:305:\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>$contact_no</b><br>LastName:<b>$lastname</b><br>FirstName:<b>$firstname</b><br>Lead Source:<b>$leadsource</b><br>Department:<b>$department</b><br>Description:<b>$description</b><br><br><br>Thank You<br>Admin\";s:2:\"id\";s:1:\"3\";}'),(4,4,'Email Customer Portal Login Details','O:18:\"VTEntityMethodTask\":6:{s:18:\"executeImmediately\";b:1;s:10:\"workflowId\";i:4;s:7:\"summary\";s:35:\"Email Customer Portal Login Details\";s:6:\"active\";b:1;s:10:\"methodName\";s:22:\"SendPortalLoginDetails\";s:2:\"id\";i:4;}'),(5,5,'An Potential has been created ','O:11:\"VTEmailTask\":8:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:1:\"5\";s:7:\"summary\";s:30:\"An Potential has been created \";s:6:\"active\";s:1:\"1\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:30:\"Regarding Potential Assignment\";s:7:\"content\";s:342:\"An Potential has been assigned to you on vtigerCRM<br>Details of Potential are :<br><br>Potential No:<b>$potential_no</b><br>Potential Name:<b>$potentialname</b><br>Amount:<b>$amount</b><br>Expected Close Date:<b>$closingdate ($_DATE_FORMAT_)</b><br>Type:<b>$opportunity_type</b><br><br><br>Description :$description<br><br>Thank You<br>Admin\";s:2:\"id\";s:1:\"5\";}'),(6,6,'An contact has been created ','O:11:\"VTEmailTask\":8:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:1:\"6\";s:7:\"summary\";s:28:\"An contact has been created \";s:6:\"active\";s:1:\"1\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:28:\"Regarding Contact Assignment\";s:7:\"content\";s:384:\"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>$contact_no</b><br>LastName:<b>$lastname</b><br>FirstName:<b>$firstname</b><br>Lead Source:<b>$leadsource</b><br>Department:<b>$department</b><br>Description:<b>$description</b><br><br><br>And <b>CustomerPortal Login Details</b> is sent to the EmailID :-$email<br><br>Thank You<br>Admin\";s:2:\"id\";s:1:\"6\";}'),(7,7,'Notify Related Contact when Ticket is created from Portal','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:57:\"Notify Related Contact when Ticket is created from Portal\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:1:\"7\";s:10:\"workflowId\";s:1:\"7\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:93:\"[From Portal] $ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:161:\"Ticket No : $ticket_no<br>\r\n							  Ticket ID : $(general : (__VtigerMeta__) recordId)<br>\r\n							  Ticket Title : $ticket_title<br><br>\r\n							  $description\";}'),(10,9,'Send Email to Contact on Ticket Update','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:38:\"Send Email to Contact on Ticket Update\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"10\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:636:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator\";s:10:\"workflowId\";s:1:\"9\";}'),(13,12,'update forecast amount','O:18:\"VTUpdateFieldsTask\":6:{s:18:\"executeImmediately\";b:1;s:10:\"workflowId\";i:12;s:7:\"summary\";s:22:\"update forecast amount\";s:6:\"active\";b:1;s:19:\"field_value_mapping\";s:95:\"[{\"fieldname\":\"forecast_amount\",\"valuetype\":\"expression\",\"value\":\"amount * probability / 100\"}]\";s:2:\"id\";i:13;}'),(14,13,'Send Notification Email to Record Owner','O:11:\"VTEmailTask\":8:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:2:\"13\";s:7:\"summary\";s:39:\"Send Notification Email to Record Owner\";s:6:\"active\";s:1:\"1\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:17:\"Event :  $subject\";s:7:\"content\";s:771:\"$(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name) ,<br/><b>Activity Notification Details:</b><br/>Subject             : $subject<br/>Start date and time : $date_start ($(general : (__VtigerMeta__) usertimezone))<br/>End date and time   : $due_date ($(general : (__VtigerMeta__) usertimezone)) <br/>Status              : $eventstatus <br/>Priority            : $taskpriority <br/>Related To          : $(parent_id : (Leads) lastname) $(parent_id : (Leads) firstname) $(parent_id : (Accounts) accountname) $(parent_id : (Potentials) potentialname) $(parent_id : (HelpDesk) ticket_title) $(parent_id : (Campaigns) campaignname) <br/>Contacts List       : $contact_id <br/>Location            : $location <br/>Description         : $description\";s:2:\"id\";s:2:\"14\";}'),(15,14,'Send Notification Email to Record Owner','O:11:\"VTEmailTask\":8:{s:18:\"executeImmediately\";s:0:\"\";s:10:\"workflowId\";s:2:\"14\";s:7:\"summary\";s:39:\"Send Notification Email to Record Owner\";s:6:\"active\";s:1:\"1\";s:9:\"recepient\";s:36:\"$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:16:\"Task :  $subject\";s:7:\"content\";s:689:\"$(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name) ,<br/><b>Task Notification Details:</b><br/>Subject : $subject<br/>Start date and time : $date_start ($(general : (__VtigerMeta__) usertimezone))<br/>End date and time   : $due_date ($_DATE_FORMAT_) <br/>Status              : $taskstatus <br/>Priority            : $taskpriority <br/>Related To          : $(parent_id : (Leads) lastname) $(parent_id : (Leads) firstname) $(parent_id : (Accounts) accountname) $(parent_id : (Potentials) potentialname) $(parent_id : (HelpDesk) ticket_title) $(parent_id : (Campaigns) campaignname) <br/>Contacts List       : $contact_id <br/>Description         : $description\";s:2:\"id\";s:2:\"15\";}'),(18,16,'Update Inventory Products','O:18:\"VTEntityMethodTask\":6:{s:18:\"executeImmediately\";b:1;s:10:\"workflowId\";i:16;s:7:\"summary\";s:25:\"Update Inventory Products\";s:6:\"active\";b:1;s:10:\"methodName\";s:15:\"UpdateInventory\";s:2:\"id\";i:18;}'),(19,17,'Comment Added From Portal : Send Email to Record Owner','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:54:\"Comment Added From Portal : Send Email to Record Owner\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"19\";s:10:\"workflowId\";s:2:\"17\";s:9:\"fromEmail\";s:112:\"$(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname)&lt;$(contact_id : (Contacts) email)&gt;\";s:9:\"recepient\";s:37:\",$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:92:\"Respond to Ticket ID## $(general : (__VtigerMeta__) recordId) ## in Customer Portal - URGENT\";s:7:\"content\";s:329:\"Dear $(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name),<br><br>\r\n								Customer has provided the following additional information to your reply:<br><br>\r\n								<b>$lastComment</b><br><br>\r\n								Kindly respond to above ticket at the earliest.<br><br>\r\n								Regards<br>Support Administrator\";}'),(20,18,'Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:82:\"Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"20\";s:10:\"workflowId\";s:2:\"18\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:525:\"Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\r\n							The Ticket is replied the details are :<br><br>\r\n							Ticket No : $ticket_no<br>\r\n							Status : $ticketstatus<br>\r\n							Category : $ticketcategories<br>\r\n							Severity : $ticketseverities<br>\r\n							Priority : $ticketpriorities<br><br>\r\n							Description : <br>$description<br><br>\r\n							Solution : <br>$solution<br>\r\n							The comments are : <br>\r\n							$allComments<br><br>\r\n							Regards<br>Support Administrator\";}'),(21,19,'Comment Added From CRM : Send Email to Contact, where Contact is Portal User','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:76:\"Comment Added From CRM : Send Email to Contact, where Contact is Portal User\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"21\";s:10:\"workflowId\";s:2:\"19\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:554:\"Ticket No : $ticket_no<br>\r\n										Ticket Id : $(general : (__VtigerMeta__) recordId)<br>\r\n										Subject : $ticket_title<br><br>\r\n										Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\r\n										There is a reply to <b>$ticket_title</b> in the \"Customer Portal\" at VTiger.\r\n										You can use the following link to view the replies made:<br>\r\n										<a href=\"$(general : (__VtigerMeta__) portaldetailviewurl)\">Ticket Details</a><br><br>\r\n										Thanks<br>$(general : (__VtigerMeta__) supportName)\";}'),(22,15,'Comment Added From CRM : Send Email to Organization','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:51:\"Comment Added From CRM : Send Email to Organization\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"22\";s:10:\"workflowId\";s:2:\"15\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:34:\",$(parent_id : (Accounts) email1),\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:601:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(parent_id : (Accounts) accountname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator\";}'),(23,7,'Notify Record Owner when Ticket is created from Portal','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:54:\"Notify Record Owner when Ticket is created from Portal\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"23\";s:10:\"workflowId\";s:1:\"7\";s:9:\"fromEmail\";s:124:\"$(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:37:\",$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:93:\"[From Portal] $ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:161:\"Ticket No : $ticket_no<br>\r\n							  Ticket ID : $(general : (__VtigerMeta__) recordId)<br>\r\n							  Ticket Title : $ticket_title<br><br>\r\n							  $description\";}'),(24,20,'Send Email to Record Owner on Ticket Update','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:43:\"Send Email to Record Owner on Ticket Update\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"24\";s:10:\"workflowId\";s:2:\"20\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:37:\",$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:40:\"Ticket Number : $ticket_no $ticket_title\";s:7:\"content\";s:607:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator\";}'),(25,21,'Ticket Creation From CRM : Send Email to Record Owner','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:53:\"Ticket Creation From CRM : Send Email to Record Owner\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"25\";s:10:\"workflowId\";s:2:\"21\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:37:\",$(assigned_user_id : (Users) email1)\";s:7:\"subject\";s:40:\"Ticket Number : $ticket_no $ticket_title\";s:7:\"content\";s:607:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator\";}'),(26,22,'Send Email to Organization on Ticket Update','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:43:\"Send Email to Organization on Ticket Update\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"26\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(parent_id : (Accounts) email1)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:601:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(parent_id : (Accounts) accountname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator\";s:10:\"workflowId\";s:2:\"22\";}'),(27,23,'Ticket Creation From CRM : Send Email to Organization','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:53:\"Ticket Creation From CRM : Send Email to Organization\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"27\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(parent_id : (Accounts) email1)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:601:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(parent_id : (Accounts) accountname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator\";s:10:\"workflowId\";s:2:\"23\";}'),(28,24,'Ticket Creation From CRM : Send Email to Contact','O:11:\"VTEmailTask\":9:{s:18:\"executeImmediately\";s:1:\"0\";s:7:\"summary\";s:48:\"Ticket Creation From CRM : Send Email to Contact\";s:6:\"active\";s:1:\"1\";s:2:\"id\";s:2:\"28\";s:9:\"fromEmail\";s:93:\"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;\";s:9:\"recepient\";s:33:\",$(contact_id : (Contacts) email)\";s:7:\"subject\";s:79:\"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title\";s:7:\"content\";s:636:\"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator\";s:10:\"workflowId\";s:2:\"24\";}');
/*!40000 ALTER TABLE `com_vtiger_workflowtasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflowtasks_entitymethod`
--

DROP TABLE IF EXISTS `com_vtiger_workflowtasks_entitymethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_vtiger_workflowtasks_entitymethod` (
  `workflowtasks_entitymethod_id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `method_name` varchar(100) DEFAULT NULL,
  `function_path` varchar(400) DEFAULT NULL,
  `function_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`workflowtasks_entitymethod_id`),
  UNIQUE KEY `com_vtiger_workflowtasks_entitymethod_idx` (`workflowtasks_entitymethod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_vtiger_workflowtasks_entitymethod`
--

LOCK TABLES `com_vtiger_workflowtasks_entitymethod` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflowtasks_entitymethod` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflowtasks_entitymethod` VALUES (1,'SalesOrder','UpdateInventory','include/InventoryHandler.php','handleInventoryProductRel'),(2,'Invoice','UpdateInventory','include/InventoryHandler.php','handleInventoryProductRel'),(3,'Contacts','SendPortalLoginDetails','modules/Contacts/ContactsHandler.php','Contacts_sendCustomerPortalLoginDetails'),(4,'HelpDesk','NotifyOnPortalTicketCreation','modules/HelpDesk/HelpDeskHandler.php','HelpDesk_nofifyOnPortalTicketCreation'),(5,'HelpDesk','NotifyOnPortalTicketComment','modules/HelpDesk/HelpDeskHandler.php','HelpDesk_notifyOnPortalTicketComment'),(6,'HelpDesk','NotifyOwnerOnTicketChange','modules/HelpDesk/HelpDeskHandler.php','HelpDesk_notifyOwnerOnTicketChange'),(7,'HelpDesk','NotifyParentOnTicketChange','modules/HelpDesk/HelpDeskHandler.php','HelpDesk_notifyParentOnTicketChange'),(8,'ModComments','CustomerCommentFromPortal','modules/ModComments/ModCommentsHandler.php','CustomerCommentFromPortal'),(9,'ModComments','TicketOwnerComments','modules/ModComments/ModCommentsHandler.php','TicketOwnerComments'),(10,'PurchaseOrder','UpdateInventory','include/InventoryHandler.php','handleInventoryProductRel');
/*!40000 ALTER TABLE `com_vtiger_workflowtasks_entitymethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflowtasks_entitymethod_seq`
--

DROP TABLE IF EXISTS `com_vtiger_workflowtasks_entitymethod_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_vtiger_workflowtasks_entitymethod_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_vtiger_workflowtasks_entitymethod_seq`
--

LOCK TABLES `com_vtiger_workflowtasks_entitymethod_seq` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflowtasks_entitymethod_seq` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflowtasks_entitymethod_seq` VALUES (10);
/*!40000 ALTER TABLE `com_vtiger_workflowtasks_entitymethod_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflowtasks_seq`
--

DROP TABLE IF EXISTS `com_vtiger_workflowtasks_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_vtiger_workflowtasks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_vtiger_workflowtasks_seq`
--

LOCK TABLES `com_vtiger_workflowtasks_seq` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflowtasks_seq` DISABLE KEYS */;
INSERT INTO `com_vtiger_workflowtasks_seq` VALUES (28);
/*!40000 ALTER TABLE `com_vtiger_workflowtasks_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `com_vtiger_workflowtemplates`
--

DROP TABLE IF EXISTS `com_vtiger_workflowtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_vtiger_workflowtemplates` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) DEFAULT NULL,
  `title` varchar(400) DEFAULT NULL,
  `template` text,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `com_vtiger_workflowtemplates`
--

LOCK TABLES `com_vtiger_workflowtemplates` WRITE;
/*!40000 ALTER TABLE `com_vtiger_workflowtemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `com_vtiger_workflowtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_account`
--

DROP TABLE IF EXISTS `vtiger_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_account` (
  `accountid` int(19) NOT NULL DEFAULT '0',
  `account_no` varchar(100) NOT NULL,
  `accountname` varchar(100) NOT NULL,
  `parentid` int(19) DEFAULT '0',
  `account_type` varchar(200) DEFAULT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `annualrevenue` decimal(25,8) DEFAULT NULL,
  `rating` varchar(200) DEFAULT NULL,
  `ownership` varchar(50) DEFAULT NULL,
  `siccode` varchar(50) DEFAULT NULL,
  `tickersymbol` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `otherphone` varchar(30) DEFAULT NULL,
  `email1` varchar(100) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `employees` int(10) DEFAULT '0',
  `emailoptout` varchar(3) DEFAULT '0',
  `notify_owner` varchar(3) DEFAULT '0',
  `isconvertedfromlead` varchar(3) DEFAULT '0',
  PRIMARY KEY (`accountid`),
  KEY `account_account_type_idx` (`account_type`),
  KEY `email_idx` (`email1`,`email2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_account`
--

LOCK TABLES `vtiger_account` WRITE;
/*!40000 ALTER TABLE `vtiger_account` DISABLE KEYS */;
INSERT INTO `vtiger_account` VALUES (2,'ACC1','Prova',0,'','',0.00000000,'','','','','','','','','','',0,'0','0','0'),(5,'ACC2','DANZI.TN',0,'','Technology',0.00000000,'Active','','','','+39 333 5993234','','help@danzi.tn.it','','www.danzi.tn.it','',0,'0','0','0'),(13,'ACC3','SWS Eng',0,'','',0.00000000,'','','','','','','','','','',0,'0','0','0'),(28,'ACC4','Menapace Alessandra',0,'','',0.00000000,'','','','','','','','','','',0,'0','0','0'),(30,'ACC5','CIAMP',0,'','',0.00000000,'','','','','04619790023','','','','www.ciamp.com','',0,'0','1','0'),(32,'ACC6','Impresa Casa Più',0,'','',0.00000000,'','','','','0463787878','','alessandra_menapace@hotmail.com','','www.casapiu.it','',0,'0','0','0');
/*!40000 ALTER TABLE `vtiger_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_accountbillads`
--

DROP TABLE IF EXISTS `vtiger_accountbillads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_accountbillads` (
  `accountaddressid` int(19) NOT NULL DEFAULT '0',
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`accountaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_accountbillads`
--

LOCK TABLES `vtiger_accountbillads` WRITE;
/*!40000 ALTER TABLE `vtiger_accountbillads` DISABLE KEYS */;
INSERT INTO `vtiger_accountbillads` VALUES (2,'','','','','',''),(5,'Trento','','IT','','',''),(13,'','','','','',''),(28,'','','','','',''),(30,'','','','','',''),(32,'','','','','','');
/*!40000 ALTER TABLE `vtiger_accountbillads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_accountrating`
--

DROP TABLE IF EXISTS `vtiger_accountrating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_accountrating` (
  `accountratingid` int(19) NOT NULL AUTO_INCREMENT,
  `rating` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`accountratingid`),
  UNIQUE KEY `accountrating_rating_idx` (`rating`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_accountrating`
--

LOCK TABLES `vtiger_accountrating` WRITE;
/*!40000 ALTER TABLE `vtiger_accountrating` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_accountrating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_accountscf`
--

DROP TABLE IF EXISTS `vtiger_accountscf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_accountscf` (
  `accountid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_accountscf`
--

LOCK TABLES `vtiger_accountscf` WRITE;
/*!40000 ALTER TABLE `vtiger_accountscf` DISABLE KEYS */;
INSERT INTO `vtiger_accountscf` VALUES (2),(5),(13),(28),(30),(32);
/*!40000 ALTER TABLE `vtiger_accountscf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_accountshipads`
--

DROP TABLE IF EXISTS `vtiger_accountshipads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_accountshipads` (
  `accountaddressid` int(19) NOT NULL DEFAULT '0',
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`accountaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_accountshipads`
--

LOCK TABLES `vtiger_accountshipads` WRITE;
/*!40000 ALTER TABLE `vtiger_accountshipads` DISABLE KEYS */;
INSERT INTO `vtiger_accountshipads` VALUES (2,'','','','','',''),(5,'','','','','',''),(13,'','','','','',''),(28,'','','','','',''),(30,'','','','','',''),(32,'','','','','','');
/*!40000 ALTER TABLE `vtiger_accountshipads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_accounttype`
--

DROP TABLE IF EXISTS `vtiger_accounttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_accounttype` (
  `accounttypeid` int(19) NOT NULL AUTO_INCREMENT,
  `accounttype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`accounttypeid`),
  UNIQUE KEY `accounttype_accounttype_idx` (`accounttype`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_accounttype`
--

LOCK TABLES `vtiger_accounttype` WRITE;
/*!40000 ALTER TABLE `vtiger_accounttype` DISABLE KEYS */;
INSERT INTO `vtiger_accounttype` VALUES (2,'Analyst',1,2,1),(3,'Competitor',1,3,2),(4,'Customer',1,4,3),(5,'Integrator',1,5,4),(6,'Investor',1,6,5),(7,'Partner',1,7,6),(8,'Press',1,8,7),(9,'Prospect',1,9,8),(10,'Reseller',1,10,9),(11,'Other',1,11,10);
/*!40000 ALTER TABLE `vtiger_accounttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_accounttype_seq`
--

DROP TABLE IF EXISTS `vtiger_accounttype_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_accounttype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_accounttype_seq`
--

LOCK TABLES `vtiger_accounttype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_accounttype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_accounttype_seq` VALUES (11);
/*!40000 ALTER TABLE `vtiger_accounttype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_actionmapping`
--

DROP TABLE IF EXISTS `vtiger_actionmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_actionmapping` (
  `actionid` int(19) NOT NULL,
  `actionname` varchar(200) NOT NULL,
  `securitycheck` int(19) DEFAULT NULL,
  PRIMARY KEY (`actionid`,`actionname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_actionmapping`
--

LOCK TABLES `vtiger_actionmapping` WRITE;
/*!40000 ALTER TABLE `vtiger_actionmapping` DISABLE KEYS */;
INSERT INTO `vtiger_actionmapping` VALUES (0,'Save',0),(0,'SavePriceBook',1),(0,'SaveVendor',1),(1,'DetailViewAjax',1),(1,'EditView',0),(1,'PriceBookEditView',1),(1,'QuickCreate',1),(1,'VendorEditView',1),(2,'Delete',0),(2,'DeletePriceBook',1),(2,'DeleteVendor',1),(3,'index',0),(3,'Popup',1),(4,'DetailView',0),(4,'PriceBookDetailView',1),(4,'TagCloud',1),(4,'VendorDetailView',1),(5,'Import',0),(6,'Export',0),(8,'Merge',0),(9,'ConvertLead',0),(10,'DuplicatesHandling',0),(11,'ReceiveIncomingCalls',0),(12,'MakeOutgoingCalls',0),(13,'Print',0);
/*!40000 ALTER TABLE `vtiger_actionmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_activity`
--

DROP TABLE IF EXISTS `vtiger_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_activity` (
  `activityid` int(19) NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL,
  `semodule` varchar(20) DEFAULT NULL,
  `activitytype` varchar(200) NOT NULL,
  `date_start` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `time_start` varchar(50) DEFAULT NULL,
  `time_end` varchar(50) DEFAULT NULL,
  `sendnotification` varchar(3) NOT NULL DEFAULT '0',
  `duration_hours` varchar(200) DEFAULT NULL,
  `duration_minutes` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `eventstatus` varchar(200) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `notime` varchar(3) NOT NULL DEFAULT '0',
  `visibility` varchar(50) NOT NULL DEFAULT 'all',
  `recurringtype` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`activityid`),
  KEY `activity_activityid_subject_idx` (`activityid`,`subject`),
  KEY `activity_activitytype_date_start_idx` (`activitytype`,`date_start`),
  KEY `activity_date_start_due_date_idx` (`date_start`,`due_date`),
  KEY `activity_date_start_time_start_idx` (`date_start`,`time_start`),
  KEY `activity_eventstatus_idx` (`eventstatus`),
  KEY `activity_status_idx` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_activity`
--

LOCK TABLES `vtiger_activity` WRITE;
/*!40000 ALTER TABLE `vtiger_activity` DISABLE KEYS */;
INSERT INTO `vtiger_activity` VALUES (3,'Prova localhost','','Emails','2017-03-07',NULL,'08:46',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'0','all',NULL),(18,'Chiamare responsabile tecnico',NULL,'Task','2017-03-15','2017-03-15','12:07:00','','0','-413580','-7','Not Started','','','','0','Private',''),(19,'Telefonata con resp. acquisti',NULL,'Call','2017-03-06','2017-03-06','12:07:00','12:12:00','0','0','5',NULL,'Held','','','0','Public',''),(20,'[Followup] Telefonata con resp. acquisti',NULL,'Call','2017-03-13','2017-03-13','12:07:00','12:12:00','0','0','5',NULL,'Planned','','','0','Public',''),(25,'Sentire cliente per conferma',NULL,'Task','2017-03-14','2017-03-14','12:17:00','','0','-413581','-17','Not Started','','High','','0','Private',''),(27,'Richiesta preventivo','Contacts','Emails','2017-03-07',NULL,'14:08',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'0','all',NULL),(29,'Richiesta materiale informativo',NULL,'Task','2017-03-07','2017-03-07','14:18:00','','0','','','Not Started','','','','0','Public',''),(31,'Richiesta materiale informativo','Accounts','Emails','2017-03-07',NULL,'14:17',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'0','all',NULL),(33,'Appuntamento','Accounts','Emails','2017-03-07',NULL,'14:33',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'0','all',NULL),(34,'Prova invio da CRM Rotho','','Emails','2017-03-07',NULL,'14:59',NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'0','all',NULL);
/*!40000 ALTER TABLE `vtiger_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_activity_reminder`
--

DROP TABLE IF EXISTS `vtiger_activity_reminder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_activity_reminder` (
  `activity_id` int(11) NOT NULL,
  `reminder_time` int(11) NOT NULL,
  `reminder_sent` int(2) NOT NULL,
  `recurringid` int(19) NOT NULL,
  PRIMARY KEY (`activity_id`,`recurringid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_activity_reminder`
--

LOCK TABLES `vtiger_activity_reminder` WRITE;
/*!40000 ALTER TABLE `vtiger_activity_reminder` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_activity_reminder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_activity_reminder_popup`
--

DROP TABLE IF EXISTS `vtiger_activity_reminder_popup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_activity_reminder_popup` (
  `reminderid` int(19) NOT NULL AUTO_INCREMENT,
  `semodule` varchar(100) NOT NULL,
  `recordid` int(19) NOT NULL,
  `date_start` date NOT NULL,
  `time_start` varchar(100) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`reminderid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_activity_reminder_popup`
--

LOCK TABLES `vtiger_activity_reminder_popup` WRITE;
/*!40000 ALTER TABLE `vtiger_activity_reminder_popup` DISABLE KEYS */;
INSERT INTO `vtiger_activity_reminder_popup` VALUES (1,'Calendar',18,'2017-03-15','12:07:00',0),(2,'Calendar',20,'2017-03-13','12:07:00',0),(3,'Calendar',25,'2017-03-14','12:17:00',0);
/*!40000 ALTER TABLE `vtiger_activity_reminder_popup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_activity_view`
--

DROP TABLE IF EXISTS `vtiger_activity_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_activity_view` (
  `activity_viewid` int(19) NOT NULL AUTO_INCREMENT,
  `activity_view` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`activity_viewid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_activity_view`
--

LOCK TABLES `vtiger_activity_view` WRITE;
/*!40000 ALTER TABLE `vtiger_activity_view` DISABLE KEYS */;
INSERT INTO `vtiger_activity_view` VALUES (1,'Today',0,1),(2,'This Week',1,1),(3,'This Month',2,1),(4,'This Year',3,1);
/*!40000 ALTER TABLE `vtiger_activity_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_activity_view_seq`
--

DROP TABLE IF EXISTS `vtiger_activity_view_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_activity_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_activity_view_seq`
--

LOCK TABLES `vtiger_activity_view_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_activity_view_seq` DISABLE KEYS */;
INSERT INTO `vtiger_activity_view_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_activity_view_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_activitycf`
--

DROP TABLE IF EXISTS `vtiger_activitycf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_activitycf` (
  `activityid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_activitycf`
--

LOCK TABLES `vtiger_activitycf` WRITE;
/*!40000 ALTER TABLE `vtiger_activitycf` DISABLE KEYS */;
INSERT INTO `vtiger_activitycf` VALUES (18),(19),(20),(25),(29);
/*!40000 ALTER TABLE `vtiger_activitycf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_activityproductrel`
--

DROP TABLE IF EXISTS `vtiger_activityproductrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_activityproductrel` (
  `activityid` int(19) NOT NULL DEFAULT '0',
  `productid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activityid`,`productid`),
  KEY `activityproductrel_activityid_idx` (`activityid`),
  KEY `activityproductrel_productid_idx` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_activityproductrel`
--

LOCK TABLES `vtiger_activityproductrel` WRITE;
/*!40000 ALTER TABLE `vtiger_activityproductrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_activityproductrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_activitytype`
--

DROP TABLE IF EXISTS `vtiger_activitytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_activitytype` (
  `activitytypeid` int(19) NOT NULL AUTO_INCREMENT,
  `activitytype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`activitytypeid`),
  UNIQUE KEY `activitytype_activitytype_idx` (`activitytype`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_activitytype`
--

LOCK TABLES `vtiger_activitytype` WRITE;
/*!40000 ALTER TABLE `vtiger_activitytype` DISABLE KEYS */;
INSERT INTO `vtiger_activitytype` VALUES (1,'Call',0,12,0),(2,'Meeting',0,13,1),(3,'Mobile Call',0,295,1);
/*!40000 ALTER TABLE `vtiger_activitytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_activitytype_seq`
--

DROP TABLE IF EXISTS `vtiger_activitytype_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_activitytype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_activitytype_seq`
--

LOCK TABLES `vtiger_activitytype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_activitytype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_activitytype_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_activitytype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_announcement`
--

DROP TABLE IF EXISTS `vtiger_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_announcement` (
  `creatorid` int(19) NOT NULL,
  `announcement` text,
  `title` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`creatorid`),
  KEY `announcement_creatorid_idx` (`creatorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_announcement`
--

LOCK TABLES `vtiger_announcement` WRITE;
/*!40000 ALTER TABLE `vtiger_announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_assets`
--

DROP TABLE IF EXISTS `vtiger_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_assets` (
  `assetsid` int(11) NOT NULL,
  `asset_no` varchar(30) NOT NULL,
  `account` int(19) DEFAULT NULL,
  `product` int(19) NOT NULL,
  `serialnumber` varchar(200) DEFAULT NULL,
  `datesold` date DEFAULT NULL,
  `dateinservice` date DEFAULT NULL,
  `assetstatus` varchar(200) DEFAULT 'In Service',
  `tagnumber` varchar(300) DEFAULT NULL,
  `invoiceid` int(19) DEFAULT NULL,
  `shippingmethod` varchar(200) DEFAULT NULL,
  `shippingtrackingnumber` varchar(200) DEFAULT NULL,
  `assetname` varchar(100) DEFAULT NULL,
  `contact` int(19) DEFAULT NULL,
  PRIMARY KEY (`assetsid`),
  CONSTRAINT `fk_1_vtiger_assets` FOREIGN KEY (`assetsid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_assets`
--

LOCK TABLES `vtiger_assets` WRITE;
/*!40000 ALTER TABLE `vtiger_assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_assetscf`
--

DROP TABLE IF EXISTS `vtiger_assetscf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_assetscf` (
  `assetsid` int(19) NOT NULL,
  PRIMARY KEY (`assetsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_assetscf`
--

LOCK TABLES `vtiger_assetscf` WRITE;
/*!40000 ALTER TABLE `vtiger_assetscf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_assetscf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_assetstatus`
--

DROP TABLE IF EXISTS `vtiger_assetstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_assetstatus` (
  `assetstatusid` int(11) NOT NULL AUTO_INCREMENT,
  `assetstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`assetstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_assetstatus`
--

LOCK TABLES `vtiger_assetstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_assetstatus` DISABLE KEYS */;
INSERT INTO `vtiger_assetstatus` VALUES (1,'In Service',1,286,1),(2,'Out-of-service',1,287,2);
/*!40000 ALTER TABLE `vtiger_assetstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_assetstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_assetstatus_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_assetstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_assetstatus_seq`
--

LOCK TABLES `vtiger_assetstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_assetstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_assetstatus_seq` VALUES (2);
/*!40000 ALTER TABLE `vtiger_assetstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_asterisk`
--

DROP TABLE IF EXISTS `vtiger_asterisk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_asterisk` (
  `server` varchar(30) DEFAULT NULL,
  `port` varchar(30) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_asterisk`
--

LOCK TABLES `vtiger_asterisk` WRITE;
/*!40000 ALTER TABLE `vtiger_asterisk` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_asterisk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_asteriskextensions`
--

DROP TABLE IF EXISTS `vtiger_asteriskextensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_asteriskextensions` (
  `userid` int(11) DEFAULT NULL,
  `asterisk_extension` varchar(50) DEFAULT NULL,
  `use_asterisk` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_asteriskextensions`
--

LOCK TABLES `vtiger_asteriskextensions` WRITE;
/*!40000 ALTER TABLE `vtiger_asteriskextensions` DISABLE KEYS */;
INSERT INTO `vtiger_asteriskextensions` VALUES (1,NULL,NULL),(6,NULL,NULL),(7,NULL,NULL),(8,NULL,NULL),(9,NULL,NULL),(10,NULL,NULL),(11,NULL,NULL),(12,NULL,NULL),(13,NULL,NULL),(14,NULL,NULL),(15,NULL,NULL),(16,NULL,NULL),(17,NULL,NULL);
/*!40000 ALTER TABLE `vtiger_asteriskextensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_asteriskincomingcalls`
--

DROP TABLE IF EXISTS `vtiger_asteriskincomingcalls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_asteriskincomingcalls` (
  `from_number` varchar(50) DEFAULT NULL,
  `from_name` varchar(50) DEFAULT NULL,
  `to_number` varchar(50) DEFAULT NULL,
  `callertype` varchar(30) DEFAULT NULL,
  `flag` int(19) DEFAULT NULL,
  `timer` int(19) DEFAULT NULL,
  `refuid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_asteriskincomingcalls`
--

LOCK TABLES `vtiger_asteriskincomingcalls` WRITE;
/*!40000 ALTER TABLE `vtiger_asteriskincomingcalls` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_asteriskincomingcalls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_asteriskincomingevents`
--

DROP TABLE IF EXISTS `vtiger_asteriskincomingevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_asteriskincomingevents` (
  `uid` varchar(255) NOT NULL,
  `channel` varchar(100) DEFAULT NULL,
  `from_number` bigint(20) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `to_number` bigint(20) DEFAULT NULL,
  `callertype` varchar(100) DEFAULT NULL,
  `timer` int(20) DEFAULT NULL,
  `flag` varchar(3) DEFAULT NULL,
  `pbxrecordid` int(19) DEFAULT NULL,
  `relcrmid` int(19) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_asteriskincomingevents`
--

LOCK TABLES `vtiger_asteriskincomingevents` WRITE;
/*!40000 ALTER TABLE `vtiger_asteriskincomingevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_asteriskincomingevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_attachments`
--

DROP TABLE IF EXISTS `vtiger_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_attachments` (
  `attachmentsid` int(19) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `type` varchar(100) DEFAULT NULL,
  `path` text,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`attachmentsid`),
  KEY `attachments_attachmentsid_idx` (`attachmentsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_attachments`
--

LOCK TABLES `vtiger_attachments` WRITE;
/*!40000 ALTER TABLE `vtiger_attachments` DISABLE KEYS */;
INSERT INTO `vtiger_attachments` VALUES (4,'','','application/octet-stream','storage/2017/March/week1/',NULL);
/*!40000 ALTER TABLE `vtiger_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_attachmentsfolder`
--

DROP TABLE IF EXISTS `vtiger_attachmentsfolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_attachmentsfolder` (
  `folderid` int(19) NOT NULL AUTO_INCREMENT,
  `foldername` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `createdby` int(19) NOT NULL,
  `sequence` int(19) DEFAULT NULL,
  PRIMARY KEY (`folderid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_attachmentsfolder`
--

LOCK TABLES `vtiger_attachmentsfolder` WRITE;
/*!40000 ALTER TABLE `vtiger_attachmentsfolder` DISABLE KEYS */;
INSERT INTO `vtiger_attachmentsfolder` VALUES (1,'Default','This is a Default Folder',1,1);
/*!40000 ALTER TABLE `vtiger_attachmentsfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_attachmentsfolder_seq`
--

DROP TABLE IF EXISTS `vtiger_attachmentsfolder_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_attachmentsfolder_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_attachmentsfolder_seq`
--

LOCK TABLES `vtiger_attachmentsfolder_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_attachmentsfolder_seq` DISABLE KEYS */;
INSERT INTO `vtiger_attachmentsfolder_seq` VALUES (1);
/*!40000 ALTER TABLE `vtiger_attachmentsfolder_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_audit_trial`
--

DROP TABLE IF EXISTS `vtiger_audit_trial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_audit_trial` (
  `auditid` int(19) NOT NULL,
  `userid` int(19) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `recordid` varchar(20) DEFAULT NULL,
  `actiondate` datetime DEFAULT NULL,
  PRIMARY KEY (`auditid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_audit_trial`
--

LOCK TABLES `vtiger_audit_trial` WRITE;
/*!40000 ALTER TABLE `vtiger_audit_trial` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_audit_trial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_blocks`
--

DROP TABLE IF EXISTS `vtiger_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_blocks` (
  `blockid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `blocklabel` varchar(100) NOT NULL,
  `sequence` int(10) DEFAULT NULL,
  `show_title` int(2) DEFAULT NULL,
  `visible` int(2) NOT NULL DEFAULT '0',
  `create_view` int(2) NOT NULL DEFAULT '0',
  `edit_view` int(2) NOT NULL DEFAULT '0',
  `detail_view` int(2) NOT NULL DEFAULT '0',
  `display_status` int(1) NOT NULL DEFAULT '1',
  `iscustom` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blockid`),
  KEY `block_tabid_idx` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_blocks`
--

LOCK TABLES `vtiger_blocks` WRITE;
/*!40000 ALTER TABLE `vtiger_blocks` DISABLE KEYS */;
INSERT INTO `vtiger_blocks` VALUES (1,2,'LBL_OPPORTUNITY_INFORMATION',1,0,0,0,0,0,1,0),(2,2,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(3,2,'LBL_DESCRIPTION_INFORMATION',3,0,0,0,0,0,1,0),(4,4,'LBL_CONTACT_INFORMATION',1,0,0,0,0,0,1,0),(5,4,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(6,4,'LBL_CUSTOMER_PORTAL_INFORMATION',3,0,0,0,0,0,1,0),(7,4,'LBL_ADDRESS_INFORMATION',4,0,0,0,0,0,1,0),(8,4,'LBL_DESCRIPTION_INFORMATION',5,0,0,0,0,0,1,0),(9,6,'LBL_ACCOUNT_INFORMATION',1,0,0,0,0,0,1,0),(10,6,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(11,6,'LBL_ADDRESS_INFORMATION',3,0,0,0,0,0,1,0),(12,6,'LBL_DESCRIPTION_INFORMATION',4,0,0,0,0,0,1,0),(13,7,'LBL_LEAD_INFORMATION',1,0,0,0,0,0,1,0),(14,7,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(15,7,'LBL_ADDRESS_INFORMATION',3,0,0,0,0,0,1,0),(16,7,'LBL_DESCRIPTION_INFORMATION',4,0,0,0,0,0,1,0),(17,8,'LBL_NOTE_INFORMATION',1,0,0,0,0,0,1,0),(18,8,'LBL_FILE_INFORMATION',3,1,0,0,0,0,1,0),(19,9,'LBL_TASK_INFORMATION',1,0,0,0,0,0,1,0),(20,9,'LBL_DESCRIPTION_INFORMATION',2,1,0,0,0,0,1,0),(21,10,'LBL_EMAIL_INFORMATION',1,0,0,0,0,0,1,0),(22,10,'Emails_Block1',2,1,0,0,0,0,1,0),(23,10,'Emails_Block2',3,1,0,0,0,0,1,0),(24,10,'Emails_Block3',4,1,0,0,0,0,1,0),(25,13,'LBL_TICKET_INFORMATION',1,0,0,0,0,0,1,0),(26,13,'',2,1,0,0,0,0,1,0),(27,13,'LBL_CUSTOM_INFORMATION',3,0,0,0,0,0,1,0),(28,13,'LBL_DESCRIPTION_INFORMATION',4,0,0,0,0,0,1,0),(29,13,'LBL_TICKET_RESOLUTION',5,0,0,1,0,0,1,0),(30,13,'LBL_COMMENTS',6,0,0,1,0,0,1,0),(31,14,'LBL_PRODUCT_INFORMATION',1,0,0,0,0,0,1,0),(32,14,'LBL_PRICING_INFORMATION',2,0,0,0,0,0,1,0),(33,14,'LBL_STOCK_INFORMATION',3,0,0,0,0,0,1,0),(34,14,'LBL_CUSTOM_INFORMATION',4,0,0,0,0,0,1,0),(35,14,'LBL_IMAGE_INFORMATION',5,0,0,0,0,0,1,0),(36,14,'LBL_DESCRIPTION_INFORMATION',6,0,0,0,0,0,1,0),(37,15,'LBL_FAQ_INFORMATION',1,0,0,0,0,0,1,0),(38,15,'LBL_COMMENT_INFORMATION',4,0,0,1,0,0,1,0),(39,16,'LBL_EVENT_INFORMATION',1,0,0,0,0,0,1,0),(40,16,'LBL_REMINDER_INFORMATION',2,0,0,0,0,0,1,0),(41,16,'LBL_DESCRIPTION_INFORMATION',5,0,0,0,0,0,1,0),(42,18,'LBL_VENDOR_INFORMATION',1,0,0,0,0,0,1,0),(43,18,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(44,18,'LBL_VENDOR_ADDRESS_INFORMATION',3,0,0,0,0,0,1,0),(45,18,'LBL_DESCRIPTION_INFORMATION',4,0,0,0,0,0,1,0),(46,19,'LBL_PRICEBOOK_INFORMATION',1,0,0,0,0,0,1,0),(47,19,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(48,19,'LBL_DESCRIPTION_INFORMATION',3,0,0,0,0,0,1,0),(49,20,'LBL_QUOTE_INFORMATION',1,0,0,0,0,0,1,0),(50,20,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(51,20,'LBL_ADDRESS_INFORMATION',3,0,0,0,0,0,1,0),(52,20,'LBL_RELATED_PRODUCTS',4,0,0,0,0,0,1,0),(53,20,'LBL_TERMS_INFORMATION',5,0,0,0,0,0,1,0),(54,20,'LBL_DESCRIPTION_INFORMATION',6,0,0,0,0,0,1,0),(55,21,'LBL_PO_INFORMATION',1,0,0,0,0,0,1,0),(56,21,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(57,21,'LBL_ADDRESS_INFORMATION',3,0,0,0,0,0,1,0),(58,21,'LBL_RELATED_PRODUCTS',4,0,0,0,0,0,1,0),(59,21,'LBL_TERMS_INFORMATION',5,0,0,0,0,0,1,0),(60,21,'LBL_DESCRIPTION_INFORMATION',6,0,0,0,0,0,1,0),(61,22,'LBL_SO_INFORMATION',1,0,0,0,0,0,1,0),(62,22,'LBL_CUSTOM_INFORMATION',3,0,0,0,0,0,1,0),(63,22,'LBL_ADDRESS_INFORMATION',4,0,0,0,0,0,1,0),(64,22,'LBL_RELATED_PRODUCTS',5,0,0,0,0,0,1,0),(65,22,'LBL_TERMS_INFORMATION',6,0,0,0,0,0,1,0),(66,22,'LBL_DESCRIPTION_INFORMATION',7,0,0,0,0,0,1,0),(67,23,'LBL_INVOICE_INFORMATION',1,0,0,0,0,0,1,0),(68,23,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(69,23,'LBL_ADDRESS_INFORMATION',3,0,0,0,0,0,1,0),(70,23,'LBL_RELATED_PRODUCTS',4,0,0,0,0,0,1,0),(71,23,'LBL_TERMS_INFORMATION',5,0,0,0,0,0,1,0),(72,23,'LBL_DESCRIPTION_INFORMATION',6,0,0,0,0,0,1,0),(73,4,'LBL_IMAGE_INFORMATION',6,0,0,0,0,0,1,0),(74,26,'LBL_CAMPAIGN_INFORMATION',1,0,0,0,0,0,1,0),(75,26,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(76,26,'LBL_EXPECTATIONS_AND_ACTUALS',3,0,0,0,0,0,1,0),(77,29,'LBL_USERLOGIN_ROLE',1,0,0,0,0,0,1,0),(78,29,'LBL_CURRENCY_CONFIGURATION',3,0,0,0,0,0,1,0),(79,29,'LBL_MORE_INFORMATION',4,0,0,0,0,0,1,0),(80,29,'LBL_ADDRESS_INFORMATION',5,0,0,0,0,0,1,0),(81,26,'LBL_DESCRIPTION_INFORMATION',4,0,0,0,0,0,1,0),(82,29,'LBL_USER_IMAGE_INFORMATION',5,0,0,0,0,0,1,0),(83,29,'LBL_USER_ADV_OPTIONS',6,0,0,0,0,0,1,0),(84,8,'LBL_DESCRIPTION',2,0,0,0,0,0,1,0),(85,22,'Recurring Invoice Information',2,0,0,0,0,0,1,0),(86,9,'LBL_CUSTOM_INFORMATION',3,0,0,0,0,0,1,0),(87,16,'LBL_CUSTOM_INFORMATION',6,0,0,0,0,0,1,0),(88,33,'LBL_PBXMANAGER_INFORMATION',1,0,0,0,0,0,1,0),(89,34,'LBL_SERVICE_INFORMATION',1,0,0,0,0,0,1,0),(90,34,'LBL_PRICING_INFORMATION',2,0,0,0,0,0,1,0),(91,34,'LBL_CUSTOM_INFORMATION',3,0,0,0,0,0,1,0),(92,34,'LBL_DESCRIPTION_INFORMATION',4,0,0,0,0,0,1,0),(93,36,'LBL_SERVICE_CONTRACT_INFORMATION',1,0,0,0,0,0,1,0),(94,36,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(95,40,'LBL_PROJECT_MILESTONE_INFORMATION',1,0,0,0,0,0,1,0),(96,40,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(97,40,'LBL_DESCRIPTION_INFORMATION',3,0,0,0,0,0,1,0),(98,41,'LBL_PROJECT_TASK_INFORMATION',1,0,0,0,0,0,1,0),(99,41,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(100,41,'LBL_DESCRIPTION_INFORMATION',3,0,0,0,0,0,1,0),(101,42,'LBL_PROJECT_INFORMATION',1,0,0,0,0,0,1,0),(102,42,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(103,42,'LBL_DESCRIPTION_INFORMATION',3,0,0,0,0,0,1,0),(104,43,'LBL_ASSET_INFORMATION',1,0,0,0,0,0,1,0),(105,43,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(106,43,'LBL_DESCRIPTION_INFORMATION',3,0,0,0,0,0,1,0),(107,45,'LBL_MODCOMMENTS_INFORMATION',1,0,0,0,0,0,1,0),(108,45,'LBL_OTHER_INFORMATION',2,0,0,0,0,0,1,0),(109,45,'LBL_CUSTOM_INFORMATION',3,0,0,0,0,0,1,0),(110,47,'LBL_SMSNOTIFIER_INFORMATION',1,0,0,0,0,0,1,0),(111,47,'LBL_CUSTOM_INFORMATION',2,0,0,0,0,0,1,0),(112,47,'StatusInformation',3,0,0,0,0,0,1,0),(113,23,'LBL_ITEM_DETAILS',5,0,0,0,0,0,1,0),(114,22,'LBL_ITEM_DETAILS',5,0,0,0,0,0,1,0),(115,21,'LBL_ITEM_DETAILS',5,0,0,0,0,0,1,0),(116,20,'LBL_ITEM_DETAILS',5,0,0,0,0,0,1,0),(117,16,'LBL_RECURRENCE_INFORMATION',3,0,0,0,0,0,1,0),(118,29,'LBL_CALENDAR_SETTINGS',2,0,0,0,0,0,1,0),(119,16,'LBL_RELATED_TO',4,0,0,0,0,0,1,0);
/*!40000 ALTER TABLE `vtiger_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_blocks_seq`
--

DROP TABLE IF EXISTS `vtiger_blocks_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_blocks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_blocks_seq`
--

LOCK TABLES `vtiger_blocks_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_blocks_seq` DISABLE KEYS */;
INSERT INTO `vtiger_blocks_seq` VALUES (119);
/*!40000 ALTER TABLE `vtiger_blocks_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_calendar_default_activitytypes`
--

DROP TABLE IF EXISTS `vtiger_calendar_default_activitytypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_calendar_default_activitytypes` (
  `id` int(19) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  `fieldname` varchar(50) DEFAULT NULL,
  `defaultcolor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_calendar_default_activitytypes`
--

LOCK TABLES `vtiger_calendar_default_activitytypes` WRITE;
/*!40000 ALTER TABLE `vtiger_calendar_default_activitytypes` DISABLE KEYS */;
INSERT INTO `vtiger_calendar_default_activitytypes` VALUES (1,'Events','Events','#17309A'),(2,'Calendar','Tasks','#3A87AD'),(3,'Potentials','Potentials','#AA6705'),(4,'Contacts','support_end_date','#953B39'),(5,'Contacts','birthday','#545252'),(6,'Invoice','Invoice','#87865D'),(7,'Project','Project','#C71585'),(8,'ProjectTask','Project Task','#006400');
/*!40000 ALTER TABLE `vtiger_calendar_default_activitytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_calendar_default_activitytypes_seq`
--

DROP TABLE IF EXISTS `vtiger_calendar_default_activitytypes_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_calendar_default_activitytypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_calendar_default_activitytypes_seq`
--

LOCK TABLES `vtiger_calendar_default_activitytypes_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_calendar_default_activitytypes_seq` DISABLE KEYS */;
INSERT INTO `vtiger_calendar_default_activitytypes_seq` VALUES (8);
/*!40000 ALTER TABLE `vtiger_calendar_default_activitytypes_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_calendar_user_activitytypes`
--

DROP TABLE IF EXISTS `vtiger_calendar_user_activitytypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_calendar_user_activitytypes` (
  `id` int(19) NOT NULL,
  `defaultid` int(19) DEFAULT NULL,
  `userid` int(19) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `visible` int(19) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_calendar_user_activitytypes`
--

LOCK TABLES `vtiger_calendar_user_activitytypes` WRITE;
/*!40000 ALTER TABLE `vtiger_calendar_user_activitytypes` DISABLE KEYS */;
INSERT INTO `vtiger_calendar_user_activitytypes` VALUES (1,1,1,'#17309A',1),(2,2,1,'#3A87AD',1),(3,3,1,'#AA6705',1),(4,4,1,'#953B39',1),(5,5,1,'#545252',1),(6,6,1,'#87865D',1),(7,7,1,'#C71585',1),(8,8,1,'#006400',1),(9,1,6,'#17309A',1),(10,2,6,'#3A87AD',1),(11,3,6,'#AA6705',1),(12,4,6,'#953B39',1),(13,5,6,'#545252',1),(14,6,6,'#87865D',1),(15,7,6,'#C71585',1),(16,8,6,'#006400',1),(17,1,7,'#17309A',1),(18,2,7,'#3A87AD',1),(19,3,7,'#AA6705',1),(20,4,7,'#953B39',1),(21,5,7,'#545252',1),(22,6,7,'#87865D',1),(23,7,7,'#C71585',1),(24,8,7,'#006400',1),(25,1,8,'#17309A',1),(26,2,8,'#3A87AD',1),(27,3,8,'#AA6705',1),(28,4,8,'#953B39',1),(29,5,8,'#545252',1),(30,6,8,'#87865D',1),(31,7,8,'#C71585',1),(32,8,8,'#006400',1),(33,1,9,'#17309A',1),(34,2,9,'#3A87AD',1),(35,3,9,'#AA6705',1),(36,4,9,'#953B39',1),(37,5,9,'#545252',1),(38,6,9,'#87865D',1),(39,7,9,'#C71585',1),(40,8,9,'#006400',1),(41,1,10,'#17309A',1),(42,2,10,'#3A87AD',1),(43,3,10,'#AA6705',1),(44,4,10,'#953B39',1),(45,5,10,'#545252',1),(46,6,10,'#87865D',1),(47,7,10,'#C71585',1),(48,8,10,'#006400',1),(49,1,11,'#17309A',1),(50,2,11,'#3A87AD',1),(51,3,11,'#AA6705',1),(52,4,11,'#953B39',1),(53,5,11,'#545252',1),(54,6,11,'#87865D',1),(55,7,11,'#C71585',1),(56,8,11,'#006400',1),(57,1,12,'#17309A',1),(58,2,12,'#3A87AD',1),(59,3,12,'#AA6705',1),(60,4,12,'#953B39',1),(61,5,12,'#545252',1),(62,6,12,'#87865D',1),(63,7,12,'#C71585',1),(64,8,12,'#006400',1),(65,1,13,'#17309A',1),(66,2,13,'#3A87AD',1),(67,3,13,'#AA6705',1),(68,4,13,'#953B39',1),(69,5,13,'#545252',1),(70,6,13,'#87865D',1),(71,7,13,'#C71585',1),(72,8,13,'#006400',1),(73,1,14,'#17309A',1),(74,2,14,'#3A87AD',1),(75,3,14,'#AA6705',1),(76,4,14,'#953B39',1),(77,5,14,'#545252',1),(78,6,14,'#87865D',1),(79,7,14,'#C71585',1),(80,8,14,'#006400',1),(81,1,15,'#17309A',1),(82,2,15,'#3A87AD',1),(83,3,15,'#AA6705',1),(84,4,15,'#953B39',1),(85,5,15,'#545252',1),(86,6,15,'#87865D',1),(87,7,15,'#C71585',1),(88,8,15,'#006400',1),(89,1,16,'#17309A',1),(90,2,16,'#3A87AD',1),(91,3,16,'#AA6705',1),(92,4,16,'#953B39',1),(93,5,16,'#545252',1),(94,6,16,'#87865D',1),(95,7,16,'#C71585',1),(96,8,16,'#006400',1),(97,1,17,'#17309A',1),(98,2,17,'#3A87AD',1),(99,3,17,'#AA6705',1),(100,4,17,'#953B39',1),(101,5,17,'#545252',1),(102,6,17,'#87865D',1),(103,7,17,'#C71585',1),(104,8,17,'#006400',1);
/*!40000 ALTER TABLE `vtiger_calendar_user_activitytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_calendar_user_activitytypes_seq`
--

DROP TABLE IF EXISTS `vtiger_calendar_user_activitytypes_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_calendar_user_activitytypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_calendar_user_activitytypes_seq`
--

LOCK TABLES `vtiger_calendar_user_activitytypes_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_calendar_user_activitytypes_seq` DISABLE KEYS */;
INSERT INTO `vtiger_calendar_user_activitytypes_seq` VALUES (104);
/*!40000 ALTER TABLE `vtiger_calendar_user_activitytypes_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_calendarsharedtype`
--

DROP TABLE IF EXISTS `vtiger_calendarsharedtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_calendarsharedtype` (
  `calendarsharedtypeid` int(11) NOT NULL AUTO_INCREMENT,
  `calendarsharedtype` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`calendarsharedtypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_calendarsharedtype`
--

LOCK TABLES `vtiger_calendarsharedtype` WRITE;
/*!40000 ALTER TABLE `vtiger_calendarsharedtype` DISABLE KEYS */;
INSERT INTO `vtiger_calendarsharedtype` VALUES (1,'public',1,1),(2,'private',2,1),(3,'seletedusers',3,1);
/*!40000 ALTER TABLE `vtiger_calendarsharedtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_calendarsharedtype_seq`
--

DROP TABLE IF EXISTS `vtiger_calendarsharedtype_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_calendarsharedtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_calendarsharedtype_seq`
--

LOCK TABLES `vtiger_calendarsharedtype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_calendarsharedtype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_calendarsharedtype_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_calendarsharedtype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_callduration`
--

DROP TABLE IF EXISTS `vtiger_callduration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_callduration` (
  `calldurationid` int(11) NOT NULL AUTO_INCREMENT,
  `callduration` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`calldurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_callduration`
--

LOCK TABLES `vtiger_callduration` WRITE;
/*!40000 ALTER TABLE `vtiger_callduration` DISABLE KEYS */;
INSERT INTO `vtiger_callduration` VALUES (1,'5',1,1),(2,'10',2,1),(3,'30',3,1),(4,'60',4,1),(5,'120',5,1);
/*!40000 ALTER TABLE `vtiger_callduration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_callduration_seq`
--

DROP TABLE IF EXISTS `vtiger_callduration_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_callduration_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_callduration_seq`
--

LOCK TABLES `vtiger_callduration_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_callduration_seq` DISABLE KEYS */;
INSERT INTO `vtiger_callduration_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_callduration_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaign`
--

DROP TABLE IF EXISTS `vtiger_campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_campaign` (
  `campaign_no` varchar(100) NOT NULL,
  `campaignname` varchar(255) DEFAULT NULL,
  `campaigntype` varchar(200) DEFAULT NULL,
  `campaignstatus` varchar(200) DEFAULT NULL,
  `expectedrevenue` decimal(25,8) DEFAULT NULL,
  `budgetcost` decimal(25,8) DEFAULT NULL,
  `actualcost` decimal(25,8) DEFAULT NULL,
  `expectedresponse` varchar(200) DEFAULT NULL,
  `numsent` decimal(11,0) DEFAULT NULL,
  `product_id` int(19) DEFAULT NULL,
  `sponsor` varchar(255) DEFAULT NULL,
  `targetaudience` varchar(255) DEFAULT NULL,
  `targetsize` int(19) DEFAULT NULL,
  `expectedresponsecount` int(19) DEFAULT NULL,
  `expectedsalescount` int(19) DEFAULT NULL,
  `expectedroi` decimal(25,8) DEFAULT NULL,
  `actualresponsecount` int(19) DEFAULT NULL,
  `actualsalescount` int(19) DEFAULT NULL,
  `actualroi` decimal(25,8) DEFAULT NULL,
  `campaignid` int(19) NOT NULL,
  `closingdate` date DEFAULT NULL,
  PRIMARY KEY (`campaignid`),
  KEY `campaign_campaignstatus_idx` (`campaignstatus`),
  KEY `campaign_campaignname_idx` (`campaignname`),
  KEY `campaign_campaignid_idx` (`campaignid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_campaign`
--

LOCK TABLES `vtiger_campaign` WRITE;
/*!40000 ALTER TABLE `vtiger_campaign` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_campaign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaignaccountrel`
--

DROP TABLE IF EXISTS `vtiger_campaignaccountrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_campaignaccountrel` (
  `campaignid` int(19) DEFAULT NULL,
  `accountid` int(19) DEFAULT NULL,
  `campaignrelstatusid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_campaignaccountrel`
--

LOCK TABLES `vtiger_campaignaccountrel` WRITE;
/*!40000 ALTER TABLE `vtiger_campaignaccountrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_campaignaccountrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaigncontrel`
--

DROP TABLE IF EXISTS `vtiger_campaigncontrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_campaigncontrel` (
  `campaignid` int(19) NOT NULL DEFAULT '0',
  `contactid` int(19) NOT NULL DEFAULT '0',
  `campaignrelstatusid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`campaignid`,`contactid`,`campaignrelstatusid`),
  KEY `campaigncontrel_contractid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_campaigncontrel`
--

LOCK TABLES `vtiger_campaigncontrel` WRITE;
/*!40000 ALTER TABLE `vtiger_campaigncontrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_campaigncontrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaignleadrel`
--

DROP TABLE IF EXISTS `vtiger_campaignleadrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_campaignleadrel` (
  `campaignid` int(19) NOT NULL DEFAULT '0',
  `leadid` int(19) NOT NULL DEFAULT '0',
  `campaignrelstatusid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`campaignid`,`leadid`,`campaignrelstatusid`),
  KEY `campaignleadrel_leadid_campaignid_idx` (`leadid`,`campaignid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_campaignleadrel`
--

LOCK TABLES `vtiger_campaignleadrel` WRITE;
/*!40000 ALTER TABLE `vtiger_campaignleadrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_campaignleadrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaignrelstatus`
--

DROP TABLE IF EXISTS `vtiger_campaignrelstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_campaignrelstatus` (
  `campaignrelstatusid` int(19) DEFAULT NULL,
  `campaignrelstatus` varchar(256) DEFAULT NULL,
  `sortorderid` int(19) DEFAULT NULL,
  `presence` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_campaignrelstatus`
--

LOCK TABLES `vtiger_campaignrelstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_campaignrelstatus` DISABLE KEYS */;
INSERT INTO `vtiger_campaignrelstatus` VALUES (2,'Contacted - Successful',1,1),(3,'Contacted - Unsuccessful',2,1),(4,'Contacted - Never Contact Again',3,1);
/*!40000 ALTER TABLE `vtiger_campaignrelstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaignrelstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_campaignrelstatus_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_campaignrelstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_campaignrelstatus_seq`
--

LOCK TABLES `vtiger_campaignrelstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_campaignrelstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_campaignrelstatus_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_campaignrelstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaignscf`
--

DROP TABLE IF EXISTS `vtiger_campaignscf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_campaignscf` (
  `campaignid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`campaignid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_campaignscf`
--

LOCK TABLES `vtiger_campaignscf` WRITE;
/*!40000 ALTER TABLE `vtiger_campaignscf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_campaignscf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaignstatus`
--

DROP TABLE IF EXISTS `vtiger_campaignstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_campaignstatus` (
  `campaignstatusid` int(19) NOT NULL AUTO_INCREMENT,
  `campaignstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`campaignstatusid`),
  KEY `campaignstatus_campaignstatus_idx` (`campaignstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_campaignstatus`
--

LOCK TABLES `vtiger_campaignstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_campaignstatus` DISABLE KEYS */;
INSERT INTO `vtiger_campaignstatus` VALUES (2,'Planning',1,15,1),(3,'Active',1,16,2),(4,'Inactive',1,17,3),(5,'Completed',1,18,4),(6,'Cancelled',1,19,5);
/*!40000 ALTER TABLE `vtiger_campaignstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaignstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_campaignstatus_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_campaignstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_campaignstatus_seq`
--

LOCK TABLES `vtiger_campaignstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_campaignstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_campaignstatus_seq` VALUES (6);
/*!40000 ALTER TABLE `vtiger_campaignstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaigntype`
--

DROP TABLE IF EXISTS `vtiger_campaigntype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_campaigntype` (
  `campaigntypeid` int(19) NOT NULL AUTO_INCREMENT,
  `campaigntype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`campaigntypeid`),
  UNIQUE KEY `campaigntype_campaigntype_idx` (`campaigntype`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_campaigntype`
--

LOCK TABLES `vtiger_campaigntype` WRITE;
/*!40000 ALTER TABLE `vtiger_campaigntype` DISABLE KEYS */;
INSERT INTO `vtiger_campaigntype` VALUES (2,'Conference',1,21,1),(3,'Webinar',1,22,2),(4,'Trade Show',1,23,3),(5,'Public Relations',1,24,4),(6,'Partners',1,25,5),(7,'Referral Program',1,26,6),(8,'Advertisement',1,27,7),(9,'Banner Ads',1,28,8),(10,'Direct Mail',1,29,9),(11,'Email',1,30,10),(12,'Telemarketing',1,31,11),(13,'Others',1,32,12);
/*!40000 ALTER TABLE `vtiger_campaigntype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_campaigntype_seq`
--

DROP TABLE IF EXISTS `vtiger_campaigntype_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_campaigntype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_campaigntype_seq`
--

LOCK TABLES `vtiger_campaigntype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_campaigntype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_campaigntype_seq` VALUES (13);
/*!40000 ALTER TABLE `vtiger_campaigntype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_carrier`
--

DROP TABLE IF EXISTS `vtiger_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_carrier` (
  `carrierid` int(19) NOT NULL AUTO_INCREMENT,
  `carrier` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`carrierid`),
  UNIQUE KEY `carrier_carrier_idx` (`carrier`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_carrier`
--

LOCK TABLES `vtiger_carrier` WRITE;
/*!40000 ALTER TABLE `vtiger_carrier` DISABLE KEYS */;
INSERT INTO `vtiger_carrier` VALUES (1,'FedEx',1,33,0),(2,'UPS',1,34,1),(3,'USPS',1,35,2),(4,'DHL',1,36,3),(5,'BlueDart',1,37,4);
/*!40000 ALTER TABLE `vtiger_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_carrier_seq`
--

DROP TABLE IF EXISTS `vtiger_carrier_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_carrier_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_carrier_seq`
--

LOCK TABLES `vtiger_carrier_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_carrier_seq` DISABLE KEYS */;
INSERT INTO `vtiger_carrier_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_carrier_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_cntactivityrel`
--

DROP TABLE IF EXISTS `vtiger_cntactivityrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_cntactivityrel` (
  `contactid` int(19) NOT NULL DEFAULT '0',
  `activityid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contactid`,`activityid`),
  KEY `cntactivityrel_contactid_idx` (`contactid`),
  KEY `cntactivityrel_activityid_idx` (`activityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_cntactivityrel`
--

LOCK TABLES `vtiger_cntactivityrel` WRITE;
/*!40000 ALTER TABLE `vtiger_cntactivityrel` DISABLE KEYS */;
INSERT INTO `vtiger_cntactivityrel` VALUES (6,25);
/*!40000 ALTER TABLE `vtiger_cntactivityrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contactaddress`
--

DROP TABLE IF EXISTS `vtiger_contactaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_contactaddress` (
  `contactaddressid` int(19) NOT NULL DEFAULT '0',
  `mailingcity` varchar(40) DEFAULT NULL,
  `mailingstreet` varchar(250) DEFAULT NULL,
  `mailingcountry` varchar(40) DEFAULT NULL,
  `othercountry` varchar(30) DEFAULT NULL,
  `mailingstate` varchar(30) DEFAULT NULL,
  `mailingpobox` varchar(30) DEFAULT NULL,
  `othercity` varchar(40) DEFAULT NULL,
  `otherstate` varchar(50) DEFAULT NULL,
  `mailingzip` varchar(30) DEFAULT NULL,
  `otherzip` varchar(30) DEFAULT NULL,
  `otherstreet` varchar(250) DEFAULT NULL,
  `otherpobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`contactaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_contactaddress`
--

LOCK TABLES `vtiger_contactaddress` WRITE;
/*!40000 ALTER TABLE `vtiger_contactaddress` DISABLE KEYS */;
INSERT INTO `vtiger_contactaddress` VALUES (6,'','','','','','','','','','','',''),(15,'','','','','','','','','','','',''),(26,'','','','','','','','','','','','');
/*!40000 ALTER TABLE `vtiger_contactaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contactdetails`
--

DROP TABLE IF EXISTS `vtiger_contactdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_contactdetails` (
  `contactid` int(19) NOT NULL DEFAULT '0',
  `contact_no` varchar(100) NOT NULL,
  `accountid` int(19) DEFAULT NULL,
  `salutation` varchar(200) DEFAULT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(80) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `reportsto` varchar(30) DEFAULT NULL,
  `training` varchar(50) DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL,
  `contacttype` varchar(50) DEFAULT NULL,
  `otheremail` varchar(100) DEFAULT NULL,
  `secondaryemail` varchar(100) DEFAULT NULL,
  `donotcall` varchar(3) DEFAULT NULL,
  `emailoptout` varchar(3) DEFAULT '0',
  `imagename` varchar(150) DEFAULT NULL,
  `reference` varchar(3) DEFAULT NULL,
  `notify_owner` varchar(3) DEFAULT '0',
  `isconvertedfromlead` varchar(3) DEFAULT '0',
  PRIMARY KEY (`contactid`),
  KEY `contactdetails_accountid_idx` (`accountid`),
  KEY `email_idx` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_contactdetails`
--

LOCK TABLES `vtiger_contactdetails` WRITE;
/*!40000 ALTER TABLE `vtiger_contactdetails` DISABLE KEYS */;
INSERT INTO `vtiger_contactdetails` VALUES (6,'CON1',5,'','Andrea','Danzi','andrea@danzi.tn.it','+39 333 5993234','','','','','0',NULL,NULL,NULL,NULL,'','0','0','','0','0','0'),(15,'CON2',13,'','Paolo','Cucino','','0461979000','','','','','0',NULL,NULL,NULL,NULL,'','0','0','','0','0','0'),(26,'CON3',28,'Ms.','Alessandra','Menapace','ale.menapace20@gmail.com','339 6708895','','','','','0',NULL,NULL,NULL,NULL,'','0','0','','0','0','0');
/*!40000 ALTER TABLE `vtiger_contactdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contactscf`
--

DROP TABLE IF EXISTS `vtiger_contactscf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_contactscf` (
  `contactid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_contactscf`
--

LOCK TABLES `vtiger_contactscf` WRITE;
/*!40000 ALTER TABLE `vtiger_contactscf` DISABLE KEYS */;
INSERT INTO `vtiger_contactscf` VALUES (6),(15),(26);
/*!40000 ALTER TABLE `vtiger_contactscf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contactsubdetails`
--

DROP TABLE IF EXISTS `vtiger_contactsubdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_contactsubdetails` (
  `contactsubscriptionid` int(19) NOT NULL DEFAULT '0',
  `homephone` varchar(50) DEFAULT NULL,
  `otherphone` varchar(50) DEFAULT NULL,
  `assistant` varchar(30) DEFAULT NULL,
  `assistantphone` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `laststayintouchrequest` int(30) DEFAULT '0',
  `laststayintouchsavedate` int(19) DEFAULT '0',
  `leadsource` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`contactsubscriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_contactsubdetails`
--

LOCK TABLES `vtiger_contactsubdetails` WRITE;
/*!40000 ALTER TABLE `vtiger_contactsubdetails` DISABLE KEYS */;
INSERT INTO `vtiger_contactsubdetails` VALUES (6,'','','','',NULL,0,0,''),(15,'','','','',NULL,0,0,''),(26,'','','','',NULL,0,0,'Direct Mail');
/*!40000 ALTER TABLE `vtiger_contactsubdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contpotentialrel`
--

DROP TABLE IF EXISTS `vtiger_contpotentialrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_contpotentialrel` (
  `contactid` int(19) NOT NULL DEFAULT '0',
  `potentialid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contactid`,`potentialid`),
  KEY `contpotentialrel_potentialid_idx` (`potentialid`),
  KEY `contpotentialrel_contactid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_contpotentialrel`
--

LOCK TABLES `vtiger_contpotentialrel` WRITE;
/*!40000 ALTER TABLE `vtiger_contpotentialrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_contpotentialrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contract_priority`
--

DROP TABLE IF EXISTS `vtiger_contract_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_contract_priority` (
  `contract_priorityid` int(11) NOT NULL AUTO_INCREMENT,
  `contract_priority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`contract_priorityid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_contract_priority`
--

LOCK TABLES `vtiger_contract_priority` WRITE;
/*!40000 ALTER TABLE `vtiger_contract_priority` DISABLE KEYS */;
INSERT INTO `vtiger_contract_priority` VALUES (1,'Low',1,229,1),(2,'Normal',1,230,2),(3,'High',1,231,3);
/*!40000 ALTER TABLE `vtiger_contract_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contract_priority_seq`
--

DROP TABLE IF EXISTS `vtiger_contract_priority_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_contract_priority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_contract_priority_seq`
--

LOCK TABLES `vtiger_contract_priority_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_contract_priority_seq` DISABLE KEYS */;
INSERT INTO `vtiger_contract_priority_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_contract_priority_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contract_status`
--

DROP TABLE IF EXISTS `vtiger_contract_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_contract_status` (
  `contract_statusid` int(11) NOT NULL AUTO_INCREMENT,
  `contract_status` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`contract_statusid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_contract_status`
--

LOCK TABLES `vtiger_contract_status` WRITE;
/*!40000 ALTER TABLE `vtiger_contract_status` DISABLE KEYS */;
INSERT INTO `vtiger_contract_status` VALUES (1,'Undefined',1,223,1),(2,'In Planning',1,224,2),(3,'In Progress',1,225,3),(4,'On Hold',1,226,4),(5,'Complete',0,227,5),(6,'Archived',1,228,6);
/*!40000 ALTER TABLE `vtiger_contract_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contract_status_seq`
--

DROP TABLE IF EXISTS `vtiger_contract_status_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_contract_status_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_contract_status_seq`
--

LOCK TABLES `vtiger_contract_status_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_contract_status_seq` DISABLE KEYS */;
INSERT INTO `vtiger_contract_status_seq` VALUES (6);
/*!40000 ALTER TABLE `vtiger_contract_status_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contract_type`
--

DROP TABLE IF EXISTS `vtiger_contract_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_contract_type` (
  `contract_typeid` int(11) NOT NULL AUTO_INCREMENT,
  `contract_type` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`contract_typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_contract_type`
--

LOCK TABLES `vtiger_contract_type` WRITE;
/*!40000 ALTER TABLE `vtiger_contract_type` DISABLE KEYS */;
INSERT INTO `vtiger_contract_type` VALUES (1,'Support',1,232,1),(2,'Services',1,233,2),(3,'Administrative',1,234,3);
/*!40000 ALTER TABLE `vtiger_contract_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_contract_type_seq`
--

DROP TABLE IF EXISTS `vtiger_contract_type_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_contract_type_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_contract_type_seq`
--

LOCK TABLES `vtiger_contract_type_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_contract_type_seq` DISABLE KEYS */;
INSERT INTO `vtiger_contract_type_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_contract_type_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_convertleadmapping`
--

DROP TABLE IF EXISTS `vtiger_convertleadmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_convertleadmapping` (
  `cfmid` int(19) NOT NULL AUTO_INCREMENT,
  `leadfid` int(19) NOT NULL,
  `accountfid` int(19) DEFAULT NULL,
  `contactfid` int(19) DEFAULT NULL,
  `potentialfid` int(19) DEFAULT NULL,
  `editable` int(19) DEFAULT '1',
  PRIMARY KEY (`cfmid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_convertleadmapping`
--

LOCK TABLES `vtiger_convertleadmapping` WRITE;
/*!40000 ALTER TABLE `vtiger_convertleadmapping` DISABLE KEYS */;
INSERT INTO `vtiger_convertleadmapping` VALUES (1,43,1,0,110,0),(2,49,14,0,0,1),(3,40,3,69,0,NULL),(4,0,0,0,0,NULL),(5,44,5,77,0,1),(6,52,13,0,0,1),(7,46,9,80,0,0),(8,48,4,0,0,1),(9,61,26,98,0,1),(10,60,30,0,0,1),(11,62,32,104,0,1),(12,63,28,100,0,1),(13,59,24,96,0,1),(14,64,34,106,0,1),(15,61,27,0,0,1),(16,60,31,0,0,1),(17,62,33,0,0,1),(18,63,29,0,0,1),(19,59,25,0,0,1),(20,64,35,0,0,1),(21,65,36,109,125,1),(22,37,0,66,0,1),(23,38,0,67,0,0),(24,41,0,70,0,0),(25,42,0,71,0,1),(26,45,0,76,0,1),(27,55,0,83,0,1),(28,47,0,74,117,1),(29,50,0,0,0,1),(30,53,10,0,0,1),(31,51,17,0,0,1);
/*!40000 ALTER TABLE `vtiger_convertleadmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_crmentity`
--

DROP TABLE IF EXISTS `vtiger_crmentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_crmentity` (
  `crmid` int(19) NOT NULL,
  `smcreatorid` int(19) NOT NULL DEFAULT '0',
  `smownerid` int(19) NOT NULL DEFAULT '0',
  `modifiedby` int(19) NOT NULL DEFAULT '0',
  `setype` varchar(30) NOT NULL,
  `description` mediumtext,
  `createdtime` datetime NOT NULL,
  `modifiedtime` datetime NOT NULL,
  `viewedtime` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) DEFAULT '1',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`crmid`),
  KEY `crmentity_smcreatorid_idx` (`smcreatorid`),
  KEY `crmentity_modifiedby_idx` (`modifiedby`),
  KEY `crmentity_deleted_idx` (`deleted`),
  KEY `crm_ownerid_del_setype_idx` (`smownerid`,`deleted`,`setype`),
  KEY `vtiger_crmentity_labelidx` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_crmentity`
--

LOCK TABLES `vtiger_crmentity` WRITE;
/*!40000 ALTER TABLE `vtiger_crmentity` DISABLE KEYS */;
INSERT INTO `vtiger_crmentity` VALUES (2,1,1,1,'Accounts','','2017-03-04 12:17:40','2017-03-07 10:00:57',NULL,NULL,0,1,1,'Prova'),(3,1,1,1,'Emails','Prova','2017-03-07 08:46:29','2017-03-07 08:46:29',NULL,NULL,0,1,0,'Prova localhost'),(4,1,1,1,'MailManager Attachment','','7366-10-25 22:33:31','7366-10-25 22:33:31',NULL,NULL,0,1,0,NULL),(5,1,13,13,'Accounts','','2017-03-07 10:00:00','2017-03-07 12:06:49',NULL,NULL,0,1,0,'DANZI.TN'),(6,1,13,1,'Contacts','','2017-03-07 10:00:36','2017-03-07 11:47:02',NULL,NULL,0,1,0,'Andrea Danzi'),(7,1,2,8,'Project','','2017-03-07 10:02:51','2017-03-07 12:00:44',NULL,NULL,0,1,0,'Progetto Paterno'),(8,1,6,1,'ProjectMilestone','','2017-03-07 10:03:18','2017-03-07 11:51:03',NULL,NULL,0,1,0,'Demo'),(9,1,6,1,'ProjectMilestone','','2017-03-07 10:03:40','2017-03-07 11:51:02',NULL,NULL,0,1,0,'Analisi'),(10,1,6,1,'ProjectMilestone','','2017-03-07 10:03:59','2017-03-07 11:51:02',NULL,NULL,0,1,0,'Installazione'),(11,1,6,1,'ProjectTask','','2017-03-07 10:10:06','2017-03-07 11:51:17',NULL,NULL,0,1,0,'Predisposizione ambiente Demo'),(12,1,6,1,'ProjectTask','','2017-03-07 10:10:38','2017-03-07 11:56:24',NULL,NULL,0,1,0,'Predisporre Scenari / Use Case'),(13,1,13,1,'Accounts','','2017-03-07 11:28:25','2017-03-07 11:46:45',NULL,NULL,0,1,0,'SWS Eng'),(14,1,9,1,'Potentials','','2017-03-07 11:29:00','2017-03-07 11:50:11',NULL,NULL,0,1,0,'Gestione commerciale SWS Engineering'),(15,1,13,1,'Contacts','','2017-03-07 11:29:54','2017-03-07 11:47:02',NULL,NULL,0,1,0,'Paolo Cucino'),(16,1,2,1,'ProjectTask','','2017-03-07 11:52:13','2017-03-07 11:56:04',NULL,NULL,0,1,0,'Valutazione commerciale'),(17,13,13,7,'Potentials','','2017-03-07 12:06:49','2017-03-07 12:17:17',NULL,NULL,0,1,0,'Nuova fornitura DANZI.TN'),(18,13,13,13,'Calendar','','2017-03-07 12:07:54','2017-03-07 12:07:54',NULL,NULL,0,1,0,'Chiamare responsabile tecnico'),(19,13,13,13,'Calendar','','2017-03-07 12:08:33','2017-03-07 12:08:33',NULL,NULL,0,1,0,'Telefonata con resp. acquisti'),(20,13,13,13,'Calendar','','2017-03-07 12:08:33','2017-03-07 12:08:33',NULL,NULL,0,1,0,'[Followup] Telefonata con resp. acquisti'),(21,7,8,7,'Products','','2017-03-07 12:15:40','2017-03-07 12:15:40',NULL,NULL,0,1,0,'Prodotto A'),(22,7,8,7,'Products','','2017-03-07 12:15:48','2017-03-07 12:15:48',NULL,NULL,0,1,0,'Prodotto B'),(23,7,8,7,'Products','','2017-03-07 12:15:57','2017-03-07 12:15:57',NULL,NULL,0,1,0,'Prodotto C'),(24,7,7,7,'Quotes','','2017-03-07 12:16:47','2017-03-07 12:18:03',NULL,NULL,0,1,0,'Preventivo ABC'),(25,7,7,7,'Calendar','','2017-03-07 12:18:03','2017-03-07 12:18:03',NULL,NULL,0,1,0,'Sentire cliente per conferma'),(26,1,7,1,'Contacts','','2017-03-07 14:10:25','2017-03-07 14:12:46',NULL,NULL,0,1,0,'Alessandra Menapace'),(27,1,1,1,'Emails','<div dir=\"ltr\"><div><div><div>Buonasera<br /></div>vorrei un preventivo per una cucina<br /><br /></div>Alessandra Menapace<br /></div>tel 339 6708895<br /><br /></div>\r\n<br /><br />','2017-03-07 14:10:25','2017-03-07 14:10:25',NULL,NULL,0,1,0,'Richiesta preventivo'),(28,1,7,1,'Accounts','','2017-03-07 14:12:40','2017-03-07 14:12:40',NULL,NULL,0,1,0,'Menapace Alessandra'),(29,1,7,1,'Calendar','','2017-03-07 14:19:20','2017-03-07 14:19:20',NULL,NULL,0,1,0,'Richiesta materiale informativo'),(30,1,2,1,'Accounts','','2017-03-07 14:23:35','2017-03-07 14:30:16',NULL,NULL,0,1,0,'CIAMP'),(31,1,1,1,'Emails','<div dir=\"ltr\">Siamo un\'associazione che deve ristrutturare la sede<div><br /></div><div>Tassullo</div><div>Andrea</div></div>\r\n<br /><br />','2017-03-07 14:23:36','2017-03-07 14:23:36',NULL,NULL,0,1,0,'Richiesta materiale informativo'),(32,1,6,1,'Accounts','','2017-03-07 14:36:05','2017-03-07 18:43:09',NULL,NULL,0,1,1,'Impresa Casa Più'),(33,1,1,1,'Emails','<div dir=\"ltr\"><div><div><div>Buongiorno<br /></div>chiedo vs disponibilità per discutere costruzione case schiera zona Ravina<br /><br /></div>tel 787878<br /></div>Sig Verdi Luca<br /></div>\r\n<br /><br />','2017-03-07 14:36:06','2017-03-07 14:36:06',NULL,NULL,0,1,0,'Appuntamento'),(34,1,1,1,'Emails','Prova invio da CRM Rotho','2017-03-07 14:59:15','2017-03-07 14:59:15',NULL,NULL,0,1,0,'Prova invio da CRM Rotho'),(35,1,7,1,'Project','','2017-03-07 18:17:47','2017-03-07 18:18:00',NULL,NULL,0,1,1,'Prova da Mail Manager'),(36,1,11,1,'Project','','2017-03-07 18:19:26','2017-03-07 18:40:06',NULL,NULL,0,1,1,'Prova da Mail Manager'),(37,1,13,1,'HelpDesk','Buongiornochiedo vs disponibilità per discutere costruzione case schiera zona Ravinatel 787878Sig Verdi Luca\n','2017-03-07 18:28:30','2017-03-07 18:28:30',NULL,NULL,0,1,0,'Appuntamento'),(38,1,14,1,'Project','','2017-03-07 18:39:24','2017-03-07 18:40:06',NULL,NULL,0,1,1,'Prova da Mail Manager'),(39,1,1,1,'Potentials','','2017-03-07 18:40:37','2017-03-07 18:40:48',NULL,NULL,0,1,1,'Opp da MailManager');
/*!40000 ALTER TABLE `vtiger_crmentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_crmentity_seq`
--

DROP TABLE IF EXISTS `vtiger_crmentity_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_crmentity_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_crmentity_seq`
--

LOCK TABLES `vtiger_crmentity_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_crmentity_seq` DISABLE KEYS */;
INSERT INTO `vtiger_crmentity_seq` VALUES (39);
/*!40000 ALTER TABLE `vtiger_crmentity_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_crmentityrel`
--

DROP TABLE IF EXISTS `vtiger_crmentityrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_crmentityrel` (
  `crmid` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `relcrmid` int(11) NOT NULL,
  `relmodule` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_crmentityrel`
--

LOCK TABLES `vtiger_crmentityrel` WRITE;
/*!40000 ALTER TABLE `vtiger_crmentityrel` DISABLE KEYS */;
INSERT INTO `vtiger_crmentityrel` VALUES (5,'Accounts',6,'Contacts'),(5,'Accounts',7,'Project'),(7,'Project',8,'ProjectMilestone'),(7,'Project',9,'ProjectMilestone'),(7,'Project',10,'ProjectMilestone'),(7,'Project',11,'ProjectTask'),(7,'Project',12,'ProjectTask'),(13,'Accounts',15,'Contacts'),(5,'Accounts',17,'Potentials'),(17,'Potentials',18,'Calendar'),(17,'Potentials',19,'Calendar'),(17,'Potentials',24,'Quotes'),(24,'Quotes',25,'Calendar');
/*!40000 ALTER TABLE `vtiger_crmentityrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_crmsetup`
--

DROP TABLE IF EXISTS `vtiger_crmsetup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_crmsetup` (
  `userid` int(11) DEFAULT NULL,
  `setup_status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_crmsetup`
--

LOCK TABLES `vtiger_crmsetup` WRITE;
/*!40000 ALTER TABLE `vtiger_crmsetup` DISABLE KEYS */;
INSERT INTO `vtiger_crmsetup` VALUES (1,1),(13,1),(6,1),(8,1),(9,1),(7,1),(17,1);
/*!40000 ALTER TABLE `vtiger_crmsetup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_cron_task`
--

DROP TABLE IF EXISTS `vtiger_cron_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_cron_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `handler_file` varchar(100) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `laststart` int(11) unsigned DEFAULT NULL,
  `lastend` int(11) unsigned DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `handler_file` (`handler_file`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_cron_task`
--

LOCK TABLES `vtiger_cron_task` WRITE;
/*!40000 ALTER TABLE `vtiger_cron_task` DISABLE KEYS */;
INSERT INTO `vtiger_cron_task` VALUES (1,'Workflow','cron/modules/com_vtiger_workflow/com_vtiger_workflow.service',900,NULL,NULL,1,'com_vtiger_workflow',1,'Recommended frequency for Workflow is 15 mins'),(2,'RecurringInvoice','cron/modules/SalesOrder/RecurringInvoice.service',43200,NULL,NULL,1,'SalesOrder',2,'Recommended frequency for RecurringInvoice is 12 hours'),(3,'SendReminder','cron/SendReminder.service',900,NULL,NULL,1,'Calendar',3,'Recommended frequency for SendReminder is 15 mins'),(5,'MailScanner','cron/MailScanner.service',900,NULL,NULL,1,'Settings',5,'Recommended frequency for MailScanner is 15 mins'),(6,'Scheduled Import','cron/modules/Import/ScheduledImport.service',900,NULL,NULL,0,'Import',6,'Recommended frequency for MailScanner is 15 mins'),(7,'ScheduleReports','cron/modules/Reports/ScheduleReports.service',900,NULL,NULL,1,'Reports',7,'Recommended frequency for ScheduleReports is 15 mins');
/*!40000 ALTER TABLE `vtiger_cron_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currencies`
--

DROP TABLE IF EXISTS `vtiger_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_currencies` (
  `currencyid` int(19) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(200) DEFAULT NULL,
  `currency_code` varchar(50) DEFAULT NULL,
  `currency_symbol` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`currencyid`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_currencies`
--

LOCK TABLES `vtiger_currencies` WRITE;
/*!40000 ALTER TABLE `vtiger_currencies` DISABLE KEYS */;
INSERT INTO `vtiger_currencies` VALUES (1,'Albania, Leke','ALL','Lek'),(2,'Argentina, Pesos','ARS','$'),(3,'Aruba, Guilders','AWG','ƒ'),(4,'Australia, Dollars','AUD','$'),(5,'Azerbaijan, New Manats','AZN','ман'),(6,'Bahamas, Dollars','BSD','$'),(7,'Bahrain, Dinar','BHD','BD'),(8,'Barbados, Dollars','BBD','$'),(9,'Belarus, Rubles','BYR','p.'),(10,'Belize, Dollars','BZD','BZ$'),(11,'Bermuda, Dollars','BMD','$'),(12,'Bolivia, Bolivianos','BOB','$b'),(13,'China, Yuan Renminbi','CNY','¥'),(14,'Convertible Marka','BAM','KM'),(15,'Botswana, Pulas','BWP','P'),(16,'Bulgaria, Leva','BGN','лв'),(17,'Brazil, Reais','BRL','R$'),(18,'Great Britain Pounds','GBP','£'),(19,'Brunei Darussalam, Dollars','BND','$'),(20,'Canada, Dollars','CAD','$'),(21,'Cayman Islands, Dollars','KYD','$'),(22,'Chile, Pesos','CLP','$'),(23,'Colombia, Pesos','COP','$'),(24,'Costa Rica, Colón','CRC','₡'),(25,'Croatia, Kuna','HRK','kn'),(26,'Cuba, Pesos','CUP','₱'),(27,'Czech Republic, Koruny','CZK','Kč'),(28,'Cyprus, Pounds','CYP','£'),(29,'Denmark, Kroner','DKK','kr'),(30,'Dominican Republic, Pesos','DOP','RD$'),(31,'East Caribbean, Dollars','XCD','$'),(32,'Egypt, Pounds','EGP','£'),(33,'El Salvador, Colón','SVC','₡'),(34,'England, Pounds','GBP','£'),(35,'Estonia, Krooni','EEK','kr'),(36,'Euro','EUR','€'),(37,'Falkland Islands, Pounds','FKP','£'),(38,'Fiji, Dollars','FJD','$'),(39,'Ghana, Cedis','GHC','¢'),(40,'Gibraltar, Pounds','GIP','£'),(41,'Guatemala, Quetzales','GTQ','Q'),(42,'Guernsey, Pounds','GGP','£'),(43,'Guyana, Dollars','GYD','$'),(44,'Honduras, Lempiras','HNL','L'),(45,'Hong Kong, Dollars','HKD','HK$'),(46,'Hungary, Forint','HUF','Ft'),(47,'Iceland, Krona','ISK','kr'),(48,'India, Rupees','INR','₹'),(49,'Indonesia, Rupiahs','IDR','Rp'),(50,'Iran, Rials','IRR','﷼'),(51,'Isle of Man, Pounds','IMP','£'),(52,'Israel, New Shekels','ILS','₪'),(53,'Jamaica, Dollars','JMD','J$'),(54,'Japan, Yen','JPY','¥'),(55,'Jersey, Pounds','JEP','£'),(56,'Jordan, Dinar','JOD','JOD'),(57,'Kazakhstan, Tenge','KZT','〒'),(58,'Kenya, Shilling','KES','KES'),(59,'Korea (North), Won','KPW','₩'),(60,'Korea (South), Won','KRW','₩'),(61,'Kuwait, Dinar','KWD','KWD'),(62,'Kyrgyzstan, Soms','KGS','лв'),(63,'Laos, Kips','LAK','₭'),(64,'Latvia, Lati','LVL','Ls'),(65,'Lebanon, Pounds','LBP','£'),(66,'Liberia, Dollars','LRD','$'),(67,'Switzerland Francs','CHF','CHF'),(68,'Lithuania, Litai','LTL','Lt'),(69,'MADAGASCAR, Malagasy Ariary','MGA','MGA'),(70,'Macedonia, Denars','MKD','ден'),(71,'Malaysia, Ringgits','MYR','RM'),(72,'Malta, Liri','MTL','₤'),(73,'Mauritius, Rupees','MUR','₨'),(74,'Mexico, Pesos','MXN','$'),(75,'Mongolia, Tugriks','MNT','₮'),(76,'Mozambique, Meticais','MZN','MT'),(77,'Namibia, Dollars','NAD','$'),(78,'Nepal, Rupees','NPR','₨'),(79,'Netherlands Antilles, Guilders','ANG','ƒ'),(80,'New Zealand, Dollars','NZD','$'),(81,'Nicaragua, Cordobas','NIO','C$'),(82,'Nigeria, Nairas','NGN','₦'),(83,'North Korea, Won','KPW','₩'),(84,'Norway, Krone','NOK','kr'),(85,'Oman, Rials','OMR','﷼'),(86,'Pakistan, Rupees','PKR','₨'),(87,'Panama, Balboa','PAB','B/.'),(88,'Paraguay, Guarani','PYG','Gs'),(89,'Peru, Nuevos Soles','PEN','S/.'),(90,'Philippines, Pesos','PHP','Php'),(91,'Poland, Zlotych','PLN','zł'),(92,'Qatar, Rials','QAR','﷼'),(93,'Romania, New Lei','RON','lei'),(94,'Russia, Rubles','RUB','руб'),(95,'Saint Helena, Pounds','SHP','£'),(96,'Saudi Arabia, Riyals','SAR','﷼'),(97,'Serbia, Dinars','RSD','Дин.'),(98,'Seychelles, Rupees','SCR','₨'),(99,'Singapore, Dollars','SGD','$'),(100,'Solomon Islands, Dollars','SBD','$'),(101,'Somalia, Shillings','SOS','S'),(102,'South Africa, Rand','ZAR','R'),(103,'South Korea, Won','KRW','₩'),(104,'Sri Lanka, Rupees','LKR','₨'),(105,'Sweden, Kronor','SEK','kr'),(106,'Switzerland, Francs','CHF','CHF'),(107,'Suriname, Dollars','SRD','$'),(108,'Syria, Pounds','SYP','£'),(109,'Taiwan, New Dollars','TWD','NT$'),(110,'Thailand, Baht','THB','฿'),(111,'Trinidad and Tobago, Dollars','TTD','TT$'),(112,'Turkey, New Lira','TRY','YTL'),(113,'Turkey, Liras','TRL','₤'),(114,'Tuvalu, Dollars','TVD','$'),(115,'Ukraine, Hryvnia','UAH','₴'),(116,'United Arab Emirates, Dirham','AED','AED'),(117,'United Kingdom, Pounds','GBP','£'),(118,'United Republic of Tanzania, Shilling','TZS','TZS'),(119,'USA, Dollars','USD','$'),(120,'Uruguay, Pesos','UYU','$U'),(121,'Uzbekistan, Sums','UZS','лв'),(122,'Venezuela, Bolivares Fuertes','VEF','Bs'),(123,'Vietnam, Dong','VND','₫'),(124,'Zambia, Kwacha','ZMK','ZMK'),(125,'Yemen, Rials','YER','﷼'),(126,'Zimbabwe Dollars','ZWD','Z$'),(127,'Malawi, Kwacha','MWK','MK'),(128,'Tunisian, Dinar','TD','TD'),(129,'Moroccan, Dirham','MAD','DH'),(130,'Iraqi Dinar','IQD','ID'),(131,'Maldivian Ruffiya','MVR','MVR'),(132,'Ugandan Shilling','UGX','Sh'),(133,'Sudanese Pound','SDG','£'),(134,'CFA Franc BCEAO','XOF','CFA'),(135,'CFA Franc BEAC','XAF','CFA'),(136,'Haiti, Gourde','HTG','G'),(137,'Libya, Dinar','LYD','LYD'),(138,'CFP Franc','XPF','F');
/*!40000 ALTER TABLE `vtiger_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currencies_seq`
--

DROP TABLE IF EXISTS `vtiger_currencies_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_currencies_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_currencies_seq`
--

LOCK TABLES `vtiger_currencies_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_currencies_seq` DISABLE KEYS */;
INSERT INTO `vtiger_currencies_seq` VALUES (138);
/*!40000 ALTER TABLE `vtiger_currencies_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency`
--

DROP TABLE IF EXISTS `vtiger_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_currency` (
  `currencyid` int(19) NOT NULL AUTO_INCREMENT,
  `currency` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`currencyid`),
  UNIQUE KEY `currency_currency_idx` (`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_currency`
--

LOCK TABLES `vtiger_currency` WRITE;
/*!40000 ALTER TABLE `vtiger_currency` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_decimal_separator`
--

DROP TABLE IF EXISTS `vtiger_currency_decimal_separator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_currency_decimal_separator` (
  `currency_decimal_separatorid` int(19) NOT NULL AUTO_INCREMENT,
  `currency_decimal_separator` varchar(2) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`currency_decimal_separatorid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_currency_decimal_separator`
--

LOCK TABLES `vtiger_currency_decimal_separator` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_decimal_separator` DISABLE KEYS */;
INSERT INTO `vtiger_currency_decimal_separator` VALUES (1,'.',0,1),(2,',',1,1),(3,'\'',2,1),(4,' ',3,1),(5,'$',4,1);
/*!40000 ALTER TABLE `vtiger_currency_decimal_separator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_decimal_separator_seq`
--

DROP TABLE IF EXISTS `vtiger_currency_decimal_separator_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_currency_decimal_separator_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_currency_decimal_separator_seq`
--

LOCK TABLES `vtiger_currency_decimal_separator_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_decimal_separator_seq` DISABLE KEYS */;
INSERT INTO `vtiger_currency_decimal_separator_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_currency_decimal_separator_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_grouping_pattern`
--

DROP TABLE IF EXISTS `vtiger_currency_grouping_pattern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_currency_grouping_pattern` (
  `currency_grouping_patternid` int(19) NOT NULL AUTO_INCREMENT,
  `currency_grouping_pattern` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`currency_grouping_patternid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_currency_grouping_pattern`
--

LOCK TABLES `vtiger_currency_grouping_pattern` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_grouping_pattern` DISABLE KEYS */;
INSERT INTO `vtiger_currency_grouping_pattern` VALUES (1,'123,456,789',0,1),(2,'123456789',1,1),(3,'123456,789',2,1),(4,'12,34,56,789',3,1);
/*!40000 ALTER TABLE `vtiger_currency_grouping_pattern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_grouping_pattern_seq`
--

DROP TABLE IF EXISTS `vtiger_currency_grouping_pattern_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_currency_grouping_pattern_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_currency_grouping_pattern_seq`
--

LOCK TABLES `vtiger_currency_grouping_pattern_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_grouping_pattern_seq` DISABLE KEYS */;
INSERT INTO `vtiger_currency_grouping_pattern_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_currency_grouping_pattern_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_grouping_separator`
--

DROP TABLE IF EXISTS `vtiger_currency_grouping_separator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_currency_grouping_separator` (
  `currency_grouping_separatorid` int(19) NOT NULL AUTO_INCREMENT,
  `currency_grouping_separator` varchar(2) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`currency_grouping_separatorid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_currency_grouping_separator`
--

LOCK TABLES `vtiger_currency_grouping_separator` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_grouping_separator` DISABLE KEYS */;
INSERT INTO `vtiger_currency_grouping_separator` VALUES (1,',',0,1),(2,'.',1,1),(3,'\'',2,1),(4,' ',3,1),(5,'$',4,1);
/*!40000 ALTER TABLE `vtiger_currency_grouping_separator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_grouping_separator_seq`
--

DROP TABLE IF EXISTS `vtiger_currency_grouping_separator_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_currency_grouping_separator_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_currency_grouping_separator_seq`
--

LOCK TABLES `vtiger_currency_grouping_separator_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_grouping_separator_seq` DISABLE KEYS */;
INSERT INTO `vtiger_currency_grouping_separator_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_currency_grouping_separator_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_info`
--

DROP TABLE IF EXISTS `vtiger_currency_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_currency_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(100) DEFAULT NULL,
  `currency_code` varchar(100) DEFAULT NULL,
  `currency_symbol` varchar(30) DEFAULT NULL,
  `conversion_rate` decimal(12,5) DEFAULT NULL,
  `currency_status` varchar(25) DEFAULT NULL,
  `defaultid` varchar(10) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_currency_info`
--

LOCK TABLES `vtiger_currency_info` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_info` DISABLE KEYS */;
INSERT INTO `vtiger_currency_info` VALUES (1,'Euro','EUR','€',1.00000,'Active','-11',0);
/*!40000 ALTER TABLE `vtiger_currency_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_info_seq`
--

DROP TABLE IF EXISTS `vtiger_currency_info_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_currency_info_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_currency_info_seq`
--

LOCK TABLES `vtiger_currency_info_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_info_seq` DISABLE KEYS */;
INSERT INTO `vtiger_currency_info_seq` VALUES (1);
/*!40000 ALTER TABLE `vtiger_currency_info_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_symbol_placement`
--

DROP TABLE IF EXISTS `vtiger_currency_symbol_placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_currency_symbol_placement` (
  `currency_symbol_placementid` int(19) NOT NULL AUTO_INCREMENT,
  `currency_symbol_placement` varchar(30) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`currency_symbol_placementid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_currency_symbol_placement`
--

LOCK TABLES `vtiger_currency_symbol_placement` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_symbol_placement` DISABLE KEYS */;
INSERT INTO `vtiger_currency_symbol_placement` VALUES (1,'$1.0',0,1),(2,'1.0$',1,1);
/*!40000 ALTER TABLE `vtiger_currency_symbol_placement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_currency_symbol_placement_seq`
--

DROP TABLE IF EXISTS `vtiger_currency_symbol_placement_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_currency_symbol_placement_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_currency_symbol_placement_seq`
--

LOCK TABLES `vtiger_currency_symbol_placement_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_currency_symbol_placement_seq` DISABLE KEYS */;
INSERT INTO `vtiger_currency_symbol_placement_seq` VALUES (2);
/*!40000 ALTER TABLE `vtiger_currency_symbol_placement_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_customaction`
--

DROP TABLE IF EXISTS `vtiger_customaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_customaction` (
  `cvid` int(19) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` text,
  KEY `customaction_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_customaction`
--

LOCK TABLES `vtiger_customaction` WRITE;
/*!40000 ALTER TABLE `vtiger_customaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_customaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_customerdetails`
--

DROP TABLE IF EXISTS `vtiger_customerdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_customerdetails` (
  `customerid` int(19) NOT NULL,
  `portal` varchar(3) DEFAULT NULL,
  `support_start_date` date DEFAULT NULL,
  `support_end_date` date DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_customerdetails`
--

LOCK TABLES `vtiger_customerdetails` WRITE;
/*!40000 ALTER TABLE `vtiger_customerdetails` DISABLE KEYS */;
INSERT INTO `vtiger_customerdetails` VALUES (6,'0','2017-03-07','2018-03-07'),(15,'0','2017-03-07','2018-03-07'),(26,'0','2017-03-07','2018-03-07');
/*!40000 ALTER TABLE `vtiger_customerdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_customerportal_fields`
--

DROP TABLE IF EXISTS `vtiger_customerportal_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_customerportal_fields` (
  `tabid` int(19) NOT NULL,
  `fieldid` int(19) DEFAULT NULL,
  `visible` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_customerportal_fields`
--

LOCK TABLES `vtiger_customerportal_fields` WRITE;
/*!40000 ALTER TABLE `vtiger_customerportal_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_customerportal_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_customerportal_prefs`
--

DROP TABLE IF EXISTS `vtiger_customerportal_prefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_customerportal_prefs` (
  `tabid` int(19) NOT NULL,
  `prefkey` varchar(100) NOT NULL,
  `prefvalue` int(20) DEFAULT NULL,
  PRIMARY KEY (`tabid`,`prefkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_customerportal_prefs`
--

LOCK TABLES `vtiger_customerportal_prefs` WRITE;
/*!40000 ALTER TABLE `vtiger_customerportal_prefs` DISABLE KEYS */;
INSERT INTO `vtiger_customerportal_prefs` VALUES (0,'defaultassignee',1),(0,'userid',1),(4,'showrelatedinfo',1),(6,'showrelatedinfo',1),(8,'showrelatedinfo',1),(13,'showrelatedinfo',1),(14,'showrelatedinfo',1),(15,'showrelatedinfo',1),(20,'showrelatedinfo',1),(23,'showrelatedinfo',1),(34,'showrelatedinfo',1),(40,'showrelatedinfo',1),(41,'showrelatedinfo',1),(42,'showrelatedinfo',1),(43,'showrelatedinfo',1);
/*!40000 ALTER TABLE `vtiger_customerportal_prefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_customerportal_tabs`
--

DROP TABLE IF EXISTS `vtiger_customerportal_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_customerportal_tabs` (
  `tabid` int(19) NOT NULL,
  `visible` int(1) DEFAULT '1',
  `sequence` int(1) DEFAULT NULL,
  PRIMARY KEY (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_customerportal_tabs`
--

LOCK TABLES `vtiger_customerportal_tabs` WRITE;
/*!40000 ALTER TABLE `vtiger_customerportal_tabs` DISABLE KEYS */;
INSERT INTO `vtiger_customerportal_tabs` VALUES (4,1,9),(6,1,10),(8,1,8),(13,1,2),(14,1,6),(15,1,3),(20,1,5),(23,1,4),(34,1,7),(40,1,11),(41,1,12),(42,1,13),(43,1,14);
/*!40000 ALTER TABLE `vtiger_customerportal_tabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_customview`
--

DROP TABLE IF EXISTS `vtiger_customview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_customview` (
  `cvid` int(19) NOT NULL,
  `viewname` varchar(100) NOT NULL,
  `setdefault` int(1) DEFAULT '0',
  `setmetrics` int(1) DEFAULT '0',
  `entitytype` varchar(25) NOT NULL,
  `status` int(1) DEFAULT '1',
  `userid` int(19) DEFAULT '1',
  PRIMARY KEY (`cvid`),
  KEY `customview_entitytype_idx` (`entitytype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_customview`
--

LOCK TABLES `vtiger_customview` WRITE;
/*!40000 ALTER TABLE `vtiger_customview` DISABLE KEYS */;
INSERT INTO `vtiger_customview` VALUES (1,'All',1,0,'Leads',0,1),(2,'Hot Leads',0,1,'Leads',3,1),(3,'This Month Leads',0,0,'Leads',3,1),(4,'All',1,0,'Accounts',0,1),(5,'Prospect Accounts',0,1,'Accounts',3,1),(6,'New This Week',0,0,'Accounts',3,1),(7,'All',1,0,'Contacts',0,1),(8,'Contacts Address',0,0,'Contacts',3,1),(9,'Todays Birthday',0,0,'Contacts',3,1),(10,'All',1,0,'Potentials',0,1),(11,'Potentials Won',0,1,'Potentials',3,1),(12,'Prospecting',0,0,'Potentials',3,1),(13,'All',1,0,'HelpDesk',0,1),(14,'Open Tickets',0,1,'HelpDesk',3,1),(15,'High Prioriy Tickets',0,0,'HelpDesk',3,1),(16,'All',1,0,'Quotes',0,1),(17,'Open Quotes',0,1,'Quotes',3,1),(18,'Rejected Quotes',0,0,'Quotes',3,1),(19,'All',1,0,'Calendar',0,1),(20,'All',1,0,'Emails',0,1),(21,'All',1,0,'Invoice',0,1),(22,'All',1,0,'Documents',0,1),(23,'All',1,0,'PriceBooks',0,1),(24,'All',1,0,'Products',0,1),(25,'All',1,0,'PurchaseOrder',0,1),(26,'All',1,0,'SalesOrder',0,1),(27,'All',1,0,'Vendors',0,1),(28,'All',1,0,'Faq',0,1),(29,'All',1,0,'Campaigns',0,1),(30,'All',1,0,'Webmails',0,1),(31,'Drafted FAQ',0,0,'Faq',3,1),(32,'Published FAQ',0,0,'Faq',3,1),(33,'Open Purchase Orders',0,0,'PurchaseOrder',3,1),(34,'Received Purchase Orders',0,0,'PurchaseOrder',3,1),(35,'Open Invoices',0,0,'Invoice',3,1),(36,'Paid Invoices',0,0,'Invoice',3,1),(37,'Pending Sales Orders',0,0,'SalesOrder',3,1),(38,'All',1,0,'PBXManager',0,1),(39,'All',1,0,'Services',0,1),(40,'All',1,0,'ServiceContracts',0,1),(44,'All',1,0,'Assets',0,1),(45,'All',0,0,'ModComments',0,1),(46,'All',0,0,'SMSNotifier',0,1),(47,'All',1,0,'ProjectMilestone',0,1),(48,'All',1,0,'ProjectTask',0,1),(49,'All',1,0,'Project',0,1);
/*!40000 ALTER TABLE `vtiger_customview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_customview_seq`
--

DROP TABLE IF EXISTS `vtiger_customview_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_customview_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_customview_seq`
--

LOCK TABLES `vtiger_customview_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_customview_seq` DISABLE KEYS */;
INSERT INTO `vtiger_customview_seq` VALUES (49);
/*!40000 ALTER TABLE `vtiger_customview_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_cvadvfilter`
--

DROP TABLE IF EXISTS `vtiger_cvadvfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_cvadvfilter` (
  `cvid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `comparator` varchar(20) DEFAULT NULL,
  `value` varchar(512) DEFAULT NULL,
  `groupid` int(11) DEFAULT '1',
  `column_condition` varchar(255) DEFAULT 'and',
  PRIMARY KEY (`cvid`,`columnindex`),
  KEY `cvadvfilter_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_cvadvfilter`
--

LOCK TABLES `vtiger_cvadvfilter` WRITE;
/*!40000 ALTER TABLE `vtiger_cvadvfilter` DISABLE KEYS */;
INSERT INTO `vtiger_cvadvfilter` VALUES (2,0,'vtiger_leaddetails:leadstatus:leadstatus:Leads_Lead_Status:V','e','Hot',1,'and'),(5,0,'vtiger_account:account_type:accounttype:Accounts_Type:V','e','Prospect',1,'and'),(11,0,'vtiger_potential:sales_stage:sales_stage:Potentials_Sales_Stage:V','e','Closed Won',1,'and'),(12,0,'vtiger_potential:sales_stage:sales_stage:Potentials_Sales_Stage:V','e','Prospecting',1,'and'),(14,0,'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V','n','Closed',1,'and'),(15,0,'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V','e','High',1,'and'),(17,0,'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V','n','Accepted',1,'and'),(17,1,'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V','n','Rejected',1,'and'),(18,0,'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V','e','Rejected',1,'and'),(31,0,'vtiger_faq:status:faqstatus:Faq_Status:V','e','Draft',1,'and'),(32,0,'vtiger_faq:status:faqstatus:Faq_Status:V','e','Published',1,'and'),(33,0,'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V','e','Created, Approved, Delivered',1,'and'),(34,0,'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V','e','Received Shipment',1,'and'),(35,0,'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V','e','Created, Approved, Sent',1,'and'),(36,0,'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V','e','Paid',1,'and'),(37,0,'vtiger_salesorder:sostatus:sostatus:SalesOrder_Status:V','e','Created, Approved',1,'and');
/*!40000 ALTER TABLE `vtiger_cvadvfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_cvadvfilter_grouping`
--

DROP TABLE IF EXISTS `vtiger_cvadvfilter_grouping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_cvadvfilter_grouping` (
  `groupid` int(11) NOT NULL,
  `cvid` int(19) NOT NULL,
  `group_condition` varchar(255) DEFAULT NULL,
  `condition_expression` text,
  PRIMARY KEY (`groupid`,`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_cvadvfilter_grouping`
--

LOCK TABLES `vtiger_cvadvfilter_grouping` WRITE;
/*!40000 ALTER TABLE `vtiger_cvadvfilter_grouping` DISABLE KEYS */;
INSERT INTO `vtiger_cvadvfilter_grouping` VALUES (1,2,'',''),(1,5,'',''),(1,11,'',''),(1,12,'',''),(1,14,'',''),(1,15,'',''),(1,17,'',''),(1,18,'',''),(1,31,'',''),(1,32,'',''),(1,33,'',''),(1,34,'',''),(1,35,'',''),(1,36,'',''),(1,37,'','');
/*!40000 ALTER TABLE `vtiger_cvadvfilter_grouping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_cvcolumnlist`
--

DROP TABLE IF EXISTS `vtiger_cvcolumnlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_cvcolumnlist` (
  `cvid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  PRIMARY KEY (`cvid`,`columnindex`),
  KEY `cvcolumnlist_columnindex_idx` (`columnindex`),
  KEY `cvcolumnlist_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_cvcolumnlist`
--

LOCK TABLES `vtiger_cvcolumnlist` WRITE;
/*!40000 ALTER TABLE `vtiger_cvcolumnlist` DISABLE KEYS */;
INSERT INTO `vtiger_cvcolumnlist` VALUES (1,1,'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),(1,2,'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),(1,3,'vtiger_leaddetails:company:company:Leads_Company:V'),(1,4,'vtiger_leadaddress:phone:phone:Leads_Phone:V'),(1,5,'vtiger_leadsubdetails:website:website:Leads_Website:V'),(1,6,'vtiger_leaddetails:email:email:Leads_Email:V'),(1,7,'vtiger_crmentity:smownerid:assigned_user_id:Leads_Assigned_To:V'),(2,0,'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),(2,1,'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),(2,2,'vtiger_leaddetails:company:company:Leads_Company:V'),(2,3,'vtiger_leaddetails:leadsource:leadsource:Leads_Lead_Source:V'),(2,4,'vtiger_leadsubdetails:website:website:Leads_Website:V'),(2,5,'vtiger_leaddetails:email:email:Leads_Email:V'),(3,0,'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),(3,1,'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),(3,2,'vtiger_leaddetails:company:company:Leads_Company:V'),(3,3,'vtiger_leaddetails:leadsource:leadsource:Leads_Lead_Source:V'),(3,4,'vtiger_leadsubdetails:website:website:Leads_Website:V'),(3,5,'vtiger_leaddetails:email:email:Leads_Email:V'),(4,1,'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),(4,2,'vtiger_accountbillads:bill_city:bill_city:Accounts_City:V'),(4,3,'vtiger_account:website:website:Accounts_Website:V'),(4,4,'vtiger_account:phone:phone:Accounts_Phone:V'),(4,5,'vtiger_crmentity:smownerid:assigned_user_id:Accounts_Assigned_To:V'),(5,0,'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),(5,1,'vtiger_account:phone:phone:Accounts_Phone:V'),(5,2,'vtiger_account:website:website:Accounts_Website:V'),(5,3,'vtiger_account:rating:rating:Accounts_Rating:V'),(5,4,'vtiger_crmentity:smownerid:assigned_user_id:Accounts_Assigned_To:V'),(6,0,'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),(6,1,'vtiger_account:phone:phone:Accounts_Phone:V'),(6,2,'vtiger_account:website:website:Accounts_Website:V'),(6,3,'vtiger_accountbillads:bill_city:bill_city:Accounts_City:V'),(6,4,'vtiger_crmentity:smownerid:assigned_user_id:Accounts_Assigned_To:V'),(7,1,'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),(7,2,'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),(7,3,'vtiger_contactdetails:title:title:Contacts_Title:V'),(7,4,'vtiger_contactdetails:accountid:account_id:Contacts_Account_Name:V'),(7,5,'vtiger_contactdetails:email:email:Contacts_Email:V'),(7,6,'vtiger_contactdetails:phone:phone:Contacts_Office_Phone:V'),(7,7,'vtiger_crmentity:smownerid:assigned_user_id:Contacts_Assigned_To:V'),(8,0,'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),(8,1,'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),(8,2,'vtiger_contactaddress:mailingstreet:mailingstreet:Contacts_Mailing_Street:V'),(8,3,'vtiger_contactaddress:mailingcity:mailingcity:Contacts_Mailing_City:V'),(8,4,'vtiger_contactaddress:mailingstate:mailingstate:Contacts_Mailing_State:V'),(8,5,'vtiger_contactaddress:mailingzip:mailingzip:Contacts_Mailing_Zip:V'),(8,6,'vtiger_contactaddress:mailingcountry:mailingcountry:Contacts_Mailing_Country:V'),(9,0,'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),(9,1,'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),(9,2,'vtiger_contactdetails:title:title:Contacts_Title:V'),(9,3,'vtiger_contactdetails:accountid:account_id:Contacts_Account_Name:V'),(9,4,'vtiger_contactdetails:email:email:Contacts_Email:V'),(9,5,'vtiger_contactsubdetails:otherphone:otherphone:Contacts_Other_Phone:V'),(9,6,'vtiger_crmentity:smownerid:assigned_user_id:Contacts_Assigned_To:V'),(10,1,'vtiger_potential:potentialname:potentialname:Potentials_Potential_Name:V'),(10,2,'vtiger_potential:related_to:related_to:Potentials_Related_To:V'),(10,3,'vtiger_potential:sales_stage:sales_stage:Potentials_Sales_Stage:V'),(10,4,'vtiger_potential:leadsource:leadsource:Potentials_Lead_Source:V'),(10,5,'vtiger_potential:closingdate:closingdate:Potentials_Expected_Close_Date:D'),(10,6,'vtiger_potential:amount:amount:Potentials_Amount:N'),(10,7,'vtiger_crmentity:smownerid:assigned_user_id:Potentials_Assigned_To:V'),(10,8,'vtiger_potential:contact_id:contact_id:Potentials_Contact_Name:V'),(11,0,'vtiger_potential:potentialname:potentialname:Potentials_Potential_Name:V'),(11,1,'vtiger_potential:related_to:related_to:Potentials_Related_To:V'),(11,2,'vtiger_potential:amount:amount:Potentials_Amount:N'),(11,3,'vtiger_potential:closingdate:closingdate:Potentials_Expected_Close_Date:D'),(11,4,'vtiger_crmentity:smownerid:assigned_user_id:Potentials_Assigned_To:V'),(11,5,'vtiger_potential:contact_id:contact_id:Potentials_Contact_Name:V'),(12,0,'vtiger_potential:potentialname:potentialname:Potentials_Potential_Name:V'),(12,1,'vtiger_potential:related_to:related_to:Potentials_Related_To:V'),(12,2,'vtiger_potential:amount:amount:Potentials_Amount:N'),(12,3,'vtiger_potential:leadsource:leadsource:Potentials_Lead_Source:V'),(12,4,'vtiger_potential:closingdate:closingdate:Potentials_Expected_Close_Date:D'),(12,5,'vtiger_crmentity:smownerid:assigned_user_id:Potentials_Assigned_To:V'),(12,6,'vtiger_potential:contact_id:contact_id:Potentials_Contact_Name:V'),(13,1,'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),(13,2,'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:V'),(13,3,'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V'),(13,4,'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V'),(13,5,'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),(13,6,'vtiger_troubletickets:contact_id:contact_id:HelpDesk_Contact_Name:V'),(14,0,'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),(14,1,'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:V'),(14,2,'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V'),(14,3,'vtiger_troubletickets:product_id:product_id:HelpDesk_Product_Name:V'),(14,4,'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),(14,5,'vtiger_troubletickets:contact_id:contact_id:HelpDesk_Contact_Name:V'),(15,0,'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),(15,1,'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:V'),(15,2,'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V'),(15,3,'vtiger_troubletickets:product_id:product_id:HelpDesk_Product_Name:V'),(15,4,'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),(15,5,'vtiger_troubletickets:contact_id:contact_id:HelpDesk_Contact_Name:V'),(16,1,'vtiger_quotes:subject:subject:Quotes_Subject:V'),(16,2,'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V'),(16,3,'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:V'),(16,4,'vtiger_quotes:accountid:account_id:Quotes_Account_Name:V'),(16,5,'vtiger_quotes:total:hdnGrandTotal:Quotes_Total:V'),(16,6,'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),(17,0,'vtiger_quotes:subject:subject:Quotes_Subject:V'),(17,1,'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V'),(17,2,'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:V'),(17,3,'vtiger_quotes:accountid:account_id:Quotes_Account_Name:V'),(17,4,'vtiger_quotes:validtill:validtill:Quotes_Valid_Till:D'),(17,5,'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),(18,0,'vtiger_quotes:subject:subject:Quotes_Subject:V'),(18,1,'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:V'),(18,2,'vtiger_quotes:accountid:account_id:Quotes_Account_Name:V'),(18,3,'vtiger_quotes:validtill:validtill:Quotes_Valid_Till:D'),(18,4,'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),(19,0,'vtiger_activity:status:taskstatus:Calendar_Status:V'),(19,1,'vtiger_activity:activitytype:activitytype:Calendar_Type:V'),(19,2,'vtiger_activity:subject:subject:Calendar_Subject:V'),(19,3,'vtiger_seactivityrel:crmid:parent_id:Calendar_Related_to:V'),(19,4,'vtiger_activity:date_start:date_start:Calendar_Start_Date:D'),(19,5,'vtiger_activity:due_date:due_date:Calendar_End_Date:D'),(19,6,'vtiger_crmentity:smownerid:assigned_user_id:Calendar_Assigned_To:V'),(20,0,'vtiger_activity:subject:subject:Emails_Subject:V'),(20,1,'vtiger_emaildetails:to_email:saved_toid:Emails_To:V'),(20,2,'vtiger_activity:date_start:date_start:Emails_Date_Sent:D'),(21,1,'vtiger_invoice:subject:subject:Invoice_Subject:V'),(21,2,'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:V'),(21,3,'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),(21,4,'vtiger_invoice:total:hdnGrandTotal:Invoice_Total:V'),(21,5,'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),(22,1,'vtiger_notes:title:notes_title:Notes_Title:V'),(22,2,'vtiger_notes:filename:filename:Notes_File:V'),(22,3,'vtiger_crmentity:modifiedtime:modifiedtime:Notes_Modified_Time:DT'),(22,4,'vtiger_crmentity:smownerid:assigned_user_id:Notes_Assigned_To:V'),(23,1,'vtiger_pricebook:bookname:bookname:PriceBooks_Price_Book_Name:V'),(23,2,'vtiger_pricebook:active:active:PriceBooks_Active:V'),(23,3,'vtiger_pricebook:currency_id:currency_id:PriceBooks_Currency:V'),(24,1,'vtiger_products:productname:productname:Products_Product_Name:V'),(24,2,'vtiger_products:productcode:productcode:Products_Part_Number:V'),(24,3,'vtiger_products:commissionrate:commissionrate:Products_Commission_Rate:V'),(24,4,'vtiger_products:qtyinstock:qtyinstock:Products_Quantity_In_Stock:V'),(24,5,'vtiger_products:qty_per_unit:qty_per_unit:Products_Qty/Unit:V'),(24,6,'vtiger_products:unit_price:unit_price:Products_Unit_Price:V'),(25,1,'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),(25,2,'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:V'),(25,3,'vtiger_purchaseorder:tracking_no:tracking_no:PurchaseOrder_Tracking_Number:V'),(25,4,'vtiger_purchaseorder:total:hdnGrandTotal:PurchaseOrder_Total:V'),(25,5,'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),(26,1,'vtiger_salesorder:subject:subject:SalesOrder_Subject:V'),(26,2,'vtiger_salesorder:accountid:account_id:SalesOrder_Account_Name:V'),(26,3,'vtiger_salesorder:quoteid:quote_id:SalesOrder_Quote_Name:V'),(26,4,'vtiger_salesorder:total:hdnGrandTotal:SalesOrder_Total:V'),(26,5,'vtiger_crmentity:smownerid:assigned_user_id:SalesOrder_Assigned_To:V'),(27,1,'vtiger_vendor:vendorname:vendorname:Vendors_Vendor_Name:V'),(27,2,'vtiger_vendor:phone:phone:Vendors_Phone:V'),(27,3,'vtiger_vendor:email:email:Vendors_Email:V'),(27,4,'vtiger_vendor:category:category:Vendors_Category:V'),(27,5,'vtiger_crmentity:smownerid:assigned_user_id:Vendors_Assigned_To:V'),(28,1,'vtiger_faq:question:question:Faq_Question:V'),(28,2,'vtiger_faq:category:faqcategories:Faq_Category:V'),(28,3,'vtiger_faq:product_id:product_id:Faq_Product_Name:V'),(28,4,'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:DT'),(28,5,'vtiger_crmentity:modifiedtime:modifiedtime:Faq_Modified_Time:DT'),(29,1,'vtiger_campaign:campaignname:campaignname:Campaigns_Campaign_Name:V'),(29,2,'vtiger_campaign:campaigntype:campaigntype:Campaigns_Campaign_Type:N'),(29,3,'vtiger_campaign:campaignstatus:campaignstatus:Campaigns_Campaign_Status:N'),(29,4,'vtiger_campaign:expectedrevenue:expectedrevenue:Campaigns_Expected_Revenue:V'),(29,5,'vtiger_campaign:closingdate:closingdate:Campaigns_Expected_Close_Date:D'),(29,6,'vtiger_crmentity:smownerid:assigned_user_id:Campaigns_Assigned_To:V'),(30,0,'subject:subject:subject:Subject:V'),(30,1,'from:fromname:fromname:From:N'),(30,2,'to:tpname:toname:To:N'),(30,3,'body:body:body:Body:V'),(31,0,'vtiger_faq:question:question:Faq_Question:V'),(31,1,'vtiger_faq:status:faqstatus:Faq_Status:V'),(31,2,'vtiger_faq:product_id:product_id:Faq_Product_Name:V'),(31,3,'vtiger_faq:category:faqcategories:Faq_Category:V'),(31,4,'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:DT'),(32,0,'vtiger_faq:question:question:Faq_Question:V'),(32,1,'vtiger_faq:answer:faq_answer:Faq_Answer:V'),(32,2,'vtiger_faq:status:faqstatus:Faq_Status:V'),(32,3,'vtiger_faq:product_id:product_id:Faq_Product_Name:V'),(32,4,'vtiger_faq:category:faqcategories:Faq_Category:V'),(32,5,'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:DT'),(33,0,'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),(33,1,'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V'),(33,2,'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:V'),(33,3,'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),(33,4,'vtiger_purchaseorder:duedate:duedate:PurchaseOrder_Due_Date:V'),(34,0,'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),(34,1,'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:V'),(34,2,'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),(34,3,'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V'),(34,4,'vtiger_purchaseorder:carrier:carrier:PurchaseOrder_Carrier:V'),(34,5,'vtiger_poshipads:ship_street:ship_street:PurchaseOrder_Shipping_Address:V'),(35,0,'vtiger_invoice:invoice_no:invoice_no:Invoice_Invoice_No:V'),(35,1,'vtiger_invoice:subject:subject:Invoice_Subject:V'),(35,2,'vtiger_invoice:accountid:account_id:Invoice_Account_Name:V'),(35,3,'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:V'),(35,4,'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),(35,5,'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),(35,6,'vtiger_crmentity:createdtime:createdtime:Invoice_Created_Time:DT'),(36,0,'vtiger_invoice:invoice_no:invoice_no:Invoice_Invoice_No:V'),(36,1,'vtiger_invoice:subject:subject:Invoice_Subject:V'),(36,2,'vtiger_invoice:accountid:account_id:Invoice_Account_Name:V'),(36,3,'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:V'),(36,4,'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),(36,5,'vtiger_invoiceshipads:ship_street:ship_street:Invoice_Shipping_Address:V'),(36,6,'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),(37,0,'vtiger_salesorder:subject:subject:SalesOrder_Subject:V'),(37,1,'vtiger_salesorder:accountid:account_id:SalesOrder_Account_Name:V'),(37,2,'vtiger_salesorder:sostatus:sostatus:SalesOrder_Status:V'),(37,3,'vtiger_crmentity:smownerid:assigned_user_id:SalesOrder_Assigned_To:V'),(37,4,'vtiger_soshipads:ship_street:ship_street:SalesOrder_Shipping_Address:V'),(37,5,'vtiger_salesorder:carrier:carrier:SalesOrder_Carrier:V'),(38,0,'vtiger_pbxmanager:callstatus:callstatus:PBXManager_Call_Status:V'),(38,1,'vtiger_pbxmanager:customernumber:customernumber:PBXManager_Customer_Number:V'),(38,2,'vtiger_pbxmanager:customer:customer:PBXManager_Customer:V'),(38,3,'vtiger_pbxmanager:user:user:PBXManager_User:V'),(38,4,'vtiger_pbxmanager:recordingurl:recordingurl:PBXManager_Recording_URL:V'),(38,5,'vtiger_pbxmanager:totalduration:totalduration:PBXManager_Total_Duration:I'),(38,6,'vtiger_pbxmanager:starttime:starttime:PBXManager_Start_Time:DT'),(39,1,'vtiger_service:servicename:servicename:Services_Service_Name:V'),(39,2,'vtiger_service:service_usageunit:service_usageunit:Services_Usage_Unit:V'),(39,3,'vtiger_service:unit_price:unit_price:Services_Price:N'),(39,4,'vtiger_service:qty_per_unit:qty_per_unit:Services_No_of_Units:N'),(39,5,'vtiger_service:servicecategory:servicecategory:Services_Service_Category:V'),(39,6,'vtiger_crmentity:smownerid:assigned_user_id:Services_Owner:I'),(40,1,'vtiger_servicecontracts:subject:subject:ServiceContracts_Subject:V'),(40,2,'vtiger_servicecontracts:sc_related_to:sc_related_to:ServiceContracts_Related_to:V'),(40,3,'vtiger_crmentity:smownerid:assigned_user_id:ServiceContracts_Assigned_To:V'),(40,4,'vtiger_servicecontracts:start_date:start_date:ServiceContracts_Start_Date:D'),(40,5,'vtiger_servicecontracts:due_date:due_date:ServiceContracts_Due_date:D'),(40,7,'vtiger_servicecontracts:progress:progress:ServiceContracts_Progress:N'),(40,8,'vtiger_servicecontracts:contract_status:contract_status:ServiceContracts_Status:V'),(44,1,'vtiger_assets:assetname:assetname:Assets_Asset_Name:V'),(44,2,'vtiger_assets:account:account:Assets_Customer_Name:V'),(44,3,'vtiger_assets:product:product:Assets_Product_Name:V'),(45,0,'vtiger_modcomments:commentcontent:commentcontent:ModComments_Comment:V'),(45,1,'vtiger_modcomments:related_to:related_to:ModComments_Related_To:V'),(45,2,'vtiger_crmentity:modifiedtime:modifiedtime:ModComments_Modified_Time:DT'),(45,3,'vtiger_crmentity:smownerid:assigned_user_id:ModComments_Assigned_To:V'),(46,0,'vtiger_smsnotifier:message:message:SMSNotifier_message:V'),(46,2,'vtiger_crmentity:smownerid:assigned_user_id:SMSNotifier_Assigned_To:V'),(46,3,'vtiger_crmentity:createdtime:createdtime:SMSNotifier_Created_Time:DT'),(46,4,'vtiger_crmentity:modifiedtime:modifiedtime:SMSNotifier_Modified_Time:DT'),(47,0,'vtiger_projectmilestone:projectmilestonename:projectmilestonename:ProjectMilestone_Project_Milestone_Name:V'),(47,1,'vtiger_projectmilestone:projectmilestonedate:projectmilestonedate:ProjectMilestone_Milestone_Date:D'),(47,3,'vtiger_crmentity:description:description:ProjectMilestone_description:V'),(47,4,'vtiger_crmentity:createdtime:createdtime:ProjectMilestone_Created_Time:T'),(47,5,'vtiger_crmentity:modifiedtime:modifiedtime:ProjectMilestone_Modified_Time:T'),(48,2,'vtiger_projecttask:projecttaskname:projecttaskname:ProjectTask_Project_Task_Name:V'),(48,3,'vtiger_projecttask:projectid:projectid:ProjectTask_Related_to:V'),(48,4,'vtiger_projecttask:projecttaskpriority:projecttaskpriority:ProjectTask_Priority:V'),(48,5,'vtiger_projecttask:projecttaskprogress:projecttaskprogress:ProjectTask_Progress:V'),(48,6,'vtiger_projecttask:projecttaskhours:projecttaskhours:ProjectTask_Worked_Hours:V'),(48,7,'vtiger_projecttask:startdate:startdate:ProjectTask_Start_Date:D'),(48,8,'vtiger_projecttask:enddate:enddate:ProjectTask_End_Date:D'),(48,9,'vtiger_crmentity:smownerid:assigned_user_id:ProjectTask_Assigned_To:V'),(49,0,'vtiger_project:projectname:projectname:Project_Project_Name:V'),(49,1,'vtiger_project:linktoaccountscontacts:linktoaccountscontacts:Project_Related_to:V'),(49,2,'vtiger_project:startdate:startdate:Project_Start_Date:D'),(49,3,'vtiger_project:targetenddate:targetenddate:Project_Target_End_Date:D'),(49,4,'vtiger_project:actualenddate:actualenddate:Project_Actual_End_Date:D'),(49,5,'vtiger_project:targetbudget:targetbudget:Project_Target_Budget:V'),(49,6,'vtiger_project:progress:progress:Project_Progress:V'),(49,7,'vtiger_project:projectstatus:projectstatus:Project_Status:V'),(49,8,'vtiger_crmentity:smownerid:assigned_user_id:Project_Assigned_To:V');
/*!40000 ALTER TABLE `vtiger_cvcolumnlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_cvstdfilter`
--

DROP TABLE IF EXISTS `vtiger_cvstdfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_cvstdfilter` (
  `cvid` int(19) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `stdfilter` varchar(250) DEFAULT '',
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  PRIMARY KEY (`cvid`),
  KEY `cvstdfilter_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_cvstdfilter`
--

LOCK TABLES `vtiger_cvstdfilter` WRITE;
/*!40000 ALTER TABLE `vtiger_cvstdfilter` DISABLE KEYS */;
INSERT INTO `vtiger_cvstdfilter` VALUES (3,'vtiger_crmentity:modifiedtime:modifiedtime:Leads_Modified_Time','thismonth','2005-06-01','2005-06-30'),(6,'vtiger_crmentity:createdtime:createdtime:Accounts_Created_Time','thisweek','2005-06-19','2005-06-25'),(9,'vtiger_contactsubdetails:birthday:birthday:Contacts_Birthdate','today','2005-06-25','2005-06-25');
/*!40000 ALTER TABLE `vtiger_cvstdfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_grp2grp`
--

DROP TABLE IF EXISTS `vtiger_datashare_grp2grp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_datashare_grp2grp` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) DEFAULT NULL,
  `to_groupid` int(19) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_grp2grp_share_groupid_idx` (`share_groupid`),
  KEY `datashare_grp2grp_to_groupid_idx` (`to_groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_datashare_grp2grp`
--

LOCK TABLES `vtiger_datashare_grp2grp` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_grp2grp` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_grp2grp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_grp2role`
--

DROP TABLE IF EXISTS `vtiger_datashare_grp2role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_datashare_grp2role` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) DEFAULT NULL,
  `to_roleid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `idx_datashare_grp2role_share_groupid` (`share_groupid`),
  KEY `idx_datashare_grp2role_to_roleid` (`to_roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_datashare_grp2role`
--

LOCK TABLES `vtiger_datashare_grp2role` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_grp2role` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_grp2role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_grp2rs`
--

DROP TABLE IF EXISTS `vtiger_datashare_grp2rs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_datashare_grp2rs` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) DEFAULT NULL,
  `to_roleandsubid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_grp2rs_share_groupid_idx` (`share_groupid`),
  KEY `datashare_grp2rs_to_roleandsubid_idx` (`to_roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_datashare_grp2rs`
--

LOCK TABLES `vtiger_datashare_grp2rs` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_grp2rs` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_grp2rs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_module_rel`
--

DROP TABLE IF EXISTS `vtiger_datashare_module_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_datashare_module_rel` (
  `shareid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `relationtype` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `idx_datashare_module_rel_tabid` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_datashare_module_rel`
--

LOCK TABLES `vtiger_datashare_module_rel` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_module_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_module_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_relatedmodule_permission`
--

DROP TABLE IF EXISTS `vtiger_datashare_relatedmodule_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_datashare_relatedmodule_permission` (
  `shareid` int(19) NOT NULL,
  `datashare_relatedmodule_id` int(19) NOT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`,`datashare_relatedmodule_id`),
  KEY `datashare_relatedmodule_permission_shareid_permissions_idx` (`shareid`,`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_datashare_relatedmodule_permission`
--

LOCK TABLES `vtiger_datashare_relatedmodule_permission` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_relatedmodule_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_relatedmodule_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_relatedmodules`
--

DROP TABLE IF EXISTS `vtiger_datashare_relatedmodules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_datashare_relatedmodules` (
  `datashare_relatedmodule_id` int(19) NOT NULL,
  `tabid` int(19) DEFAULT NULL,
  `relatedto_tabid` int(19) DEFAULT NULL,
  PRIMARY KEY (`datashare_relatedmodule_id`),
  KEY `datashare_relatedmodules_tabid_idx` (`tabid`),
  KEY `datashare_relatedmodules_relatedto_tabid_idx` (`relatedto_tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_datashare_relatedmodules`
--

LOCK TABLES `vtiger_datashare_relatedmodules` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_relatedmodules` DISABLE KEYS */;
INSERT INTO `vtiger_datashare_relatedmodules` VALUES (1,6,2),(2,6,13),(3,6,20),(4,6,22),(5,6,23),(6,2,20),(7,2,22),(8,20,22),(9,22,23);
/*!40000 ALTER TABLE `vtiger_datashare_relatedmodules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_relatedmodules_seq`
--

DROP TABLE IF EXISTS `vtiger_datashare_relatedmodules_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_datashare_relatedmodules_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_datashare_relatedmodules_seq`
--

LOCK TABLES `vtiger_datashare_relatedmodules_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_relatedmodules_seq` DISABLE KEYS */;
INSERT INTO `vtiger_datashare_relatedmodules_seq` VALUES (9);
/*!40000 ALTER TABLE `vtiger_datashare_relatedmodules_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_role2group`
--

DROP TABLE IF EXISTS `vtiger_datashare_role2group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_datashare_role2group` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) DEFAULT NULL,
  `to_groupid` int(19) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `idx_datashare_role2group_share_roleid` (`share_roleid`),
  KEY `idx_datashare_role2group_to_groupid` (`to_groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_datashare_role2group`
--

LOCK TABLES `vtiger_datashare_role2group` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_role2group` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_role2group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_role2role`
--

DROP TABLE IF EXISTS `vtiger_datashare_role2role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_datashare_role2role` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) DEFAULT NULL,
  `to_roleid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_role2role_share_roleid_idx` (`share_roleid`),
  KEY `datashare_role2role_to_roleid_idx` (`to_roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_datashare_role2role`
--

LOCK TABLES `vtiger_datashare_role2role` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_role2role` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_role2role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_role2rs`
--

DROP TABLE IF EXISTS `vtiger_datashare_role2rs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_datashare_role2rs` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) DEFAULT NULL,
  `to_roleandsubid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_role2s_share_roleid_idx` (`share_roleid`),
  KEY `datashare_role2s_to_roleandsubid_idx` (`to_roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_datashare_role2rs`
--

LOCK TABLES `vtiger_datashare_role2rs` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_role2rs` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_role2rs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_rs2grp`
--

DROP TABLE IF EXISTS `vtiger_datashare_rs2grp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_datashare_rs2grp` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) DEFAULT NULL,
  `to_groupid` int(19) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_rs2grp_share_roleandsubid_idx` (`share_roleandsubid`),
  KEY `datashare_rs2grp_to_groupid_idx` (`to_groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_datashare_rs2grp`
--

LOCK TABLES `vtiger_datashare_rs2grp` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_rs2grp` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_rs2grp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_rs2role`
--

DROP TABLE IF EXISTS `vtiger_datashare_rs2role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_datashare_rs2role` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) DEFAULT NULL,
  `to_roleid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_rs2role_share_roleandsubid_idx` (`share_roleandsubid`),
  KEY `datashare_rs2role_to_roleid_idx` (`to_roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_datashare_rs2role`
--

LOCK TABLES `vtiger_datashare_rs2role` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_rs2role` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_rs2role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_datashare_rs2rs`
--

DROP TABLE IF EXISTS `vtiger_datashare_rs2rs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_datashare_rs2rs` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) DEFAULT NULL,
  `to_roleandsubid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_rs2rs_share_roleandsubid_idx` (`share_roleandsubid`),
  KEY `idx_datashare_rs2rs_to_roleandsubid_idx` (`to_roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_datashare_rs2rs`
--

LOCK TABLES `vtiger_datashare_rs2rs` WRITE;
/*!40000 ALTER TABLE `vtiger_datashare_rs2rs` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_datashare_rs2rs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_date_format`
--

DROP TABLE IF EXISTS `vtiger_date_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_date_format` (
  `date_formatid` int(19) NOT NULL AUTO_INCREMENT,
  `date_format` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`date_formatid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_date_format`
--

LOCK TABLES `vtiger_date_format` WRITE;
/*!40000 ALTER TABLE `vtiger_date_format` DISABLE KEYS */;
INSERT INTO `vtiger_date_format` VALUES (1,'dd-mm-yyyy',0,1),(2,'mm-dd-yyyy',1,1),(3,'yyyy-mm-dd',2,1);
/*!40000 ALTER TABLE `vtiger_date_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_date_format_seq`
--

DROP TABLE IF EXISTS `vtiger_date_format_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_date_format_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_date_format_seq`
--

LOCK TABLES `vtiger_date_format_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_date_format_seq` DISABLE KEYS */;
INSERT INTO `vtiger_date_format_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_date_format_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_dayoftheweek`
--

DROP TABLE IF EXISTS `vtiger_dayoftheweek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_dayoftheweek` (
  `dayoftheweekid` int(11) NOT NULL AUTO_INCREMENT,
  `dayoftheweek` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`dayoftheweekid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_dayoftheweek`
--

LOCK TABLES `vtiger_dayoftheweek` WRITE;
/*!40000 ALTER TABLE `vtiger_dayoftheweek` DISABLE KEYS */;
INSERT INTO `vtiger_dayoftheweek` VALUES (1,'Sunday',1,1),(2,'Monday',2,1),(3,'Tuesday',3,1),(4,'Wednesday',4,1),(5,'Thursday',5,1),(6,'Friday',6,1),(7,'Saturday',7,1);
/*!40000 ALTER TABLE `vtiger_dayoftheweek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_dayoftheweek_seq`
--

DROP TABLE IF EXISTS `vtiger_dayoftheweek_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_dayoftheweek_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_dayoftheweek_seq`
--

LOCK TABLES `vtiger_dayoftheweek_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_dayoftheweek_seq` DISABLE KEYS */;
INSERT INTO `vtiger_dayoftheweek_seq` VALUES (7);
/*!40000 ALTER TABLE `vtiger_dayoftheweek_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_def_org_field`
--

DROP TABLE IF EXISTS `vtiger_def_org_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_def_org_field` (
  `tabid` int(10) DEFAULT NULL,
  `fieldid` int(19) NOT NULL,
  `visible` int(19) DEFAULT NULL,
  `readonly` int(19) DEFAULT NULL,
  PRIMARY KEY (`fieldid`),
  KEY `def_org_field_tabid_fieldid_idx` (`tabid`,`fieldid`),
  KEY `def_org_field_tabid_idx` (`tabid`),
  KEY `def_org_field_visible_fieldid_idx` (`visible`,`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_def_org_field`
--

LOCK TABLES `vtiger_def_org_field` WRITE;
/*!40000 ALTER TABLE `vtiger_def_org_field` DISABLE KEYS */;
INSERT INTO `vtiger_def_org_field` VALUES (6,1,0,0),(6,2,0,0),(6,3,0,0),(6,4,0,0),(6,5,0,0),(6,6,0,0),(6,7,0,0),(6,8,0,0),(6,9,0,0),(6,10,0,0),(6,11,0,0),(6,12,0,0),(6,13,0,0),(6,14,0,0),(6,15,0,0),(6,16,0,0),(6,17,0,0),(6,18,0,0),(6,19,0,0),(6,20,0,0),(6,21,0,0),(6,22,0,0),(6,23,0,0),(6,24,0,0),(6,25,0,0),(6,26,0,0),(6,27,0,0),(6,28,0,0),(6,29,0,0),(6,30,0,0),(6,31,0,0),(6,32,0,0),(6,33,0,0),(6,34,0,0),(6,35,0,0),(6,36,0,0),(7,37,0,0),(7,38,0,0),(7,39,0,0),(7,40,0,0),(7,41,0,0),(7,42,0,0),(7,43,0,0),(7,44,0,0),(7,45,0,0),(7,46,0,0),(7,47,0,0),(7,48,0,0),(7,49,0,0),(7,50,0,0),(7,51,0,0),(7,52,0,0),(7,53,0,0),(7,54,0,0),(7,55,0,0),(7,56,0,0),(7,57,0,0),(7,58,0,0),(7,59,0,0),(7,60,0,0),(7,61,0,0),(7,62,0,0),(7,63,0,0),(7,64,0,0),(7,65,0,0),(4,66,0,0),(4,67,0,0),(4,68,0,0),(4,69,0,0),(4,70,0,0),(4,71,0,0),(4,72,0,0),(4,73,0,0),(4,74,0,0),(4,75,0,0),(4,76,0,0),(4,77,0,0),(4,78,0,0),(4,79,0,0),(4,80,0,0),(4,81,0,0),(4,82,0,0),(4,83,0,0),(4,84,0,0),(4,85,0,0),(4,86,0,0),(4,87,0,0),(4,88,0,0),(4,89,0,0),(4,90,0,0),(4,91,0,0),(4,92,0,0),(4,93,0,0),(4,94,0,0),(4,95,0,0),(4,96,0,0),(4,97,0,0),(4,98,0,0),(4,99,0,0),(4,100,0,0),(4,101,0,0),(4,102,0,0),(4,103,0,0),(4,104,0,0),(4,105,0,0),(4,106,0,0),(4,107,0,0),(4,108,0,0),(4,109,0,0),(2,110,0,0),(2,111,0,0),(2,112,0,0),(2,113,0,0),(2,114,0,0),(2,115,0,0),(2,116,0,0),(2,117,0,0),(2,118,0,0),(2,119,0,0),(2,120,0,0),(2,121,0,0),(2,122,0,0),(2,123,0,0),(2,124,0,0),(2,125,0,0),(26,126,0,0),(26,127,0,0),(26,128,0,0),(26,129,0,0),(26,130,0,0),(26,131,0,0),(26,132,0,0),(26,133,0,0),(26,134,0,0),(26,135,0,0),(26,136,0,0),(26,137,0,0),(26,138,0,0),(26,139,0,0),(26,140,0,0),(26,141,0,0),(26,142,0,0),(26,143,0,0),(26,144,0,0),(26,145,0,0),(26,146,0,0),(26,147,0,0),(26,148,0,0),(26,149,0,0),(26,150,0,0),(4,151,0,0),(6,152,0,0),(7,153,0,0),(26,154,0,0),(13,155,0,0),(13,156,0,0),(13,157,0,0),(13,158,0,0),(13,159,0,0),(13,160,0,0),(13,161,0,0),(13,162,0,0),(13,163,0,0),(13,164,0,0),(13,165,0,0),(13,166,0,0),(13,167,0,0),(13,168,0,0),(13,169,0,0),(13,170,0,0),(13,171,0,0),(13,172,0,0),(14,173,0,0),(14,174,0,0),(14,175,0,0),(14,176,0,0),(14,177,0,0),(14,178,0,0),(14,179,0,0),(14,180,0,0),(14,181,0,0),(14,182,0,0),(14,183,0,0),(14,184,0,0),(14,185,0,0),(14,186,0,0),(14,187,0,0),(14,188,0,0),(14,189,0,0),(14,190,0,0),(14,191,0,0),(14,192,0,0),(14,193,0,0),(14,194,0,0),(14,195,0,0),(14,196,0,0),(14,197,0,0),(14,198,0,0),(14,199,0,0),(14,200,0,0),(14,201,0,0),(14,202,0,0),(14,203,0,0),(8,204,0,0),(8,205,0,0),(8,206,0,0),(8,207,0,0),(8,208,0,0),(8,209,0,0),(8,210,0,0),(8,211,0,0),(8,212,0,0),(8,213,0,0),(8,214,0,0),(8,215,0,0),(8,216,0,0),(8,217,0,0),(8,218,0,0),(10,219,0,0),(10,220,0,0),(10,221,0,0),(10,222,0,0),(10,223,0,0),(10,224,0,0),(10,225,0,0),(10,226,0,0),(10,227,0,0),(10,228,0,0),(10,229,0,0),(10,230,0,0),(9,231,0,0),(9,232,0,0),(9,233,0,0),(9,234,0,0),(9,235,0,0),(9,236,0,0),(9,237,0,0),(9,238,0,0),(9,239,0,0),(9,240,0,0),(9,241,0,0),(9,242,0,0),(9,243,0,0),(9,244,0,0),(9,245,0,0),(9,246,0,0),(9,247,0,0),(9,248,0,0),(9,249,0,0),(9,250,0,0),(9,251,0,0),(9,252,0,0),(9,253,0,0),(9,254,0,0),(16,255,0,0),(16,256,0,0),(16,257,0,0),(16,258,0,0),(16,259,0,0),(16,260,0,0),(16,261,0,0),(16,262,0,0),(16,263,0,0),(16,264,0,0),(16,265,0,0),(16,266,0,0),(16,267,0,0),(16,268,0,0),(16,269,0,0),(16,270,0,0),(16,271,0,0),(16,272,0,0),(16,273,0,0),(16,274,0,0),(16,275,0,0),(16,276,0,0),(16,277,0,0),(15,278,0,0),(15,279,0,0),(15,280,0,0),(15,281,0,0),(15,282,0,0),(15,283,0,0),(15,284,0,0),(15,285,0,0),(15,286,0,0),(15,287,0,0),(18,288,0,0),(18,289,0,0),(18,290,0,0),(18,291,0,0),(18,292,0,0),(18,293,0,0),(18,294,0,0),(18,295,0,0),(18,296,0,0),(18,297,0,0),(18,298,0,0),(18,299,0,0),(18,300,0,0),(18,301,0,0),(18,302,0,0),(18,303,0,0),(18,304,0,0),(19,305,0,0),(19,306,0,0),(19,307,0,0),(19,308,0,0),(19,309,0,0),(19,310,0,0),(19,311,0,0),(19,312,0,0),(20,313,0,0),(20,314,0,0),(20,315,0,0),(20,316,0,0),(20,317,0,0),(20,318,0,0),(20,319,0,0),(20,320,0,0),(20,321,0,0),(20,322,0,0),(20,323,0,0),(20,324,0,0),(20,325,0,0),(20,326,0,0),(20,327,0,0),(20,328,0,0),(20,329,0,0),(20,330,0,0),(20,331,0,0),(20,332,0,0),(20,333,0,0),(20,334,0,0),(20,335,0,0),(20,336,0,0),(20,337,0,0),(20,338,0,0),(20,339,0,0),(20,340,0,0),(20,341,0,0),(20,342,0,0),(20,343,0,0),(20,344,0,0),(20,345,0,0),(20,346,0,0),(20,347,0,0),(20,348,0,0),(20,349,0,0),(21,350,0,0),(21,351,0,0),(21,352,0,0),(21,353,0,0),(21,354,0,0),(21,355,0,0),(21,356,0,0),(21,357,0,0),(21,358,0,0),(21,359,0,0),(21,360,0,0),(21,361,0,0),(21,362,0,0),(21,363,0,0),(21,364,0,0),(21,365,0,0),(21,366,0,0),(21,367,0,0),(21,368,0,0),(21,369,0,0),(21,370,0,0),(21,371,0,0),(21,372,0,0),(21,373,0,0),(21,374,0,0),(21,375,0,0),(21,376,0,0),(21,377,0,0),(21,378,0,0),(21,379,0,0),(21,380,0,0),(21,381,0,0),(21,382,0,0),(21,383,0,0),(21,384,0,0),(21,385,0,0),(21,386,0,0),(21,387,0,0),(22,388,0,0),(22,389,0,0),(22,390,0,0),(22,391,0,0),(22,392,0,0),(22,393,0,0),(22,394,0,0),(22,395,0,0),(22,396,0,0),(22,397,0,0),(22,398,0,0),(22,399,0,0),(22,400,0,0),(22,401,0,0),(22,402,0,0),(22,403,0,0),(22,404,0,0),(22,405,0,0),(22,406,0,0),(22,407,0,0),(22,408,0,0),(22,409,0,0),(22,410,0,0),(22,411,0,0),(22,412,0,0),(22,413,0,0),(22,414,0,0),(22,415,0,0),(22,416,0,0),(22,417,0,0),(22,418,0,0),(22,419,0,0),(22,420,0,0),(22,421,0,0),(22,422,0,0),(22,423,0,0),(22,424,0,0),(22,425,0,0),(22,426,0,0),(22,427,0,0),(22,428,0,0),(22,429,0,0),(22,430,0,0),(22,431,0,0),(22,432,0,0),(22,433,0,0),(22,434,0,0),(23,435,0,0),(23,436,0,0),(23,437,0,0),(23,438,0,0),(23,439,0,0),(23,440,0,0),(23,441,0,0),(23,442,0,0),(23,443,0,0),(23,444,0,0),(23,445,0,0),(23,446,0,0),(23,447,0,0),(23,448,0,0),(23,449,0,0),(23,450,0,0),(23,451,0,0),(23,452,0,0),(23,453,0,0),(23,454,0,0),(23,455,0,0),(23,456,0,0),(23,457,0,0),(23,458,0,0),(23,459,0,0),(23,460,0,0),(23,461,0,0),(23,462,0,0),(23,463,0,0),(23,464,0,0),(23,465,0,0),(23,466,0,0),(23,467,0,0),(23,468,0,0),(23,469,0,0),(23,470,0,0),(23,471,0,0),(23,472,0,0),(23,473,0,0),(29,474,0,0),(29,478,0,0),(29,479,0,0),(29,481,0,0),(29,488,0,0),(29,489,0,0),(29,490,0,0),(29,491,0,0),(29,493,0,0),(29,494,0,0),(29,495,0,0),(29,496,0,0),(29,497,0,0),(29,502,0,0),(29,503,0,0),(29,504,0,0),(29,505,0,0),(29,513,0,0),(10,518,0,0),(10,519,0,0),(10,520,0,0),(10,521,0,0),(10,522,0,0),(10,523,0,0),(33,524,0,0),(33,525,0,0),(33,526,0,0),(33,527,0,0),(33,528,0,0),(33,529,0,0),(33,530,0,0),(33,531,0,0),(33,532,0,0),(33,533,0,0),(33,534,0,0),(33,535,0,0),(33,536,0,0),(33,537,0,0),(33,538,0,0),(33,539,0,0),(29,540,0,0),(34,541,0,0),(34,542,0,0),(34,543,0,0),(34,544,0,0),(34,545,0,0),(34,546,0,0),(34,547,0,0),(34,548,0,0),(34,549,0,0),(34,550,0,0),(34,551,0,0),(34,552,0,0),(34,553,0,0),(34,554,0,0),(34,555,0,0),(34,556,0,0),(34,557,0,0),(34,558,0,0),(34,559,0,0),(36,560,0,0),(36,561,0,0),(36,562,0,0),(36,563,0,0),(36,564,0,0),(36,565,0,0),(36,566,0,0),(36,567,0,0),(36,568,0,0),(36,569,0,0),(36,570,0,0),(36,571,0,0),(36,572,0,0),(36,573,0,0),(36,574,0,0),(36,575,0,0),(36,576,0,0),(36,577,0,0),(36,578,0,0),(40,579,0,0),(40,580,0,0),(40,581,0,0),(40,582,0,0),(40,583,0,0),(40,584,0,0),(40,585,0,0),(40,586,0,0),(40,587,0,0),(40,588,0,0),(41,589,0,0),(41,590,0,0),(41,591,0,0),(41,592,0,0),(41,593,0,0),(41,594,0,0),(41,595,0,0),(41,596,0,0),(41,597,0,0),(41,598,0,0),(41,599,0,0),(41,600,0,0),(41,601,0,0),(41,602,0,0),(41,603,0,0),(42,604,0,0),(42,605,0,0),(42,606,0,0),(42,607,0,0),(42,608,0,0),(42,609,0,0),(42,610,0,0),(42,611,0,0),(42,612,0,0),(42,613,0,0),(42,614,0,0),(42,615,0,0),(42,616,0,0),(42,617,0,0),(42,618,0,0),(42,619,0,0),(42,620,0,0),(43,621,0,0),(43,622,0,0),(43,623,0,0),(43,624,0,0),(43,625,0,0),(43,626,0,0),(43,627,0,0),(43,628,0,0),(43,629,0,0),(43,630,0,0),(43,631,0,0),(43,632,0,0),(43,633,0,0),(43,634,0,0),(43,635,0,0),(43,636,0,0),(43,637,0,0),(43,638,0,0),(45,639,0,0),(45,640,0,0),(45,641,0,0),(45,642,0,0),(45,643,0,0),(45,644,0,0),(45,645,0,0),(47,646,0,0),(47,647,0,0),(47,648,0,0),(47,649,0,0),(47,650,0,0),(2,651,0,0),(29,652,0,0),(23,653,0,0),(23,654,0,0),(23,655,0,0),(23,656,0,0),(23,657,0,0),(23,658,0,0),(23,659,0,0),(23,660,0,0),(23,661,0,0),(22,662,0,0),(22,663,0,0),(22,664,0,0),(22,665,0,0),(22,666,0,0),(22,667,0,0),(22,668,0,0),(22,669,0,0),(22,670,0,0),(21,671,0,0),(21,672,0,0),(21,673,0,0),(21,674,0,0),(21,675,0,0),(21,676,0,0),(21,677,0,0),(21,678,0,0),(21,679,0,0),(20,680,0,0),(20,681,0,0),(20,682,0,0),(20,683,0,0),(20,684,0,0),(20,685,0,0),(20,686,0,0),(20,687,0,0),(20,688,0,0),(29,689,0,0),(41,690,0,0),(45,691,0,0),(29,692,0,0),(29,693,0,0),(29,694,0,0),(23,695,0,0),(22,696,0,0),(21,697,0,0),(20,698,0,0),(29,699,0,0),(6,700,0,0),(4,701,0,0),(2,702,0,0),(29,703,0,0),(23,704,0,0),(23,705,0,0),(21,706,0,0),(21,707,0,0),(18,708,0,0),(7,709,0,0),(45,710,0,0),(45,711,0,0),(23,712,0,0),(20,713,0,0),(21,714,0,0),(22,715,0,0),(29,716,0,0),(2,717,0,0),(13,718,0,0),(29,719,0,0),(13,720,0,0),(29,721,0,0),(29,722,0,0),(29,723,0,0),(9,729,0,0),(29,750,0,0);
/*!40000 ALTER TABLE `vtiger_def_org_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_def_org_share`
--

DROP TABLE IF EXISTS `vtiger_def_org_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_def_org_share` (
  `ruleid` int(11) NOT NULL AUTO_INCREMENT,
  `tabid` int(11) NOT NULL,
  `permission` int(19) DEFAULT NULL,
  `editstatus` int(19) DEFAULT NULL,
  PRIMARY KEY (`ruleid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_def_org_share`
--

LOCK TABLES `vtiger_def_org_share` WRITE;
/*!40000 ALTER TABLE `vtiger_def_org_share` DISABLE KEYS */;
INSERT INTO `vtiger_def_org_share` VALUES (1,2,3,0),(2,4,3,2),(3,6,3,0),(4,7,3,0),(5,9,3,1),(6,13,3,0),(7,16,3,2),(8,20,3,0),(9,21,3,0),(10,22,3,0),(11,23,3,0),(12,26,2,0),(13,8,2,0),(14,14,2,0),(15,33,3,0),(16,34,2,0),(17,36,2,0),(18,40,3,0),(19,41,3,0),(20,42,3,0),(21,43,3,0),(22,45,3,0),(23,47,2,0),(24,18,3,0),(25,10,2,0);
/*!40000 ALTER TABLE `vtiger_def_org_share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_def_org_share_seq`
--

DROP TABLE IF EXISTS `vtiger_def_org_share_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_def_org_share_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_def_org_share_seq`
--

LOCK TABLES `vtiger_def_org_share_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_def_org_share_seq` DISABLE KEYS */;
INSERT INTO `vtiger_def_org_share_seq` VALUES (25);
/*!40000 ALTER TABLE `vtiger_def_org_share_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_default_record_view`
--

DROP TABLE IF EXISTS `vtiger_default_record_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_default_record_view` (
  `default_record_viewid` int(11) NOT NULL AUTO_INCREMENT,
  `default_record_view` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`default_record_viewid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_default_record_view`
--

LOCK TABLES `vtiger_default_record_view` WRITE;
/*!40000 ALTER TABLE `vtiger_default_record_view` DISABLE KEYS */;
INSERT INTO `vtiger_default_record_view` VALUES (1,'Summary',1,1),(2,'Detail',2,1);
/*!40000 ALTER TABLE `vtiger_default_record_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_default_record_view_seq`
--

DROP TABLE IF EXISTS `vtiger_default_record_view_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_default_record_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_default_record_view_seq`
--

LOCK TABLES `vtiger_default_record_view_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_default_record_view_seq` DISABLE KEYS */;
INSERT INTO `vtiger_default_record_view_seq` VALUES (2);
/*!40000 ALTER TABLE `vtiger_default_record_view_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_defaultactivitytype`
--

DROP TABLE IF EXISTS `vtiger_defaultactivitytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_defaultactivitytype` (
  `defaultactivitytypeid` int(11) NOT NULL AUTO_INCREMENT,
  `defaultactivitytype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`defaultactivitytypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_defaultactivitytype`
--

LOCK TABLES `vtiger_defaultactivitytype` WRITE;
/*!40000 ALTER TABLE `vtiger_defaultactivitytype` DISABLE KEYS */;
INSERT INTO `vtiger_defaultactivitytype` VALUES (1,'Call',1,299,1),(2,'Meeting',1,300,2);
/*!40000 ALTER TABLE `vtiger_defaultactivitytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_defaultactivitytype_seq`
--

DROP TABLE IF EXISTS `vtiger_defaultactivitytype_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_defaultactivitytype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_defaultactivitytype_seq`
--

LOCK TABLES `vtiger_defaultactivitytype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_defaultactivitytype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_defaultactivitytype_seq` VALUES (2);
/*!40000 ALTER TABLE `vtiger_defaultactivitytype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_defaultcv`
--

DROP TABLE IF EXISTS `vtiger_defaultcv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_defaultcv` (
  `tabid` int(19) NOT NULL,
  `defaultviewname` varchar(50) NOT NULL,
  `query` text,
  PRIMARY KEY (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_defaultcv`
--

LOCK TABLES `vtiger_defaultcv` WRITE;
/*!40000 ALTER TABLE `vtiger_defaultcv` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_defaultcv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_defaulteventstatus`
--

DROP TABLE IF EXISTS `vtiger_defaulteventstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_defaulteventstatus` (
  `defaulteventstatusid` int(11) NOT NULL AUTO_INCREMENT,
  `defaulteventstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`defaulteventstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_defaulteventstatus`
--

LOCK TABLES `vtiger_defaulteventstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_defaulteventstatus` DISABLE KEYS */;
INSERT INTO `vtiger_defaulteventstatus` VALUES (1,'Planned',1,296,1),(2,'Held',1,297,2),(3,'Not Held',1,298,3);
/*!40000 ALTER TABLE `vtiger_defaulteventstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_defaulteventstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_defaulteventstatus_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_defaulteventstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_defaulteventstatus_seq`
--

LOCK TABLES `vtiger_defaulteventstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_defaulteventstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_defaulteventstatus_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_defaulteventstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_duration_minutes`
--

DROP TABLE IF EXISTS `vtiger_duration_minutes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_duration_minutes` (
  `minutesid` int(19) NOT NULL AUTO_INCREMENT,
  `duration_minutes` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`minutesid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_duration_minutes`
--

LOCK TABLES `vtiger_duration_minutes` WRITE;
/*!40000 ALTER TABLE `vtiger_duration_minutes` DISABLE KEYS */;
INSERT INTO `vtiger_duration_minutes` VALUES (1,'00',0,1),(2,'15',1,1),(3,'30',2,1),(4,'45',3,1);
/*!40000 ALTER TABLE `vtiger_duration_minutes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_duration_minutes_seq`
--

DROP TABLE IF EXISTS `vtiger_duration_minutes_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_duration_minutes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_duration_minutes_seq`
--

LOCK TABLES `vtiger_duration_minutes_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_duration_minutes_seq` DISABLE KEYS */;
INSERT INTO `vtiger_duration_minutes_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_duration_minutes_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_durationhrs`
--

DROP TABLE IF EXISTS `vtiger_durationhrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_durationhrs` (
  `hrsid` int(19) NOT NULL AUTO_INCREMENT,
  `hrs` varchar(50) DEFAULT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`hrsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_durationhrs`
--

LOCK TABLES `vtiger_durationhrs` WRITE;
/*!40000 ALTER TABLE `vtiger_durationhrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_durationhrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_durationmins`
--

DROP TABLE IF EXISTS `vtiger_durationmins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_durationmins` (
  `minsid` int(19) NOT NULL AUTO_INCREMENT,
  `mins` varchar(50) DEFAULT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`minsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_durationmins`
--

LOCK TABLES `vtiger_durationmins` WRITE;
/*!40000 ALTER TABLE `vtiger_durationmins` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_durationmins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_email_access`
--

DROP TABLE IF EXISTS `vtiger_email_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_email_access` (
  `crmid` int(11) DEFAULT NULL,
  `mailid` int(11) DEFAULT NULL,
  `accessdate` date DEFAULT NULL,
  `accesstime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_email_access`
--

LOCK TABLES `vtiger_email_access` WRITE;
/*!40000 ALTER TABLE `vtiger_email_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_email_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_email_track`
--

DROP TABLE IF EXISTS `vtiger_email_track`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_email_track` (
  `crmid` int(11) DEFAULT NULL,
  `mailid` int(11) DEFAULT NULL,
  `access_count` int(11) DEFAULT NULL,
  UNIQUE KEY `link_tabidtype_idx` (`crmid`,`mailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_email_track`
--

LOCK TABLES `vtiger_email_track` WRITE;
/*!40000 ALTER TABLE `vtiger_email_track` DISABLE KEYS */;
INSERT INTO `vtiger_email_track` VALUES (1,3,0),(5,34,0);
/*!40000 ALTER TABLE `vtiger_email_track` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_emaildetails`
--

DROP TABLE IF EXISTS `vtiger_emaildetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_emaildetails` (
  `emailid` int(19) NOT NULL,
  `from_email` varchar(50) NOT NULL DEFAULT '',
  `to_email` text,
  `cc_email` text,
  `bcc_email` text,
  `assigned_user_email` varchar(50) NOT NULL DEFAULT '',
  `idlists` text,
  `email_flag` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_emaildetails`
--

LOCK TABLES `vtiger_emaildetails` WRITE;
/*!40000 ALTER TABLE `vtiger_emaildetails` DISABLE KEYS */;
INSERT INTO `vtiger_emaildetails` VALUES (3,'andrea.dnz@gmail.com','[\"andrea.dnz@gmail.com\"]','[\"andrea@danzi.tn.it\"]','[\"\"]','','1@-1|','SENT'),(27,'ale.menapace20@gmail.com','[\"account.prova@eurobrico.com\"]','[\"\"]','[\"\"]','','26@-1|','MailManager'),(31,'ciamp.tassullo@gmail.com','[\"account.prova@eurobrico.com\"]','[\"\"]','[\"\"]','','30@-1|','MailManager'),(33,'alessandra_menapace@hotmail.com','[\"account.prova@eurobrico.com\"]','[\"\"]','[\"\"]','','32@-1|','MailManager'),(34,'andrea.dnz@gmail.com','[\"help@danzi.tn.it\"]','[\"\"]','[\"\"]','','5@1|','SENT');
/*!40000 ALTER TABLE `vtiger_emaildetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_emailtemplates`
--

DROP TABLE IF EXISTS `vtiger_emailtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_emailtemplates` (
  `foldername` varchar(100) DEFAULT NULL,
  `templatename` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `description` text,
  `body` text,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `templateid` int(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`templateid`),
  KEY `emailtemplates_foldernamd_templatename_subject_idx` (`foldername`,`templatename`,`subject`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_emailtemplates`
--

LOCK TABLES `vtiger_emailtemplates` WRITE;
/*!40000 ALTER TABLE `vtiger_emailtemplates` DISABLE KEYS */;
INSERT INTO `vtiger_emailtemplates` VALUES ('Public','Announcement for Release','Announcement for Release','Announcement of a release','Hello!   <br />\n	<br />\n	On behalf of the vtiger team,  I am pleased to announce the release of vtiger crm4.2 . This is a feature packed release including the mass email template handling, custom view feature, vtiger_reports feature and a host of other utilities. vtiger runs on all platforms.    <br />\n        <br />\n	Notable Features of vtiger are :   <br />\n	<br />\n	-Email Client Integration    <br />\n	-Trouble Ticket Integration   <br />\n	-Invoice Management Integration   <br />\n	-Reports Integration   <br />\n	-Portal Integration   <br />\n	-Enhanced Word Plugin Support   <br />\n	-Custom View Integration   <br />\n	<br />\n	Known Issues:   <br />\n	-ABCD   <br />\n	-EFGH   <br />\n	-IJKL   <br />\n	-MNOP   <br />\n	-QRST',0,1),('Public','Pending Invoices','Invoices Pending','Payment Due','name <br />\nstreet, <br />\ncity, <br />\nstate, <br />\n zip) <br />\n  <br />\n Dear <br />\n <br />\n Please check the following invoices that are yet to be paid by you: <br />\n <br />\n No. Date      Amount <br />\n 1   1/1/01    $4000 <br />\n 2   2/2//01   $5000 <br />\n 3   3/3/01    $10000 <br />\n 4   7/4/01    $23560 <br />\n <br />\n Kindly let us know if there are any issues that you feel are pending to be discussed. <br />\n We will be more than happy to give you a call. <br />\n We would like to continue our business with you.',0,2),('Public','Acceptance Proposal','Acceptance Proposal','Acceptance of Proposal',' Dear <br />\n <br />\nYour proposal on the project XYZW has been reviewed by us <br />\nand is acceptable in its entirety. <br />\n <br />\nWe are eagerly looking forward to this project <br />\nand are pleased about having the opportunity to work <br />\ntogether. We look forward to a long standing relationship <br />\nwith your esteemed firm. <br />\n<br />\nI would like to take this opportunity to invite you <br />\nto a game of golf on Wednesday morning 9am at the <br />\nCuff Links Ground. We will be waiting for you in the <br />\nExecutive Lounge. <br />\n<br />\nLooking forward to seeing you there.',0,3),('Public','Goods received acknowledgement','Goods received acknowledgement','Acknowledged Receipt of Goods',' The undersigned hereby acknowledges receipt and delivery of the goods. <br />\nThe undersigned will release the payment subject to the goods being discovered not satisfactory. <br />\n<br />\nSigned under seal this <date>',0,4),('Public','Accept Order','Accept Order','Acknowledgement/Acceptance of Order',' Dear <br />\n         We are in receipt of your order as contained in the <br />\n   purchase order form.We consider this to be final and binding on both sides. <br />\nIf there be any exceptions noted, we shall consider them <br />\nonly if the objection is received within ten days of receipt of <br />\nthis notice. <br />\n <br />\nThank you for your patronage.',0,5),('Public','Address Change','Change of Address','Address Change','Dear <br />\n <br />\nWe are relocating our office to <br />\n11111,XYZDEF Cross, <br />\nUVWWX Circle <br />\nThe telephone number for this new location is (101) 1212-1328. <br />\n<br />\nOur Manufacturing Division will continue operations <br />\nat 3250 Lovedale Square Avenue, in Frankfurt. <br />\n<br />\nWe hope to keep in touch with you all. <br />\nPlease update your addressbooks.',0,6),('Public','Follow Up','Follow Up','Follow Up of meeting','Dear <br />\n<br />\nThank you for extending us the opportunity to meet with <br />\nyou and members of your staff. <br />\n<br />\nI know that John Doe serviced your account <br />\nfor many years and made many friends at your firm. He has personally <br />\ndiscussed with me the deep relationship that he had with your firm. <br />\nWhile his presence will be missed, I can promise that we will <br />\ncontinue to provide the fine service that was accorded by <br />\nJohn to your firm. <br />\n<br />\nI was genuinely touched to receive such fine hospitality. <br />\n<br />\nThank you once again.',0,7),('Public','Target Crossed!','Target Crossed!','Fantastic Sales Spree!','Congratulations! <br />\n<br />\nThe numbers are in and I am proud to inform you that our <br />\ntotal sales for the previous quarter <br />\namounts to $100,000,00.00!. This is the first time <br />\nwe have exceeded the target by almost 30%. <br />\nWe have also beat the previous quarter record by a <br />\nwhopping 75%! <br />\n<br />\nLet us meet at Smoking Joe for a drink in the evening! <br />\n\nC you all there guys!',0,8),('Public','Thanks Note','Thanks Note','Note of thanks','Dear <br />\n<br />\nThank you for your confidence in our ability to serve you. <br />\nWe are glad to be given the chance to serve you.I look <br />\nforward to establishing a long term partnership with you. <br />\nConsider me as a friend. <br />\nShould any need arise,please do give us a call.',0,9),('Public','Customer Login Details','Customer Portal Login Details','Send Portal login details to customer','<table width=\"700\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);\">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width=\"50\"> </td>\n            <td>\n            <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;\">\n                                <tr>\n                                    <td align=\"center\" rowspan=\"4\">$logo$</td>\n                                    <td align=\"center\"> </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"left\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;\">vtiger CRM<br /> </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"right\" style=\"padding-right: 100px;\">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">\n                                <tr>\n                                    <td valign=\"top\">\n                                    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\">\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;\">Dear $contact_name$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;\"> Thank you very much for subscribing to the vtiger CRM - annual support service.<br />Here is your self service portal login details:</td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"center\">\n                                                <table width=\"75%\" cellspacing=\"0\" cellpadding=\"10\" border=\"0\" style=\"border: 2px solid rgb(180, 180, 179); background-color: rgb(226, 226, 225); font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal;\">\n                                                        <tr>\n                                                            <td><br />User ID     : <font color=\"#990000\"><strong> $login_name$</strong></font> </td>\n                                                        </tr>\n                                                        <tr>\n                                                            <td>Password: <font color=\"#990000\"><strong> $password$</strong></font> </td>\n                                                        </tr>\n                                                        <tr>\n                                                            <td align=\"center\"> <strong>  $URL$<br /> </strong> </td>\n                                                        </tr>\n                                                </table>\n                                                </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;\"><strong>NOTE:</strong> We suggest you to change your password after logging in first time. <br /><br /> <strong><u>Help Documentation</u></strong><br />  <br /> After logging in to vtiger Self-service Portal first time, you can access the vtiger CRM documents from the <strong>Documents</strong> tab. Following documents are available for your reference:<br />\n                                                <ul>\n                                                    <li>Installation Manual (Windows &amp; Linux OS)<br /> </li>\n                                                    <li>User &amp; Administrator Manual<br /> </li>\n                                                    <li>vtiger Customer Portal - User Manual<br /> </li>\n                                                    <li>vtiger Outlook Plugin - User Manual<br /> </li>\n                                                    <li>vtiger Office Plug-in - User Manual<br /> </li>\n                                                    <li>vtiger Thunderbird Extension - User Manual<br /> </li>\n                                                    <li>vtiger Web Forms - User Manual<br /> </li>\n                                                    <li>vtiger Firefox Tool bar - User Manual<br /> </li>\n                                                </ul>\n                                                <br />  <br /> <strong><u>Knowledge Base</u></strong><br /> <br /> Periodically we update frequently asked question based on our customer experiences. You can access the latest articles from the <strong>FAQ</strong> tab.<br /> <br /> <strong><u>vtiger CRM - Details</u></strong><br /> <br /> Kindly let us know your current vtiger CRM version and system specification so that we can provide you necessary guidelines to enhance your vtiger CRM system performance. Based on your system specification we alert you about the latest security &amp; upgrade patches.<br />  <br />			 Thank you once again and wish you a wonderful experience with vtiger CRM.<br /> </td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><strong style=\"padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;\"><br /><br />Best Regards</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;\">$support_team$ </td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><a style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\" href=\"http://www.vtiger.com\">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width=\"1%\" valign=\"top\"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);\">\n                                <tr>\n                                    <td align=\"center\">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Email Id: <a style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);\" href=\"mailto:support@vtiger.com\">support@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width=\"50\"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>',0,10),('Public','Support end notification before a week','VtigerCRM Support Notification','Send Notification mail to customer before a week of support end date','<table width=\"700\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);\">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width=\"50\"> </td>\n            <td>\n            <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;\">\n                                <tr>\n                                    <td align=\"center\" rowspan=\"4\">$logo$</td>\n                                    <td align=\"center\"> </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"left\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;\">vtiger CRM </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"right\" style=\"padding-right: 100px;\">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">\n                                <tr>\n                                    <td valign=\"top\">\n                                    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\">\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;\">Dear $contacts-lastname$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;\">This is just a notification mail regarding your support end.<br /><span style=\"font-weight: bold;\">Priority:</span> Urgent<br />Your Support is going to expire on next week<br />Please contact support@vtiger.com.<br /><br /><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"center\"><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><strong style=\"padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;\"><br /><br />Sincerly</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;\">Support Team </td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><a style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\" href=\"http://www.vtiger.com\">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width=\"1%\" valign=\"top\"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);\">\n                                <tr>\n                                    <td align=\"center\">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Email Id: <a style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);\" href=\"mailto:info@vtiger.com\">info@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width=\"50\"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>',0,11),('Public','Support end notification before a month','VtigerCRM Support Notification','Send Notification mail to customer before a month of support end date','<table width=\"700\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" align=\"center\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);\">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width=\"50\"> </td>\n            <td>\n            <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\">\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;\">\n                                <tr>\n                                    <td align=\"center\" rowspan=\"4\">$logo$</td>\n                                    <td align=\"center\"> </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"left\" style=\"background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;\">vtiger CRM </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"right\" style=\"padding-right: 100px;\">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">\n                                <tr>\n                                    <td valign=\"top\">\n                                    <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\">\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;\">Dear $contacts-lastname$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;\">This is just a notification mail regarding your support end.<br /><span style=\"font-weight: bold;\">Priority:</span> Normal<br />Your Support is going to expire on next month.<br />Please contact support@vtiger.com<br /><br /><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"center\"><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><strong style=\"padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;\"><br /><br />Sincerly</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;\">Support Team </td>\n                                            </tr>\n                                            <tr>\n                                                <td align=\"right\"><a href=\"http://www.vtiger.com\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);\">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width=\"1%\" valign=\"top\"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width=\"100%\" cellspacing=\"0\" cellpadding=\"5\" border=\"0\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);\">\n                                <tr>\n                                    <td align=\"center\">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align=\"center\">Email Id: <a href=\"mailto:info@vtiger.com\" style=\"font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);\">info@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width=\"50\"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>',0,12);
/*!40000 ALTER TABLE `vtiger_emailtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_emailtemplates_seq`
--

DROP TABLE IF EXISTS `vtiger_emailtemplates_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_emailtemplates_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_emailtemplates_seq`
--

LOCK TABLES `vtiger_emailtemplates_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_emailtemplates_seq` DISABLE KEYS */;
INSERT INTO `vtiger_emailtemplates_seq` VALUES (13);
/*!40000 ALTER TABLE `vtiger_emailtemplates_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_entityname`
--

DROP TABLE IF EXISTS `vtiger_entityname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_entityname` (
  `tabid` int(19) NOT NULL DEFAULT '0',
  `modulename` varchar(50) NOT NULL,
  `tablename` varchar(100) NOT NULL,
  `fieldname` varchar(150) NOT NULL,
  `entityidfield` varchar(150) NOT NULL,
  `entityidcolumn` varchar(150) NOT NULL,
  PRIMARY KEY (`tabid`),
  KEY `entityname_tabid_idx` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_entityname`
--

LOCK TABLES `vtiger_entityname` WRITE;
/*!40000 ALTER TABLE `vtiger_entityname` DISABLE KEYS */;
INSERT INTO `vtiger_entityname` VALUES (2,'Potentials','vtiger_potential','potentialname','potentialid','potential_id'),(4,'Contacts','vtiger_contactdetails','firstname,lastname','contactid','contact_id'),(6,'Accounts','vtiger_account','accountname','accountid','account_id'),(7,'Leads','vtiger_leaddetails','firstname,lastname','leadid','leadid'),(8,'Documents','vtiger_notes','title','notesid','notesid'),(9,'Calendar','vtiger_activity','subject','activityid','activityid'),(10,'Emails','vtiger_activity','subject','activityid','activityid'),(13,'HelpDesk','vtiger_troubletickets','title','ticketid','ticketid'),(14,'Products','vtiger_products','productname','productid','product_id'),(15,'Faq','vtiger_faq','question','id','id'),(18,'Vendors','vtiger_vendor','vendorname','vendorid','vendor_id'),(19,'PriceBooks','vtiger_pricebook','bookname','pricebookid','pricebookid'),(20,'Quotes','vtiger_quotes','subject','quoteid','quote_id'),(21,'PurchaseOrder','vtiger_purchaseorder','subject','purchaseorderid','purchaseorderid'),(22,'SalesOrder','vtiger_salesorder','subject','salesorderid','salesorder_id'),(23,'Invoice','vtiger_invoice','subject','invoiceid','invoiceid'),(26,'Campaigns','vtiger_campaign','campaignname','campaignid','campaignid'),(29,'Users','vtiger_users','first_name,last_name','id','id'),(33,'PBXManager','vtiger_pbxmanager','customernumber','pbxmanagerid','pbxmanagerid'),(34,'Services','vtiger_service','servicename','serviceid','serviceid'),(36,'ServiceContracts','vtiger_servicecontracts','subject','servicecontractsid','servicecontractsid'),(40,'ProjectMilestone','vtiger_projectmilestone','projectmilestonename','projectmilestoneid','projectmilestoneid'),(41,'ProjectTask','vtiger_projecttask','projecttaskname','projecttaskid','projecttaskid'),(42,'Project','vtiger_project','projectname','projectid','projectid'),(43,'Assets','vtiger_assets','assetname','assetsid','assetsid'),(45,'ModComments','vtiger_modcomments','commentcontent','modcommentsid','modcommentsid'),(47,'SMSNotifier','vtiger_smsnotifier','message','smsnotifierid','smsnotifierid');
/*!40000 ALTER TABLE `vtiger_entityname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_eventhandler_module`
--

DROP TABLE IF EXISTS `vtiger_eventhandler_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_eventhandler_module` (
  `eventhandler_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) DEFAULT NULL,
  `handler_class` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`eventhandler_module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_eventhandler_module`
--

LOCK TABLES `vtiger_eventhandler_module` WRITE;
/*!40000 ALTER TABLE `vtiger_eventhandler_module` DISABLE KEYS */;
INSERT INTO `vtiger_eventhandler_module` VALUES (1,'ModTracker','ModTrackerHandler'),(2,'ServiceContracts','ServiceContractsHandler'),(3,'Home','Vtiger_RecordLabelUpdater_Handler'),(4,'Invoice','InvoiceHandler'),(5,'PurchaseOrder','PurchaseOrderHandler');
/*!40000 ALTER TABLE `vtiger_eventhandler_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_eventhandler_module_seq`
--

DROP TABLE IF EXISTS `vtiger_eventhandler_module_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_eventhandler_module_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_eventhandler_module_seq`
--

LOCK TABLES `vtiger_eventhandler_module_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_eventhandler_module_seq` DISABLE KEYS */;
INSERT INTO `vtiger_eventhandler_module_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_eventhandler_module_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_eventhandlers`
--

DROP TABLE IF EXISTS `vtiger_eventhandlers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_eventhandlers` (
  `eventhandler_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(100) NOT NULL,
  `handler_path` varchar(400) NOT NULL,
  `handler_class` varchar(100) NOT NULL,
  `cond` text,
  `is_active` int(1) NOT NULL,
  `dependent_on` varchar(255) DEFAULT '[]',
  PRIMARY KEY (`eventhandler_id`,`event_name`,`handler_class`),
  UNIQUE KEY `eventhandler_idx` (`eventhandler_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_eventhandlers`
--

LOCK TABLES `vtiger_eventhandlers` WRITE;
/*!40000 ALTER TABLE `vtiger_eventhandlers` DISABLE KEYS */;
INSERT INTO `vtiger_eventhandlers` VALUES (1,'vtiger.entity.aftersave','modules/SalesOrder/RecurringInvoiceHandler.php','RecurringInvoiceHandler','',1,'[]'),(2,'vtiger.entity.beforesave','data/VTEntityDelta.php','VTEntityDelta','',1,'[]'),(3,'vtiger.entity.aftersave','data/VTEntityDelta.php','VTEntityDelta','',1,'[]'),(4,'vtiger.entity.aftersave','modules/com_vtiger_workflow/VTEventHandler.inc','VTWorkflowEventHandler','',1,'[\"VTEntityDelta\"]'),(5,'vtiger.entity.afterrestore','modules/com_vtiger_workflow/VTEventHandler.inc','VTWorkflowEventHandler','',1,'[]'),(6,'vtiger.entity.aftersave.final','modules/HelpDesk/HelpDeskHandler.php','HelpDeskHandler','',1,'[]'),(7,'vtiger.entity.aftersave','modules/WSAPP/WorkFlowHandlers/WSAPPAssignToTracker.php','WSAPPAssignToTracker','',1,'[\"VTEntityDelta\"]'),(8,'vtiger.entity.aftersave','modules/PBXManager/PBXManagerHandler.php','PBXManagerHandler','',1,'[\"VTEntityDelta\"]'),(9,'vtiger.entity.afterdelete','modules/PBXManager/PBXManagerHandler.php','PBXManagerHandler','',1,'[]'),(10,'vtiger.entity.afterrestore','modules/PBXManager/PBXManagerHandler.php','PBXManagerHandler','',1,'[]'),(11,'vtiger.batchevent.save','modules/PBXManager/PBXManagerHandler.php','PBXManagerBatchHandler','',1,'[]'),(12,'vtiger.batchevent.delete','modules/PBXManager/PBXManagerHandler.php','PBXManagerBatchHandler','',1,'[]'),(13,'vtiger.entity.aftersave.final','modules/ModTracker/ModTrackerHandler.php','ModTrackerHandler','',1,'[]'),(14,'vtiger.entity.beforedelete','modules/ModTracker/ModTrackerHandler.php','ModTrackerHandler','',1,'[]'),(15,'vtiger.entity.afterrestore','modules/ModTracker/ModTrackerHandler.php','ModTrackerHandler','',1,'[]'),(16,'vtiger.entity.beforesave','modules/ServiceContracts/ServiceContractsHandler.php','ServiceContractsHandler','',1,'[]'),(17,'vtiger.entity.aftersave','modules/ServiceContracts/ServiceContractsHandler.php','ServiceContractsHandler','',1,'[]'),(18,'vtiger.entity.aftersave','modules/Vtiger/handlers/RecordLabelUpdater.php','Vtiger_RecordLabelUpdater_Handler','',1,'[]'),(19,'vtiger.entity.aftersave','modules/Invoice/InvoiceHandler.php','InvoiceHandler','',1,'[]'),(20,'vtiger.entity.aftersave','modules/PurchaseOrder/PurchaseOrderHandler.php','PurchaseOrderHandler','',1,'[]'),(21,'vtiger.entity.aftersave','modules/ModComments/ModCommentsHandler.php','ModCommentsHandler','',1,'[]'),(22,'vtiger.picklist.afterrename','modules/Settings/Picklist/handlers/PickListHandler.php','PickListHandler','',1,'[]'),(23,'vtiger.picklist.afterdelete','modules/Settings/Picklist/handlers/PickListHandler.php','PickListHandler','',1,'[]');
/*!40000 ALTER TABLE `vtiger_eventhandlers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_eventhandlers_seq`
--

DROP TABLE IF EXISTS `vtiger_eventhandlers_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_eventhandlers_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_eventhandlers_seq`
--

LOCK TABLES `vtiger_eventhandlers_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_eventhandlers_seq` DISABLE KEYS */;
INSERT INTO `vtiger_eventhandlers_seq` VALUES (23);
/*!40000 ALTER TABLE `vtiger_eventhandlers_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_eventstatus`
--

DROP TABLE IF EXISTS `vtiger_eventstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_eventstatus` (
  `eventstatusid` int(19) NOT NULL AUTO_INCREMENT,
  `eventstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`eventstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_eventstatus`
--

LOCK TABLES `vtiger_eventstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_eventstatus` DISABLE KEYS */;
INSERT INTO `vtiger_eventstatus` VALUES (1,'Planned',0,38,0),(2,'Held',0,39,1),(3,'Not Held',0,40,2);
/*!40000 ALTER TABLE `vtiger_eventstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_eventstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_eventstatus_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_eventstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_eventstatus_seq`
--

LOCK TABLES `vtiger_eventstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_eventstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_eventstatus_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_eventstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_expectedresponse`
--

DROP TABLE IF EXISTS `vtiger_expectedresponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_expectedresponse` (
  `expectedresponseid` int(19) NOT NULL AUTO_INCREMENT,
  `expectedresponse` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`expectedresponseid`),
  UNIQUE KEY `CampaignExpRes_UK01` (`expectedresponse`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_expectedresponse`
--

LOCK TABLES `vtiger_expectedresponse` WRITE;
/*!40000 ALTER TABLE `vtiger_expectedresponse` DISABLE KEYS */;
INSERT INTO `vtiger_expectedresponse` VALUES (2,'Excellent',1,42,1),(3,'Good',1,43,2),(4,'Average',1,44,3),(5,'Poor',1,45,4);
/*!40000 ALTER TABLE `vtiger_expectedresponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_expectedresponse_seq`
--

DROP TABLE IF EXISTS `vtiger_expectedresponse_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_expectedresponse_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_expectedresponse_seq`
--

LOCK TABLES `vtiger_expectedresponse_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_expectedresponse_seq` DISABLE KEYS */;
INSERT INTO `vtiger_expectedresponse_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_expectedresponse_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_extnstore_users`
--

DROP TABLE IF EXISTS `vtiger_extnstore_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_extnstore_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(75) DEFAULT NULL,
  `instanceurl` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_extnstore_users`
--

LOCK TABLES `vtiger_extnstore_users` WRITE;
/*!40000 ALTER TABLE `vtiger_extnstore_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_extnstore_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_faq`
--

DROP TABLE IF EXISTS `vtiger_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faq_no` varchar(100) NOT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `question` text,
  `answer` text,
  `category` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `faq_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_faq`
--

LOCK TABLES `vtiger_faq` WRITE;
/*!40000 ALTER TABLE `vtiger_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_faqcategories`
--

DROP TABLE IF EXISTS `vtiger_faqcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_faqcategories` (
  `faqcategories_id` int(19) NOT NULL AUTO_INCREMENT,
  `faqcategories` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`faqcategories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_faqcategories`
--

LOCK TABLES `vtiger_faqcategories` WRITE;
/*!40000 ALTER TABLE `vtiger_faqcategories` DISABLE KEYS */;
INSERT INTO `vtiger_faqcategories` VALUES (1,'General',1,46,0);
/*!40000 ALTER TABLE `vtiger_faqcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_faqcategories_seq`
--

DROP TABLE IF EXISTS `vtiger_faqcategories_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_faqcategories_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_faqcategories_seq`
--

LOCK TABLES `vtiger_faqcategories_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_faqcategories_seq` DISABLE KEYS */;
INSERT INTO `vtiger_faqcategories_seq` VALUES (1);
/*!40000 ALTER TABLE `vtiger_faqcategories_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_faqcf`
--

DROP TABLE IF EXISTS `vtiger_faqcf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_faqcf` (
  `faqid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`faqid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_faqcf`
--

LOCK TABLES `vtiger_faqcf` WRITE;
/*!40000 ALTER TABLE `vtiger_faqcf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_faqcf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_faqcomments`
--

DROP TABLE IF EXISTS `vtiger_faqcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_faqcomments` (
  `commentid` int(19) NOT NULL AUTO_INCREMENT,
  `faqid` int(19) DEFAULT NULL,
  `comments` text,
  `createdtime` datetime NOT NULL,
  PRIMARY KEY (`commentid`),
  KEY `faqcomments_faqid_idx` (`faqid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_faqcomments`
--

LOCK TABLES `vtiger_faqcomments` WRITE;
/*!40000 ALTER TABLE `vtiger_faqcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_faqcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_faqstatus`
--

DROP TABLE IF EXISTS `vtiger_faqstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_faqstatus` (
  `faqstatus_id` int(19) NOT NULL AUTO_INCREMENT,
  `faqstatus` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`faqstatus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_faqstatus`
--

LOCK TABLES `vtiger_faqstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_faqstatus` DISABLE KEYS */;
INSERT INTO `vtiger_faqstatus` VALUES (1,'Draft',0,47,0),(2,'Reviewed',0,48,1),(3,'Published',0,49,2),(4,'Obsolete',0,50,3);
/*!40000 ALTER TABLE `vtiger_faqstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_faqstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_faqstatus_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_faqstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_faqstatus_seq`
--

LOCK TABLES `vtiger_faqstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_faqstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_faqstatus_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_faqstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_feedback`
--

DROP TABLE IF EXISTS `vtiger_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_feedback` (
  `userid` int(19) DEFAULT NULL,
  `dontshow` varchar(19) DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_feedback`
--

LOCK TABLES `vtiger_feedback` WRITE;
/*!40000 ALTER TABLE `vtiger_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_field`
--

DROP TABLE IF EXISTS `vtiger_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_field` (
  `tabid` int(19) NOT NULL,
  `fieldid` int(19) NOT NULL AUTO_INCREMENT,
  `columnname` varchar(30) NOT NULL,
  `tablename` varchar(50) NOT NULL,
  `generatedtype` int(19) NOT NULL DEFAULT '0',
  `uitype` varchar(30) NOT NULL,
  `fieldname` varchar(50) NOT NULL,
  `fieldlabel` varchar(50) NOT NULL,
  `readonly` int(1) NOT NULL,
  `presence` int(19) NOT NULL DEFAULT '1',
  `defaultvalue` text,
  `maximumlength` int(19) DEFAULT NULL,
  `sequence` int(19) DEFAULT NULL,
  `block` int(19) DEFAULT NULL,
  `displaytype` int(19) DEFAULT NULL,
  `typeofdata` varchar(100) DEFAULT NULL,
  `quickcreate` int(10) NOT NULL DEFAULT '1',
  `quickcreatesequence` int(19) DEFAULT NULL,
  `info_type` varchar(20) DEFAULT NULL,
  `masseditable` int(10) NOT NULL DEFAULT '1',
  `helpinfo` text,
  `summaryfield` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `field_tabid_idx` (`tabid`),
  KEY `field_fieldname_idx` (`fieldname`),
  KEY `field_block_idx` (`block`),
  KEY `field_displaytype_idx` (`displaytype`)
) ENGINE=InnoDB AUTO_INCREMENT=751 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_field`
--

LOCK TABLES `vtiger_field` WRITE;
/*!40000 ALTER TABLE `vtiger_field` DISABLE KEYS */;
INSERT INTO `vtiger_field` VALUES (6,1,'accountname','vtiger_account',1,'2','accountname','Account Name',1,0,'',100,1,9,1,'V~M',0,1,'BAS',1,NULL,1),(6,2,'account_no','vtiger_account',1,'4','account_no','Account No',1,0,'',100,2,9,1,'V~O',3,NULL,'BAS',0,NULL,0),(6,3,'phone','vtiger_account',1,'11','phone','Phone',1,2,'',100,4,9,1,'V~O',2,2,'BAS',1,NULL,1),(6,4,'website','vtiger_account',1,'17','website','Website',1,2,'',100,3,9,1,'V~O',1,3,'BAS',1,NULL,1),(6,5,'fax','vtiger_account',1,'11','fax','Fax',1,2,'',100,6,9,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,6,'tickersymbol','vtiger_account',1,'1','tickersymbol','Ticker Symbol',1,2,'',100,5,9,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,7,'otherphone','vtiger_account',1,'11','otherphone','Other Phone',1,2,'',100,8,9,1,'V~O',1,NULL,'ADV',1,NULL,0),(6,8,'parentid','vtiger_account',1,'51','account_id','Member Of',1,2,'',100,7,9,1,'I~O',1,NULL,'BAS',0,NULL,0),(6,9,'email1','vtiger_account',1,'13','email1','Email',1,2,'',100,10,9,1,'E~O',2,NULL,'BAS',1,NULL,1),(6,10,'employees','vtiger_account',1,'7','employees','Employees',1,2,'',100,9,9,1,'I~O',1,NULL,'ADV',1,NULL,0),(6,11,'email2','vtiger_account',1,'13','email2','Other Email',1,2,'',100,11,9,1,'E~O',1,NULL,'ADV',1,NULL,0),(6,12,'ownership','vtiger_account',1,'1','ownership','Ownership',1,2,'',100,12,9,1,'V~O',1,NULL,'ADV',1,NULL,0),(6,13,'rating','vtiger_account',1,'15','rating','Rating',1,2,'',100,14,9,1,'V~O',1,NULL,'ADV',1,NULL,0),(6,14,'industry','vtiger_account',1,'15','industry','industry',1,2,'',100,13,9,1,'V~O',2,NULL,'ADV',1,NULL,0),(6,15,'siccode','vtiger_account',1,'1','siccode','SIC Code',1,2,'',100,16,9,1,'V~O',1,NULL,'ADV',1,NULL,0),(6,16,'account_type','vtiger_account',1,'15','accounttype','Type',1,2,'',100,15,9,1,'V~O',2,NULL,'ADV',1,NULL,0),(6,17,'annualrevenue','vtiger_account',1,'71','annual_revenue','Annual Revenue',1,2,'',100,18,9,1,'N~O',1,NULL,'ADV',1,NULL,0),(6,18,'emailoptout','vtiger_account',1,'56','emailoptout','Email Opt Out',1,2,'',100,17,9,1,'C~O',1,NULL,'ADV',1,NULL,0),(6,19,'notify_owner','vtiger_account',1,'56','notify_owner','Notify Owner',1,2,'1',10,20,9,1,'C~O',1,NULL,'ADV',1,NULL,0),(6,20,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,19,9,1,'V~M',0,4,'BAS',1,NULL,1),(6,21,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,22,9,2,'DT~O',3,NULL,'BAS',0,NULL,0),(6,22,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,21,9,2,'DT~O',3,NULL,'BAS',0,NULL,0),(6,23,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,23,9,3,'V~O',3,NULL,'BAS',0,NULL,0),(6,24,'bill_street','vtiger_accountbillads',1,'21','bill_street','Billing Address',1,2,'',100,1,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,25,'ship_street','vtiger_accountshipads',1,'21','ship_street','Shipping Address',1,2,'',100,2,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,26,'bill_city','vtiger_accountbillads',1,'1','bill_city','Billing City',1,2,'',100,5,11,1,'V~O',1,NULL,'BAS',1,NULL,1),(6,27,'ship_city','vtiger_accountshipads',1,'1','ship_city','Shipping City',1,2,'',100,6,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,28,'bill_state','vtiger_accountbillads',1,'1','bill_state','Billing State',1,2,'',100,7,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,29,'ship_state','vtiger_accountshipads',1,'1','ship_state','Shipping State',1,2,'',100,8,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,30,'bill_code','vtiger_accountbillads',1,'1','bill_code','Billing Code',1,2,'',100,9,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,31,'ship_code','vtiger_accountshipads',1,'1','ship_code','Shipping Code',1,2,'',100,10,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,32,'bill_country','vtiger_accountbillads',1,'1','bill_country','Billing Country',1,2,'',100,11,11,1,'V~O',1,NULL,'BAS',1,NULL,1),(6,33,'ship_country','vtiger_accountshipads',1,'1','ship_country','Shipping Country',1,2,'',100,12,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,34,'bill_pobox','vtiger_accountbillads',1,'1','bill_pobox','Billing Po Box',1,2,'',100,3,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,35,'ship_pobox','vtiger_accountshipads',1,'1','ship_pobox','Shipping Po Box',1,2,'',100,4,11,1,'V~O',1,NULL,'BAS',1,NULL,0),(6,36,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,12,1,'V~O',1,NULL,'BAS',1,NULL,0),(7,37,'salutation','vtiger_leaddetails',1,'55','salutationtype','Salutation',1,0,'',100,1,13,3,'V~O',1,NULL,'BAS',1,NULL,0),(7,38,'firstname','vtiger_leaddetails',1,'55','firstname','First Name',1,0,'',100,2,13,1,'V~O',2,1,'BAS',1,NULL,1),(7,39,'lead_no','vtiger_leaddetails',1,'4','lead_no','Lead No',1,0,'',100,3,13,1,'V~O',3,NULL,'BAS',0,NULL,0),(7,40,'phone','vtiger_leadaddress',1,'11','phone','Phone',1,2,'',100,5,13,1,'V~O',2,4,'BAS',1,NULL,1),(7,41,'lastname','vtiger_leaddetails',1,'255','lastname','Last Name',1,0,'',100,4,13,1,'V~M',0,2,'BAS',1,NULL,1),(7,42,'mobile','vtiger_leadaddress',1,'11','mobile','Mobile',1,2,'',100,7,13,1,'V~O',1,NULL,'BAS',1,NULL,0),(7,43,'company','vtiger_leaddetails',1,'2','company','Company',1,2,'',100,6,13,1,'V~O',2,3,'BAS',1,NULL,1),(7,44,'fax','vtiger_leadaddress',1,'11','fax','Fax',1,2,'',100,9,13,1,'V~O',1,NULL,'BAS',1,NULL,0),(7,45,'designation','vtiger_leaddetails',1,'1','designation','Designation',1,2,'',100,8,13,1,'V~O',1,NULL,'BAS',1,NULL,0),(7,46,'email','vtiger_leaddetails',1,'13','email','Email',1,2,'',100,11,13,1,'E~O',2,5,'BAS',1,NULL,1),(7,47,'leadsource','vtiger_leaddetails',1,'15','leadsource','Lead Source',1,2,'',100,10,13,1,'V~O',1,NULL,'BAS',1,NULL,1),(7,48,'website','vtiger_leadsubdetails',1,'17','website','Website',1,2,'',100,13,13,1,'V~O',1,NULL,'ADV',1,NULL,1),(7,49,'industry','vtiger_leaddetails',1,'15','industry','Industry',1,2,'',100,12,13,1,'V~O',1,NULL,'ADV',1,NULL,0),(7,50,'leadstatus','vtiger_leaddetails',1,'15','leadstatus','Lead Status',1,2,'',100,15,13,1,'V~O',1,NULL,'BAS',1,NULL,0),(7,51,'annualrevenue','vtiger_leaddetails',1,'71','annualrevenue','Annual Revenue',1,2,'',100,14,13,1,'N~O',1,NULL,'ADV',1,NULL,0),(7,52,'rating','vtiger_leaddetails',1,'15','rating','Rating',1,2,'',100,17,13,1,'V~O',1,NULL,'ADV',1,NULL,0),(7,53,'noofemployees','vtiger_leaddetails',1,'1','noofemployees','No Of Employees',1,2,'',100,16,13,1,'I~O',1,NULL,'ADV',1,NULL,0),(7,54,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,19,13,1,'V~M',0,6,'BAS',1,NULL,1),(7,55,'secondaryemail','vtiger_leaddetails',1,'13','secondaryemail','Secondary Email',1,2,'',100,18,13,1,'E~O',1,NULL,'ADV',1,NULL,0),(7,56,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,21,13,2,'DT~O',3,NULL,'BAS',0,NULL,0),(7,57,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,20,13,2,'DT~O',3,NULL,'BAS',0,NULL,0),(7,58,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,23,13,3,'V~O',3,NULL,'BAS',0,NULL,0),(7,59,'lane','vtiger_leadaddress',1,'21','lane','Street',1,2,'',100,1,15,1,'V~O',1,NULL,'BAS',1,NULL,0),(7,60,'code','vtiger_leadaddress',1,'1','code','Postal Code',1,2,'',100,3,15,1,'V~O',1,NULL,'BAS',1,NULL,0),(7,61,'city','vtiger_leadaddress',1,'1','city','City',1,2,'',100,4,15,1,'V~O',1,NULL,'BAS',1,NULL,1),(7,62,'country','vtiger_leadaddress',1,'1','country','Country',1,2,'',100,5,15,1,'V~O',1,NULL,'BAS',1,NULL,1),(7,63,'state','vtiger_leadaddress',1,'1','state','State',1,2,'',100,6,15,1,'V~O',1,NULL,'BAS',1,NULL,0),(7,64,'pobox','vtiger_leadaddress',1,'1','pobox','Po Box',1,2,'',100,2,15,1,'V~O',1,NULL,'BAS',1,NULL,0),(7,65,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,16,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,66,'salutation','vtiger_contactdetails',1,'55','salutationtype','Salutation',1,0,'',100,1,4,3,'V~O',1,NULL,'BAS',1,NULL,0),(4,67,'firstname','vtiger_contactdetails',1,'55','firstname','First Name',1,0,'',100,2,4,1,'V~O',2,1,'BAS',1,NULL,1),(4,68,'contact_no','vtiger_contactdetails',1,'4','contact_no','Contact Id',1,0,'',100,3,4,1,'V~O',3,NULL,'BAS',0,NULL,0),(4,69,'phone','vtiger_contactdetails',1,'11','phone','Office Phone',1,2,'',100,5,4,1,'V~O',2,4,'BAS',1,NULL,1),(4,70,'lastname','vtiger_contactdetails',1,'255','lastname','Last Name',1,0,'',100,4,4,1,'V~M',0,2,'BAS',1,NULL,1),(4,71,'mobile','vtiger_contactdetails',1,'11','mobile','Mobile',1,2,'',100,7,4,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,72,'accountid','vtiger_contactdetails',1,'51','account_id','Account Name',1,0,'',100,6,4,1,'I~O',2,3,'BAS',1,NULL,1),(4,73,'homephone','vtiger_contactsubdetails',1,'11','homephone','Home Phone',1,2,'',100,9,4,1,'V~O',1,NULL,'ADV',1,NULL,0),(4,74,'leadsource','vtiger_contactsubdetails',1,'15','leadsource','Lead Source',1,2,'',100,8,4,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,75,'otherphone','vtiger_contactsubdetails',1,'11','otherphone','Other Phone',1,2,'',100,11,4,1,'V~O',1,NULL,'ADV',1,NULL,0),(4,76,'title','vtiger_contactdetails',1,'1','title','Title',1,2,'',100,10,4,1,'V~O',1,NULL,'BAS',1,NULL,1),(4,77,'fax','vtiger_contactdetails',1,'11','fax','Fax',1,2,'',100,13,4,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,78,'department','vtiger_contactdetails',1,'1','department','Department',1,2,'',100,12,4,1,'V~O',1,NULL,'ADV',1,NULL,0),(4,79,'birthday','vtiger_contactsubdetails',1,'5','birthday','Birthdate',1,2,'',100,16,4,1,'D~O',1,NULL,'ADV',1,NULL,0),(4,80,'email','vtiger_contactdetails',1,'13','email','Email',1,2,'',100,15,4,1,'E~O',2,5,'BAS',1,NULL,1),(4,81,'reportsto','vtiger_contactdetails',1,'57','contact_id','Reports To',1,2,'',100,18,4,1,'V~O',1,NULL,'ADV',0,NULL,0),(4,82,'assistant','vtiger_contactsubdetails',1,'1','assistant','Assistant',1,2,'',100,17,4,1,'V~O',1,NULL,'ADV',1,NULL,0),(4,83,'secondaryemail','vtiger_contactdetails',1,'13','secondaryemail','Secondary Email',1,2,'',100,20,4,1,'E~O',1,NULL,'ADV',1,NULL,0),(4,84,'assistantphone','vtiger_contactsubdetails',1,'11','assistantphone','Assistant Phone',1,2,'',100,19,4,1,'V~O',1,NULL,'ADV',1,NULL,0),(4,85,'donotcall','vtiger_contactdetails',1,'56','donotcall','Do Not Call',1,2,'',100,22,4,1,'C~O',1,NULL,'ADV',1,NULL,0),(4,86,'emailoptout','vtiger_contactdetails',1,'56','emailoptout','Email Opt Out',1,2,'',100,21,4,1,'C~O',1,NULL,'ADV',1,NULL,0),(4,87,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,24,4,1,'V~M',0,6,'BAS',1,NULL,1),(4,88,'reference','vtiger_contactdetails',1,'56','reference','Reference',1,2,'',10,23,4,1,'C~O',1,NULL,'ADV',1,NULL,0),(4,89,'notify_owner','vtiger_contactdetails',1,'56','notify_owner','Notify Owner',1,2,'',10,26,4,1,'C~O',1,NULL,'ADV',1,NULL,0),(4,90,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,25,4,2,'DT~O',3,NULL,'BAS',0,NULL,0),(4,91,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,27,4,2,'DT~O',3,NULL,'BAS',0,NULL,0),(4,92,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,28,4,3,'V~O',3,NULL,'BAS',0,NULL,0),(4,93,'portal','vtiger_customerdetails',1,'56','portal','Portal User',1,2,'',100,1,6,1,'C~O',1,NULL,'ADV',0,NULL,0),(4,94,'support_start_date','vtiger_customerdetails',1,'5','support_start_date','Support Start Date',1,2,'',100,2,6,1,'D~O',1,NULL,'ADV',1,NULL,0),(4,95,'support_end_date','vtiger_customerdetails',1,'5','support_end_date','Support End Date',1,2,'',100,3,6,1,'D~O~OTH~GE~support_start_date~Support Start Date',1,NULL,'ADV',1,NULL,0),(4,96,'mailingstreet','vtiger_contactaddress',1,'21','mailingstreet','Mailing Street',1,2,'',100,1,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,97,'otherstreet','vtiger_contactaddress',1,'21','otherstreet','Other Street',1,2,'',100,2,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,98,'mailingcity','vtiger_contactaddress',1,'1','mailingcity','Mailing City',1,2,'',100,5,7,1,'V~O',1,NULL,'BAS',1,NULL,1),(4,99,'othercity','vtiger_contactaddress',1,'1','othercity','Other City',1,2,'',100,6,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,100,'mailingstate','vtiger_contactaddress',1,'1','mailingstate','Mailing State',1,2,'',100,7,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,101,'otherstate','vtiger_contactaddress',1,'1','otherstate','Other State',1,2,'',100,8,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,102,'mailingzip','vtiger_contactaddress',1,'1','mailingzip','Mailing Zip',1,2,'',100,9,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,103,'otherzip','vtiger_contactaddress',1,'1','otherzip','Other Zip',1,2,'',100,10,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,104,'mailingcountry','vtiger_contactaddress',1,'1','mailingcountry','Mailing Country',1,2,'',100,11,7,1,'V~O',1,NULL,'BAS',1,NULL,1),(4,105,'othercountry','vtiger_contactaddress',1,'1','othercountry','Other Country',1,2,'',100,12,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,106,'mailingpobox','vtiger_contactaddress',1,'1','mailingpobox','Mailing Po Box',1,2,'',100,3,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,107,'otherpobox','vtiger_contactaddress',1,'1','otherpobox','Other Po Box',1,2,'',100,4,7,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,108,'imagename','vtiger_contactdetails',1,'69','imagename','Contact Image',1,2,'',100,1,73,1,'V~O',3,NULL,'ADV',0,NULL,0),(4,109,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,8,1,'V~O',1,NULL,'BAS',1,NULL,0),(2,110,'potentialname','vtiger_potential',1,'2','potentialname','Potential Name',1,0,'',100,1,1,1,'V~M',0,1,'BAS',1,NULL,1),(2,111,'potential_no','vtiger_potential',1,'4','potential_no','Potential No',1,0,'',100,2,1,1,'V~O',3,NULL,'BAS',0,NULL,0),(2,112,'amount','vtiger_potential',1,'71','amount','Amount',1,2,'',100,5,1,1,'N~O',2,5,'BAS',1,NULL,1),(2,113,'related_to','vtiger_potential',1,'10','related_to','Related To',1,0,'',100,3,1,1,'V~O',0,2,'BAS',1,NULL,1),(2,114,'closingdate','vtiger_potential',1,'23','closingdate','Expected Close Date',1,2,'',100,8,1,1,'D~M',2,3,'BAS',1,NULL,1),(2,115,'potentialtype','vtiger_potential',1,'15','opportunity_type','Type',1,2,'',100,7,1,1,'V~O',1,NULL,'BAS',1,NULL,0),(2,116,'nextstep','vtiger_potential',1,'1','nextstep','Next Step',1,2,'',100,10,1,1,'V~O',1,NULL,'BAS',1,NULL,0),(2,117,'leadsource','vtiger_potential',1,'15','leadsource','Lead Source',1,2,'',100,9,1,1,'V~O',1,NULL,'BAS',1,NULL,0),(2,118,'sales_stage','vtiger_potential',1,'15','sales_stage','Sales Stage',1,2,'',100,12,1,1,'V~M',2,4,'BAS',1,NULL,1),(2,119,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,2,'',100,11,1,1,'V~M',0,6,'BAS',1,NULL,1),(2,120,'probability','vtiger_potential',1,'9','probability','Probability',1,2,'',100,14,1,1,'N~O',1,NULL,'BAS',1,NULL,0),(2,121,'campaignid','vtiger_potential',1,'58','campaignid','Campaign Source',1,2,'',100,13,1,1,'N~O',1,NULL,'BAS',1,NULL,0),(2,122,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,16,1,2,'DT~O',3,NULL,'BAS',0,NULL,0),(2,123,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,15,1,2,'DT~O',3,NULL,'BAS',0,NULL,0),(2,124,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,17,1,3,'V~O',3,NULL,'BAS',0,NULL,0),(2,125,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,3,1,'V~O',1,NULL,'BAS',1,NULL,0),(26,126,'campaignname','vtiger_campaign',1,'2','campaignname','Campaign Name',1,0,'',100,1,74,1,'V~M',0,1,'BAS',1,NULL,1),(26,127,'campaign_no','vtiger_campaign',1,'4','campaign_no','Campaign No',1,0,'',100,2,74,1,'V~O',3,NULL,'BAS',0,NULL,0),(26,128,'campaigntype','vtiger_campaign',1,'15','campaigntype','Campaign Type',1,2,'',100,5,74,1,'V~O',2,3,'BAS',1,NULL,1),(26,129,'product_id','vtiger_campaign',1,'59','product_id','Product',1,2,'',100,6,74,1,'I~O',2,5,'BAS',1,NULL,0),(26,130,'campaignstatus','vtiger_campaign',1,'15','campaignstatus','Campaign Status',1,2,'',100,4,74,1,'V~O',2,6,'BAS',1,NULL,1),(26,131,'closingdate','vtiger_campaign',1,'23','closingdate','Expected Close Date',1,2,'',100,8,74,1,'D~M',2,2,'BAS',1,NULL,1),(26,132,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,3,74,1,'V~M',0,7,'BAS',1,NULL,1),(26,133,'numsent','vtiger_campaign',1,'9','numsent','Num Sent',1,2,'',100,12,74,1,'N~O',1,NULL,'BAS',1,NULL,0),(26,134,'sponsor','vtiger_campaign',1,'1','sponsor','Sponsor',1,2,'',100,9,74,1,'V~O',1,NULL,'BAS',1,NULL,0),(26,135,'targetaudience','vtiger_campaign',1,'1','targetaudience','Target Audience',1,2,'',100,7,74,1,'V~O',1,NULL,'BAS',1,NULL,0),(26,136,'targetsize','vtiger_campaign',1,'1','targetsize','TargetSize',1,2,'',100,10,74,1,'I~O',1,NULL,'BAS',1,NULL,0),(26,137,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,11,74,2,'DT~O',3,NULL,'BAS',0,NULL,0),(26,138,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,13,74,2,'DT~O',3,NULL,'BAS',0,NULL,0),(26,139,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,16,74,3,'V~O',3,NULL,'BAS',0,NULL,0),(26,140,'expectedresponse','vtiger_campaign',1,'15','expectedresponse','Expected Response',1,2,'',100,3,76,1,'V~O',2,4,'BAS',1,NULL,0),(26,141,'expectedrevenue','vtiger_campaign',1,'71','expectedrevenue','Expected Revenue',1,2,'',100,4,76,1,'N~O',1,NULL,'BAS',1,NULL,1),(26,142,'budgetcost','vtiger_campaign',1,'71','budgetcost','Budget Cost',1,2,'',100,1,76,1,'N~O',1,NULL,'BAS',1,NULL,0),(26,143,'actualcost','vtiger_campaign',1,'71','actualcost','Actual Cost',1,2,'',100,2,76,1,'N~O',1,NULL,'BAS',1,NULL,0),(26,144,'expectedresponsecount','vtiger_campaign',1,'1','expectedresponsecount','Expected Response Count',1,2,'',100,7,76,1,'I~O',1,NULL,'BAS',1,NULL,0),(26,145,'expectedsalescount','vtiger_campaign',1,'1','expectedsalescount','Expected Sales Count',1,2,'',100,5,76,1,'I~O',1,NULL,'BAS',1,NULL,0),(26,146,'expectedroi','vtiger_campaign',1,'71','expectedroi','Expected ROI',1,2,'',100,9,76,1,'N~O',1,NULL,'BAS',1,NULL,0),(26,147,'actualresponsecount','vtiger_campaign',1,'1','actualresponsecount','Actual Response Count',1,2,'',100,8,76,1,'I~O',1,NULL,'BAS',1,NULL,0),(26,148,'actualsalescount','vtiger_campaign',1,'1','actualsalescount','Actual Sales Count',1,2,'',100,6,76,1,'I~O',1,NULL,'BAS',1,NULL,0),(26,149,'actualroi','vtiger_campaign',1,'71','actualroi','Actual ROI',1,2,'',100,10,76,1,'N~O',1,NULL,'BAS',1,NULL,0),(26,150,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,81,1,'V~O',1,NULL,'BAS',1,NULL,0),(4,151,'campaignrelstatus','vtiger_campaignrelstatus',1,'16','campaignrelstatus','Campaign Status',1,0,'0',100,1,NULL,1,'V~O',1,NULL,'BAS',0,NULL,0),(6,152,'campaignrelstatus','vtiger_campaignrelstatus',1,'16','campaignrelstatus','Campaign Status',1,0,'0',100,1,NULL,1,'V~O',1,NULL,'BAS',0,NULL,0),(7,153,'campaignrelstatus','vtiger_campaignrelstatus',1,'16','campaignrelstatus','Campaign Status',1,0,'0',100,1,NULL,1,'V~O',1,NULL,'BAS',0,NULL,0),(26,154,'campaignrelstatus','vtiger_campaignrelstatus',1,'16','campaignrelstatus','Campaign Status',1,0,'0',100,1,NULL,1,'V~O',1,NULL,'BAS',0,NULL,0),(13,155,'ticket_no','vtiger_troubletickets',1,'4','ticket_no','Ticket No',1,0,'',100,14,25,1,'V~O',3,NULL,'BAS',0,NULL,1),(13,156,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,5,25,1,'V~M',0,4,'BAS',1,NULL,1),(13,157,'parent_id','vtiger_troubletickets',1,'10','parent_id','Related To',1,0,'',100,2,25,1,'I~O',1,NULL,'BAS',1,NULL,1),(13,158,'priority','vtiger_troubletickets',1,'15','ticketpriorities','Priority',1,2,'',100,7,25,1,'V~O',2,3,'BAS',1,NULL,1),(13,159,'product_id','vtiger_troubletickets',1,'59','product_id','Product Name',1,2,'',100,6,25,1,'I~O',1,NULL,'BAS',1,NULL,0),(13,160,'severity','vtiger_troubletickets',1,'15','ticketseverities','Severity',1,2,'',100,9,25,1,'V~O',1,NULL,'BAS',1,NULL,1),(13,161,'status','vtiger_troubletickets',1,'15','ticketstatus','Status',1,2,'',100,8,25,1,'V~M',1,2,'BAS',1,NULL,1),(13,162,'category','vtiger_troubletickets',1,'15','ticketcategories','Category',1,2,'',100,11,25,1,'V~O',1,NULL,'BAS',1,NULL,0),(13,163,'update_log','vtiger_troubletickets',1,'19','update_log','Update History',1,0,'',100,12,25,3,'V~O',1,NULL,'BAS',0,NULL,0),(13,164,'hours','vtiger_troubletickets',1,'1','hours','Hours',1,2,'',100,10,25,1,'N~O',1,NULL,'BAS',1,'This gives the estimated hours for the Ticket.<br>When the same ticket is added to a Service Contract,based on the Tracking Unit of the Service Contract,Used units is updated whenever a ticket is Closed.',0),(13,165,'days','vtiger_troubletickets',1,'1','days','Days',1,2,'',100,11,25,1,'N~O',1,NULL,'BAS',1,'This gives the estimated days for the Ticket.<br>When the same ticket is added to a Service Contract,based on the Tracking Unit of the Service Contract,Used units is updated whenever a ticket is Closed.',0),(13,166,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,10,25,2,'DT~O',3,NULL,'BAS',0,NULL,0),(13,167,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,13,25,2,'DT~O',3,NULL,'BAS',0,NULL,0),(13,168,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,17,25,3,'V~O',3,NULL,'BAS',0,NULL,0),(13,169,'title','vtiger_troubletickets',1,'22','ticket_title','Title',1,0,'',100,1,25,1,'V~M',0,1,'BAS',1,NULL,1),(13,170,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,28,1,'V~O',2,4,'BAS',1,NULL,1),(13,171,'solution','vtiger_troubletickets',1,'19','solution','Solution',1,0,'',100,1,29,1,'V~O',3,NULL,'BAS',0,NULL,0),(13,172,'comments','vtiger_ticketcomments',1,'19','comments','Add Comment',1,1,'',100,1,30,1,'V~O',3,NULL,'BAS',0,NULL,0),(14,173,'productname','vtiger_products',1,'2','productname','Product Name',1,0,'',100,1,31,1,'V~M',0,1,'BAS',1,NULL,1),(14,174,'product_no','vtiger_products',1,'4','product_no','Product No',1,0,'',100,2,31,1,'V~O',3,NULL,'BAS',0,NULL,0),(14,175,'productcode','vtiger_products',1,'1','productcode','Part Number',1,2,'',100,4,31,1,'V~O',1,NULL,'BAS',1,NULL,1),(14,176,'discontinued','vtiger_products',1,'56','discontinued','Product Active',1,2,'1',100,3,31,1,'V~O',2,2,'BAS',1,NULL,0),(14,177,'manufacturer','vtiger_products',1,'15','manufacturer','Manufacturer',1,2,'',100,6,31,1,'V~O',1,NULL,'BAS',1,NULL,0),(14,178,'productcategory','vtiger_products',1,'15','productcategory','Product Category',1,2,'',100,6,31,1,'V~O',1,NULL,'BAS',1,NULL,0),(14,179,'sales_start_date','vtiger_products',1,'5','sales_start_date','Sales Start Date',1,2,'',100,5,31,1,'D~O',1,NULL,'BAS',1,NULL,0),(14,180,'sales_end_date','vtiger_products',1,'5','sales_end_date','Sales End Date',1,2,'',100,8,31,1,'D~O~OTH~GE~sales_start_date~Sales Start Date',1,NULL,'BAS',1,NULL,0),(14,181,'start_date','vtiger_products',1,'5','start_date','Support Start Date',1,2,'',100,7,31,1,'D~O',1,NULL,'BAS',1,NULL,0),(14,182,'expiry_date','vtiger_products',1,'5','expiry_date','Support Expiry Date',1,2,'',100,10,31,1,'D~O~OTH~GE~start_date~Start Date',1,NULL,'BAS',1,NULL,0),(14,183,'website','vtiger_products',1,'17','website','Website',1,2,'',100,14,31,1,'V~O',1,NULL,'BAS',1,NULL,0),(14,184,'vendor_id','vtiger_products',1,'75','vendor_id','Vendor Name',1,2,'',100,13,31,1,'I~O',1,NULL,'BAS',1,NULL,0),(14,185,'mfr_part_no','vtiger_products',1,'1','mfr_part_no','Mfr PartNo',1,2,'',100,16,31,1,'V~O',1,NULL,'BAS',1,NULL,0),(14,186,'vendor_part_no','vtiger_products',1,'1','vendor_part_no','Vendor PartNo',1,2,'',100,15,31,1,'V~O',1,NULL,'BAS',1,NULL,0),(14,187,'serialno','vtiger_products',1,'1','serial_no','Serial No',1,2,'',100,18,31,1,'V~O',1,NULL,'BAS',1,NULL,0),(14,188,'productsheet','vtiger_products',1,'1','productsheet','Product Sheet',1,2,'',100,17,31,1,'V~O',1,NULL,'BAS',1,NULL,0),(14,189,'glacct','vtiger_products',1,'15','glacct','GL Account',1,2,'',100,20,31,1,'V~O',1,NULL,'BAS',1,NULL,0),(14,190,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,19,31,2,'DT~O',3,NULL,'BAS',0,NULL,0),(14,191,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,21,31,2,'DT~O',3,NULL,'BAS',0,NULL,0),(14,192,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,22,31,3,'V~O',3,NULL,'BAS',0,NULL,0),(14,193,'unit_price','vtiger_products',1,'72','unit_price','Unit Price',1,0,'',100,1,32,1,'N~O',2,3,'BAS',0,NULL,1),(14,194,'commissionrate','vtiger_products',1,'9','commissionrate','Commission Rate',1,2,'',100,2,32,1,'N~O',1,NULL,'BAS',1,NULL,1),(14,195,'taxclass','vtiger_products',1,'83','taxclass','Tax Class',1,2,'',100,4,32,1,'V~O',3,NULL,'BAS',1,NULL,0),(14,196,'usageunit','vtiger_products',1,'15','usageunit','Usage Unit',1,2,'',100,1,33,1,'V~O',1,NULL,'ADV',1,NULL,0),(14,197,'qty_per_unit','vtiger_products',1,'1','qty_per_unit','Qty/Unit',1,2,'',100,2,33,1,'N~O',1,NULL,'ADV',1,NULL,1),(14,198,'qtyinstock','vtiger_products',1,'1','qtyinstock','Qty In Stock',1,2,'',100,3,33,1,'NN~O',0,4,'ADV',1,NULL,0),(14,199,'reorderlevel','vtiger_products',1,'1','reorderlevel','Reorder Level',1,2,'',100,4,33,1,'I~O',1,NULL,'ADV',1,NULL,0),(14,200,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Handler',1,0,'',100,5,33,1,'V~M',0,5,'BAS',1,NULL,0),(14,201,'qtyindemand','vtiger_products',1,'1','qtyindemand','Qty In Demand',1,2,'',100,6,33,1,'I~O',1,NULL,'ADV',1,NULL,0),(14,202,'imagename','vtiger_products',1,'69','imagename','Product Image',1,2,'',100,1,35,1,'V~O',3,NULL,'ADV',0,NULL,0),(14,203,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,36,1,'V~O',1,NULL,'BAS',1,NULL,0),(8,204,'title','vtiger_notes',1,'2','notes_title','Title',1,0,'',100,1,17,1,'V~M',0,1,'BAS',1,NULL,1),(8,205,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,5,17,2,'DT~O',3,NULL,'BAS',0,NULL,0),(8,206,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,6,17,2,'DT~O',3,NULL,'BAS',0,NULL,1),(8,207,'filename','vtiger_notes',1,'28','filename','File Name',1,2,'',100,3,18,1,'V~O',0,NULL,'BAS',0,NULL,1),(8,208,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,4,17,1,'V~M',0,3,'BAS',1,NULL,1),(8,209,'notecontent','vtiger_notes',1,'19','notecontent','Note',1,2,'',100,1,84,1,'V~O',1,NULL,'BAS',1,NULL,0),(8,210,'filetype','vtiger_notes',1,'1','filetype','File Type',1,2,'',100,5,18,2,'V~O',3,NULL,'BAS',0,NULL,0),(8,211,'filesize','vtiger_notes',1,'1','filesize','File Size',1,2,'',100,4,18,2,'I~O',3,NULL,'BAS',0,NULL,0),(8,212,'filelocationtype','vtiger_notes',1,'27','filelocationtype','Download Type',1,0,'',100,1,18,1,'V~O',0,NULL,'BAS',0,NULL,0),(8,213,'fileversion','vtiger_notes',1,'1','fileversion','Version',1,2,'',100,6,18,1,'V~O',1,NULL,'BAS',1,NULL,0),(8,214,'filestatus','vtiger_notes',1,'56','filestatus','Active',1,2,'1',100,2,18,1,'V~O',1,NULL,'BAS',1,NULL,0),(8,215,'filedownloadcount','vtiger_notes',1,'1','filedownloadcount','Download Count',1,2,'',100,7,18,2,'I~O',3,NULL,'BAS',0,NULL,0),(8,216,'folderid','vtiger_notes',1,'26','folderid','Folder Name',1,2,'',100,2,17,1,'V~O',2,2,'BAS',1,NULL,1),(8,217,'note_no','vtiger_notes',1,'4','note_no','Document No',1,0,'',100,3,17,1,'V~O',3,NULL,'BAS',0,NULL,0),(8,218,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,12,17,3,'V~O',3,NULL,'BAS',0,NULL,0),(10,219,'date_start','vtiger_activity',1,'6','date_start','Date & Time Sent',1,0,'',100,1,21,1,'DT~M~time_start~Time Start',1,NULL,'BAS',1,NULL,0),(10,220,'semodule','vtiger_activity',1,'2','parent_type','Sales Entity Module',1,0,'',100,2,21,3,'',1,NULL,'BAS',1,NULL,0),(10,221,'activitytype','vtiger_activity',1,'2','activitytype','Activity Type',1,0,'',100,3,21,3,'V~O',1,NULL,'BAS',1,NULL,0),(10,222,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,5,21,1,'V~M',1,NULL,'BAS',1,NULL,0),(10,223,'subject','vtiger_activity',1,'2','subject','Subject',1,0,'',100,1,23,1,'V~M',1,NULL,'BAS',1,NULL,0),(10,224,'name','vtiger_attachments',1,'61','filename','Attachment',1,0,'',100,2,23,1,'V~O',1,NULL,'BAS',1,NULL,0),(10,225,'description','vtiger_crmentity',1,'19','description','Description',1,0,'',100,1,24,1,'V~O',1,NULL,'BAS',1,NULL,0),(10,226,'time_start','vtiger_activity',1,'2','time_start','Time Start',1,0,'',100,9,23,1,'T~O',1,NULL,'BAS',1,NULL,0),(10,227,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,10,22,1,'DT~O',3,NULL,'BAS',0,NULL,0),(10,228,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,11,21,2,'DT~O',3,NULL,'BAS',0,NULL,0),(10,229,'access_count','vtiger_email_track',1,'25','access_count','Access Count',1,0,'0',100,6,21,3,'V~O',1,NULL,'BAS',0,NULL,0),(10,230,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,12,21,3,'V~O',3,NULL,'BAS',0,NULL,0),(9,231,'subject','vtiger_activity',1,'2','subject','Subject',1,0,'',100,1,19,1,'V~M',0,1,'BAS',1,NULL,1),(9,232,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,2,19,1,'V~M',0,4,'BAS',1,NULL,1),(9,233,'date_start','vtiger_activity',1,'6','date_start','Start Date & Time',1,0,'',100,3,19,1,'DT~M~time_start',0,2,'BAS',1,NULL,1),(9,234,'time_start','vtiger_activity',1,'2','time_start','Time Start',1,0,'',100,4,19,3,'T~O',1,NULL,'BAS',1,NULL,1),(9,235,'time_end','vtiger_activity',1,'2','time_end','End Time',1,0,'',100,4,19,3,'T~O',1,NULL,'BAS',1,NULL,1),(9,236,'due_date','vtiger_activity',1,'23','due_date','Due Date',1,0,'',100,5,19,1,'D~M~OTH~GE~date_start~Start Date & Time',1,NULL,'BAS',1,NULL,1),(9,237,'crmid','vtiger_seactivityrel',1,'66','parent_id','Related To',1,0,'',100,7,19,1,'I~O',1,NULL,'BAS',1,NULL,1),(9,238,'contactid','vtiger_cntactivityrel',1,'57','contact_id','Contact Name',1,0,'',100,8,19,1,'I~O',1,NULL,'BAS',1,NULL,0),(9,239,'status','vtiger_activity',1,'15','taskstatus','Status',1,0,'',100,8,19,1,'V~M',0,3,'BAS',1,NULL,0),(9,240,'eventstatus','vtiger_activity',1,'15','eventstatus','Status',1,0,'',100,9,19,3,'V~O',1,NULL,'BAS',1,NULL,0),(9,241,'priority','vtiger_activity',1,'15','taskpriority','Priority',1,0,'',100,10,19,1,'V~O',1,NULL,'BAS',1,NULL,0),(9,242,'sendnotification','vtiger_activity',1,'56','sendnotification','Send Notification',1,0,'',100,11,19,1,'C~O',1,NULL,'BAS',1,NULL,0),(9,243,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,14,19,2,'DT~O',3,NULL,'BAS',0,NULL,0),(9,244,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,15,19,2,'DT~O',3,NULL,'BAS',0,NULL,0),(9,245,'activitytype','vtiger_activity',1,'15','activitytype','Activity Type',1,0,'',100,16,19,3,'V~O',1,NULL,'BAS',1,NULL,1),(9,246,'visibility','vtiger_activity',1,'16','visibility','Visibility',1,0,'',100,17,19,3,'V~O',1,NULL,'BAS',1,NULL,0),(9,247,'description','vtiger_crmentity',1,'19','description','Description',1,0,'',100,1,20,1,'V~O',1,NULL,'BAS',1,NULL,0),(9,248,'duration_hours','vtiger_activity',1,'63','duration_hours','Duration',1,0,'',100,17,19,3,'T~O',1,NULL,'BAS',1,NULL,0),(9,249,'duration_minutes','vtiger_activity',1,'16','duration_minutes','Duration Minutes',1,0,'',100,18,19,3,'T~O',1,NULL,'BAS',1,NULL,0),(9,250,'location','vtiger_activity',1,'1','location','Location',1,0,'',100,19,19,1,'V~O',1,NULL,'BAS',1,NULL,0),(9,251,'reminder_time','vtiger_activity_reminder',1,'30','reminder_time','Send Reminder',1,0,'',100,1,19,3,'I~O',1,NULL,'BAS',1,NULL,0),(9,252,'recurringtype','vtiger_activity',1,'16','recurringtype','Recurrence',1,0,'',100,6,19,3,'O~O',1,NULL,'BAS',1,NULL,1),(9,253,'notime','vtiger_activity',1,'56','notime','No Time',1,0,'',100,20,19,3,'C~O',1,NULL,'BAS',1,NULL,0),(9,254,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,22,19,3,'V~O',3,NULL,'BAS',0,NULL,0),(16,255,'subject','vtiger_activity',1,'2','subject','Subject',1,0,'',100,1,39,1,'V~M',0,1,'BAS',1,NULL,1),(16,256,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,2,39,1,'V~M',0,6,'BAS',1,NULL,1),(16,257,'date_start','vtiger_activity',1,'6','date_start','Start Date & Time',1,0,'',100,3,39,1,'DT~M~time_start',0,2,'BAS',1,NULL,1),(16,258,'time_start','vtiger_activity',1,'2','time_start','Time Start',1,0,'',100,4,39,3,'T~M',1,NULL,'BAS',1,NULL,1),(16,259,'due_date','vtiger_activity',1,'23','due_date','End Date',1,0,'',100,5,39,1,'D~M~OTH~GE~date_start~Start Date & Time',0,5,'BAS',1,NULL,1),(16,260,'time_end','vtiger_activity',1,'2','time_end','End Time',1,0,'',100,5,39,3,'T~M',1,NULL,'BAS',1,NULL,1),(16,261,'recurringtype','vtiger_activity',1,'16','recurringtype','Recurrence',1,0,'',100,6,117,1,'O~O',1,NULL,'BAS',1,NULL,1),(16,262,'duration_hours','vtiger_activity',1,'63','duration_hours','Duration',1,0,'',100,7,39,3,'I~M',1,NULL,'BAS',1,NULL,0),(16,263,'duration_minutes','vtiger_activity',1,'16','duration_minutes','Duration Minutes',1,0,'',100,8,39,3,'O~O',1,NULL,'BAS',1,NULL,0),(16,264,'crmid','vtiger_seactivityrel',1,'66','parent_id','Related To',1,0,'',100,9,119,1,'I~O',1,NULL,'BAS',1,NULL,1),(16,265,'eventstatus','vtiger_activity',1,'15','eventstatus','Status',1,0,'',100,10,39,1,'V~M',0,3,'BAS',1,NULL,0),(16,266,'sendnotification','vtiger_activity',1,'56','sendnotification','Send Notification',1,0,'',100,11,39,1,'C~O',1,NULL,'BAS',1,NULL,0),(16,267,'activitytype','vtiger_activity',1,'15','activitytype','Activity Type',1,0,'',100,12,39,1,'V~M',0,4,'BAS',1,NULL,1),(16,268,'location','vtiger_activity',1,'1','location','Location',1,0,'',100,13,39,1,'V~O',1,NULL,'BAS',1,NULL,0),(16,269,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,14,39,2,'DT~O',3,NULL,'BAS',0,NULL,0),(16,270,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,15,39,2,'DT~O',3,NULL,'BAS',0,NULL,0),(16,271,'priority','vtiger_activity',1,'15','taskpriority','Priority',1,0,'',100,16,39,1,'V~O',1,NULL,'BAS',1,NULL,0),(16,272,'notime','vtiger_activity',1,'56','notime','No Time',1,0,'',100,17,39,3,'C~O',1,NULL,'BAS',1,NULL,0),(16,273,'visibility','vtiger_activity',1,'16','visibility','Visibility',1,0,'',100,18,39,1,'V~O',1,NULL,'BAS',1,NULL,0),(16,274,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,22,39,3,'V~O',3,NULL,'BAS',0,NULL,0),(16,275,'description','vtiger_crmentity',1,'19','description','Description',1,0,'',100,1,41,1,'V~O',1,NULL,'BAS',1,NULL,0),(16,276,'reminder_time','vtiger_activity_reminder',1,'30','reminder_time','Send Reminder',1,0,'',100,1,40,1,'I~O',1,NULL,'BAS',1,NULL,0),(16,277,'contactid','vtiger_cntactivityrel',1,'57','contact_id','Contact Name',1,0,'',100,1,119,1,'I~O',1,NULL,'BAS',1,NULL,0),(15,278,'product_id','vtiger_faq',1,'59','product_id','Product Name',1,2,'',100,1,37,1,'I~O',3,NULL,'BAS',1,NULL,1),(15,279,'faq_no','vtiger_faq',1,'4','faq_no','Faq No',1,0,'',100,2,37,1,'V~O',3,NULL,'BAS',0,NULL,0),(15,280,'category','vtiger_faq',1,'15','faqcategories','Category',1,2,'',100,4,37,1,'V~O',3,NULL,'BAS',1,NULL,1),(15,281,'status','vtiger_faq',1,'15','faqstatus','Status',1,2,'',100,3,37,1,'V~M',3,NULL,'BAS',1,NULL,0),(15,282,'question','vtiger_faq',1,'20','question','Question',1,2,'',100,7,37,1,'V~M',3,NULL,'BAS',1,NULL,1),(15,283,'answer','vtiger_faq',1,'20','faq_answer','Answer',1,2,'',100,8,37,1,'V~M',3,NULL,'BAS',1,NULL,0),(15,284,'comments','vtiger_faqcomments',1,'19','comments','Add Comment',1,1,'',100,1,38,1,'V~O',3,NULL,'BAS',0,NULL,0),(15,285,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,5,37,2,'DT~O',3,NULL,'BAS',0,NULL,1),(15,286,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,6,37,2,'DT~O',3,NULL,'BAS',0,NULL,1),(15,287,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,7,37,3,'V~O',3,NULL,'BAS',0,NULL,0),(18,288,'vendorname','vtiger_vendor',1,'2','vendorname','Vendor Name',1,0,'',100,1,42,1,'V~M',0,1,'BAS',1,NULL,1),(18,289,'vendor_no','vtiger_vendor',1,'4','vendor_no','Vendor No',1,0,'',100,2,42,1,'V~O',3,NULL,'BAS',0,NULL,0),(18,290,'phone','vtiger_vendor',1,'1','phone','Phone',1,2,'',100,4,42,1,'V~O',2,2,'BAS',1,NULL,1),(18,291,'email','vtiger_vendor',1,'13','email','Email',1,2,'',100,3,42,1,'E~O',2,3,'BAS',1,NULL,1),(18,292,'website','vtiger_vendor',1,'17','website','Website',1,2,'',100,6,42,1,'V~O',1,NULL,'BAS',1,NULL,0),(18,293,'glacct','vtiger_vendor',1,'15','glacct','GL Account',1,2,'',100,5,42,1,'V~O',1,NULL,'BAS',1,NULL,0),(18,294,'category','vtiger_vendor',1,'1','category','Category',1,2,'',100,8,42,1,'V~O',1,NULL,'BAS',1,NULL,1),(18,295,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,7,42,2,'DT~O',3,NULL,'BAS',0,NULL,0),(18,296,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,9,42,2,'DT~O',3,NULL,'BAS',0,NULL,0),(18,297,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,12,42,3,'V~O',3,NULL,'BAS',0,NULL,0),(18,298,'street','vtiger_vendor',1,'21','street','Street',1,2,'',100,1,44,1,'V~O',1,NULL,'ADV',1,NULL,0),(18,299,'pobox','vtiger_vendor',1,'1','pobox','Po Box',1,2,'',100,2,44,1,'V~O',1,NULL,'ADV',1,NULL,0),(18,300,'city','vtiger_vendor',1,'1','city','City',1,2,'',100,3,44,1,'V~O',1,NULL,'ADV',1,NULL,0),(18,301,'state','vtiger_vendor',1,'1','state','State',1,2,'',100,4,44,1,'V~O',1,NULL,'ADV',1,NULL,0),(18,302,'postalcode','vtiger_vendor',1,'1','postalcode','Postal Code',1,2,'',100,5,44,1,'V~O',1,NULL,'ADV',1,NULL,0),(18,303,'country','vtiger_vendor',1,'1','country','Country',1,2,'',100,6,44,1,'V~O',1,NULL,'ADV',1,NULL,0),(18,304,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,45,1,'V~O',1,NULL,'ADV',1,NULL,0),(19,305,'bookname','vtiger_pricebook',1,'2','bookname','Price Book Name',1,0,'',100,1,46,1,'V~M',0,1,'BAS',1,NULL,1),(19,306,'pricebook_no','vtiger_pricebook',1,'4','pricebook_no','PriceBook No',1,0,'',100,3,46,1,'V~O',3,NULL,'BAS',0,NULL,0),(19,307,'active','vtiger_pricebook',1,'56','active','Active',1,2,'1',100,2,46,1,'C~O',2,2,'BAS',1,NULL,1),(19,308,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,4,46,2,'DT~O',3,NULL,'BAS',0,NULL,0),(19,309,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,5,46,2,'DT~O',3,NULL,'BAS',0,NULL,0),(19,310,'currency_id','vtiger_pricebook',1,'117','currency_id','Currency',1,0,'',100,5,46,1,'I~M',0,3,'BAS',0,NULL,0),(19,311,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,7,46,3,'V~O',3,NULL,'BAS',0,NULL,0),(19,312,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,48,1,'V~O',1,NULL,'BAS',1,NULL,0),(20,313,'quote_no','vtiger_quotes',1,'4','quote_no','Quote No',1,0,'',100,3,49,1,'V~O',3,NULL,'BAS',0,NULL,1),(20,314,'subject','vtiger_quotes',1,'2','subject','Subject',1,0,'',100,1,49,1,'V~M',1,NULL,'BAS',1,NULL,1),(20,315,'potentialid','vtiger_quotes',1,'76','potential_id','Potential Name',1,2,'',100,2,49,1,'I~O',3,NULL,'BAS',1,NULL,1),(20,316,'quotestage','vtiger_quotes',1,'15','quotestage','Quote Stage',1,2,'',100,4,49,1,'V~M',3,NULL,'BAS',1,NULL,1),(20,317,'validtill','vtiger_quotes',1,'5','validtill','Valid Till',1,2,'',100,5,49,1,'D~O',3,NULL,'BAS',1,NULL,0),(20,318,'contactid','vtiger_quotes',1,'57','contact_id','Contact Name',1,2,'',100,6,49,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,319,'carrier','vtiger_quotes',1,'15','carrier','Carrier',1,2,'',100,8,49,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,320,'subtotal','vtiger_quotes',1,'72','hdnSubTotal','Sub Total',1,2,'',100,9,49,3,'N~O',3,NULL,'BAS',1,NULL,0),(20,321,'shipping','vtiger_quotes',1,'1','shipping','Shipping',1,2,'',100,10,49,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,322,'inventorymanager','vtiger_quotes',1,'77','assigned_user_id1','Inventory Manager',1,2,'',100,11,49,1,'I~O',3,NULL,'BAS',1,NULL,0),(20,323,'adjustment','vtiger_quotes',1,'72','txtAdjustment','Adjustment',1,2,'',100,20,49,3,'NN~O',3,NULL,'BAS',1,NULL,0),(20,324,'total','vtiger_quotes',1,'72','hdnGrandTotal','Total',1,2,'',100,14,49,3,'N~O',3,NULL,'BAS',1,NULL,1),(20,325,'taxtype','vtiger_quotes',1,'16','hdnTaxType','Tax Type',1,2,'',100,14,49,3,'V~O',3,NULL,'BAS',1,NULL,0),(20,326,'discount_percent','vtiger_quotes',1,'1','hdnDiscountPercent','Discount Percent',1,2,'',100,14,49,3,'N~O',3,NULL,'BAS',1,NULL,0),(20,327,'discount_amount','vtiger_quotes',1,'72','hdnDiscountAmount','Discount Amount',1,2,'',100,14,49,3,'N~O',3,NULL,'BAS',1,NULL,0),(20,328,'s_h_amount','vtiger_quotes',1,'72','hdnS_H_Amount','S&H Amount',1,2,'',100,14,49,3,'N~O',3,NULL,'BAS',1,NULL,0),(20,329,'accountid','vtiger_quotes',1,'73','account_id','Account Name',1,2,'',100,16,49,1,'I~M',3,NULL,'BAS',1,NULL,1),(20,330,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,17,49,1,'V~M',3,NULL,'BAS',1,NULL,1),(20,331,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,18,49,2,'DT~O',3,NULL,'BAS',0,NULL,0),(20,332,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,19,49,2,'DT~O',3,NULL,'BAS',0,NULL,0),(20,333,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,22,49,3,'V~O',3,NULL,'BAS',0,NULL,0),(20,334,'currency_id','vtiger_quotes',1,'117','currency_id','Currency',1,2,'1',100,20,49,3,'I~O',3,NULL,'BAS',1,NULL,0),(20,335,'conversion_rate','vtiger_quotes',1,'1','conversion_rate','Conversion Rate',1,2,'1',100,21,49,3,'N~O',3,NULL,'BAS',1,NULL,0),(20,336,'bill_street','vtiger_quotesbillads',1,'24','bill_street','Billing Address',1,2,'',100,1,51,1,'V~M',3,NULL,'BAS',1,NULL,0),(20,337,'ship_street','vtiger_quotesshipads',1,'24','ship_street','Shipping Address',1,2,'',100,2,51,1,'V~M',3,NULL,'BAS',1,NULL,0),(20,338,'bill_city','vtiger_quotesbillads',1,'1','bill_city','Billing City',1,2,'',100,5,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,339,'ship_city','vtiger_quotesshipads',1,'1','ship_city','Shipping City',1,2,'',100,6,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,340,'bill_state','vtiger_quotesbillads',1,'1','bill_state','Billing State',1,2,'',100,7,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,341,'ship_state','vtiger_quotesshipads',1,'1','ship_state','Shipping State',1,2,'',100,8,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,342,'bill_code','vtiger_quotesbillads',1,'1','bill_code','Billing Code',1,2,'',100,9,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,343,'ship_code','vtiger_quotesshipads',1,'1','ship_code','Shipping Code',1,2,'',100,10,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,344,'bill_country','vtiger_quotesbillads',1,'1','bill_country','Billing Country',1,2,'',100,11,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,345,'ship_country','vtiger_quotesshipads',1,'1','ship_country','Shipping Country',1,2,'',100,12,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,346,'bill_pobox','vtiger_quotesbillads',1,'1','bill_pobox','Billing Po Box',1,2,'',100,3,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,347,'ship_pobox','vtiger_quotesshipads',1,'1','ship_pobox','Shipping Po Box',1,2,'',100,4,51,1,'V~O',3,NULL,'BAS',1,NULL,0),(20,348,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,54,1,'V~O',3,NULL,'ADV',1,NULL,0),(20,349,'terms_conditions','vtiger_quotes',1,'19','terms_conditions','Terms & Conditions',1,2,'',100,1,53,1,'V~O',3,NULL,'ADV',1,NULL,0),(21,350,'purchaseorder_no','vtiger_purchaseorder',1,'4','purchaseorder_no','PurchaseOrder No',1,0,'',100,2,55,1,'V~O',3,NULL,'BAS',0,NULL,1),(21,351,'subject','vtiger_purchaseorder',1,'2','subject','Subject',1,0,'',100,1,55,1,'V~M',3,NULL,'BAS',1,NULL,1),(21,352,'vendorid','vtiger_purchaseorder',1,'81','vendor_id','Vendor Name',1,0,'',100,3,55,1,'I~M',3,NULL,'BAS',1,NULL,1),(21,353,'requisition_no','vtiger_purchaseorder',1,'1','requisition_no','Requisition No',1,2,'',100,4,55,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,354,'tracking_no','vtiger_purchaseorder',1,'1','tracking_no','Tracking Number',1,2,'',100,5,55,1,'V~O',3,NULL,'BAS',1,NULL,1),(21,355,'contactid','vtiger_purchaseorder',1,'57','contact_id','Contact Name',1,2,'',100,6,55,1,'I~O',3,NULL,'BAS',1,NULL,0),(21,356,'duedate','vtiger_purchaseorder',1,'5','duedate','Due Date',1,2,'',100,7,55,1,'D~O',3,NULL,'BAS',1,NULL,0),(21,357,'carrier','vtiger_purchaseorder',1,'15','carrier','Carrier',1,2,'',100,8,55,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,358,'adjustment','vtiger_purchaseorder',1,'72','txtAdjustment','Adjustment',1,2,'',100,10,55,3,'NN~O',3,NULL,'BAS',1,NULL,0),(21,359,'salescommission','vtiger_purchaseorder',1,'1','salescommission','Sales Commission',1,2,'',100,11,55,1,'N~O',3,NULL,'BAS',1,NULL,0),(21,360,'exciseduty','vtiger_purchaseorder',1,'1','exciseduty','Excise Duty',1,2,'',100,12,55,1,'N~O',3,NULL,'BAS',1,NULL,0),(21,361,'total','vtiger_purchaseorder',1,'72','hdnGrandTotal','Total',1,2,'',100,13,55,3,'N~O',3,NULL,'BAS',1,NULL,1),(21,362,'subtotal','vtiger_purchaseorder',1,'72','hdnSubTotal','Sub Total',1,2,'',100,14,55,3,'N~O',3,NULL,'BAS',1,NULL,0),(21,363,'taxtype','vtiger_purchaseorder',1,'16','hdnTaxType','Tax Type',1,2,'',100,14,55,3,'V~O',3,NULL,'BAS',1,NULL,0),(21,364,'discount_percent','vtiger_purchaseorder',1,'1','hdnDiscountPercent','Discount Percent',1,2,'',100,14,55,3,'N~O',3,NULL,'BAS',1,NULL,0),(21,365,'discount_amount','vtiger_purchaseorder',1,'72','hdnDiscountAmount','Discount Amount',1,0,'',100,14,55,3,'N~O',3,NULL,'BAS',1,NULL,0),(21,366,'s_h_amount','vtiger_purchaseorder',1,'72','hdnS_H_Amount','S&H Amount',1,2,'',100,14,55,3,'N~O',3,NULL,'BAS',1,NULL,0),(21,367,'postatus','vtiger_purchaseorder',1,'15','postatus','Status',1,2,'',100,15,55,1,'V~M',3,NULL,'BAS',1,NULL,0),(21,368,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,16,55,1,'V~M',3,NULL,'BAS',1,NULL,1),(21,369,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,17,55,2,'DT~O',3,NULL,'BAS',0,NULL,0),(21,370,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,18,55,2,'DT~O',3,NULL,'BAS',0,NULL,0),(21,371,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,22,55,3,'V~O',3,NULL,'BAS',0,NULL,0),(21,372,'currency_id','vtiger_purchaseorder',1,'117','currency_id','Currency',1,2,'1',100,19,55,3,'I~O',3,NULL,'BAS',1,NULL,0),(21,373,'conversion_rate','vtiger_purchaseorder',1,'1','conversion_rate','Conversion Rate',1,2,'1',100,20,55,3,'N~O',3,NULL,'BAS',1,NULL,0),(21,374,'bill_street','vtiger_pobillads',1,'24','bill_street','Billing Address',1,2,'',100,1,57,1,'V~M',3,NULL,'BAS',1,NULL,0),(21,375,'ship_street','vtiger_poshipads',1,'24','ship_street','Shipping Address',1,2,'',100,2,57,1,'V~M',3,NULL,'BAS',1,NULL,0),(21,376,'bill_city','vtiger_pobillads',1,'1','bill_city','Billing City',1,2,'',100,5,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,377,'ship_city','vtiger_poshipads',1,'1','ship_city','Shipping City',1,2,'',100,6,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,378,'bill_state','vtiger_pobillads',1,'1','bill_state','Billing State',1,2,'',100,7,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,379,'ship_state','vtiger_poshipads',1,'1','ship_state','Shipping State',1,2,'',100,8,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,380,'bill_code','vtiger_pobillads',1,'1','bill_code','Billing Code',1,2,'',100,9,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,381,'ship_code','vtiger_poshipads',1,'1','ship_code','Shipping Code',1,2,'',100,10,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,382,'bill_country','vtiger_pobillads',1,'1','bill_country','Billing Country',1,2,'',100,11,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,383,'ship_country','vtiger_poshipads',1,'1','ship_country','Shipping Country',1,2,'',100,12,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,384,'bill_pobox','vtiger_pobillads',1,'1','bill_pobox','Billing Po Box',1,2,'',100,3,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,385,'ship_pobox','vtiger_poshipads',1,'1','ship_pobox','Shipping Po Box',1,2,'',100,4,57,1,'V~O',3,NULL,'BAS',1,NULL,0),(21,386,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,60,1,'V~O',3,NULL,'ADV',1,NULL,0),(21,387,'terms_conditions','vtiger_purchaseorder',1,'19','terms_conditions','Terms & Conditions',1,2,'',100,1,59,1,'V~O',3,NULL,'ADV',1,NULL,0),(22,388,'salesorder_no','vtiger_salesorder',1,'4','salesorder_no','SalesOrder No',1,0,'',100,4,61,1,'V~O',3,NULL,'BAS',0,NULL,1),(22,389,'subject','vtiger_salesorder',1,'2','subject','Subject',1,0,'',100,1,61,1,'V~M',3,NULL,'BAS',1,NULL,1),(22,390,'potentialid','vtiger_salesorder',1,'76','potential_id','Potential Name',1,2,'',100,2,61,1,'I~O',3,NULL,'BAS',1,NULL,0),(22,391,'customerno','vtiger_salesorder',1,'1','customerno','Customer No',1,2,'',100,3,61,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,392,'quoteid','vtiger_salesorder',1,'78','quote_id','Quote Name',1,2,'',100,5,61,1,'I~O',3,NULL,'BAS',0,NULL,1),(22,393,'purchaseorder','vtiger_salesorder',1,'1','vtiger_purchaseorder','Purchase Order',1,2,'',100,5,61,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,394,'contactid','vtiger_salesorder',1,'57','contact_id','Contact Name',1,2,'',100,6,61,1,'I~O',3,NULL,'BAS',1,NULL,0),(22,395,'duedate','vtiger_salesorder',1,'5','duedate','Due Date',1,2,'',100,8,61,1,'D~O',3,NULL,'BAS',1,NULL,0),(22,396,'carrier','vtiger_salesorder',1,'15','carrier','Carrier',1,2,'',100,9,61,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,397,'pending','vtiger_salesorder',1,'1','pending','Pending',1,2,'',100,10,61,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,398,'sostatus','vtiger_salesorder',1,'15','sostatus','Status',1,2,'',100,11,61,1,'V~M',3,NULL,'BAS',1,NULL,0),(22,399,'adjustment','vtiger_salesorder',1,'72','txtAdjustment','Adjustment',1,2,'',100,12,61,3,'NN~O',3,NULL,'BAS',1,NULL,0),(22,400,'salescommission','vtiger_salesorder',1,'1','salescommission','Sales Commission',1,2,'',100,13,61,1,'N~O',3,NULL,'BAS',1,NULL,0),(22,401,'exciseduty','vtiger_salesorder',1,'1','exciseduty','Excise Duty',1,2,'',100,13,61,1,'N~O',3,NULL,'BAS',1,NULL,0),(22,402,'total','vtiger_salesorder',1,'72','hdnGrandTotal','Total',1,2,'',100,14,61,3,'N~O',3,NULL,'BAS',1,NULL,1),(22,403,'subtotal','vtiger_salesorder',1,'72','hdnSubTotal','Sub Total',1,2,'',100,15,61,3,'N~O',3,NULL,'BAS',1,NULL,0),(22,404,'taxtype','vtiger_salesorder',1,'16','hdnTaxType','Tax Type',1,2,'',100,15,61,3,'V~O',3,NULL,'BAS',1,NULL,0),(22,405,'discount_percent','vtiger_salesorder',1,'1','hdnDiscountPercent','Discount Percent',1,2,'',100,15,61,3,'N~O',3,NULL,'BAS',1,NULL,0),(22,406,'discount_amount','vtiger_salesorder',1,'72','hdnDiscountAmount','Discount Amount',1,0,'',100,15,61,3,'N~O',3,NULL,'BAS',1,NULL,0),(22,407,'s_h_amount','vtiger_salesorder',1,'72','hdnS_H_Amount','S&H Amount',1,2,'',100,15,61,3,'N~O',3,NULL,'BAS',1,NULL,0),(22,408,'accountid','vtiger_salesorder',1,'73','account_id','Account Name',1,2,'',100,16,61,1,'I~M',3,NULL,'BAS',1,NULL,1),(22,409,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,17,61,1,'V~M',3,NULL,'BAS',1,NULL,1),(22,410,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,18,61,2,'DT~O',3,NULL,'BAS',0,NULL,0),(22,411,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,19,61,2,'DT~O',3,NULL,'BAS',0,NULL,0),(22,412,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,22,61,3,'V~O',3,NULL,'BAS',0,NULL,0),(22,413,'currency_id','vtiger_salesorder',1,'117','currency_id','Currency',1,2,'1',100,20,61,3,'I~O',3,NULL,'BAS',1,NULL,0),(22,414,'conversion_rate','vtiger_salesorder',1,'1','conversion_rate','Conversion Rate',1,2,'1',100,21,61,3,'N~O',3,NULL,'BAS',1,NULL,0),(22,415,'bill_street','vtiger_sobillads',1,'24','bill_street','Billing Address',1,2,'',100,1,63,1,'V~M',3,NULL,'BAS',1,NULL,0),(22,416,'ship_street','vtiger_soshipads',1,'24','ship_street','Shipping Address',1,2,'',100,2,63,1,'V~M',3,NULL,'BAS',1,NULL,0),(22,417,'bill_city','vtiger_sobillads',1,'1','bill_city','Billing City',1,2,'',100,5,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,418,'ship_city','vtiger_soshipads',1,'1','ship_city','Shipping City',1,2,'',100,6,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,419,'bill_state','vtiger_sobillads',1,'1','bill_state','Billing State',1,2,'',100,7,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,420,'ship_state','vtiger_soshipads',1,'1','ship_state','Shipping State',1,2,'',100,8,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,421,'bill_code','vtiger_sobillads',1,'1','bill_code','Billing Code',1,2,'',100,9,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,422,'ship_code','vtiger_soshipads',1,'1','ship_code','Shipping Code',1,2,'',100,10,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,423,'bill_country','vtiger_sobillads',1,'1','bill_country','Billing Country',1,2,'',100,11,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,424,'ship_country','vtiger_soshipads',1,'1','ship_country','Shipping Country',1,2,'',100,12,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,425,'bill_pobox','vtiger_sobillads',1,'1','bill_pobox','Billing Po Box',1,2,'',100,3,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,426,'ship_pobox','vtiger_soshipads',1,'1','ship_pobox','Shipping Po Box',1,2,'',100,4,63,1,'V~O',3,NULL,'BAS',1,NULL,0),(22,427,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,66,1,'V~O',3,NULL,'ADV',1,NULL,0),(22,428,'terms_conditions','vtiger_salesorder',1,'19','terms_conditions','Terms & Conditions',1,2,'',100,1,65,1,'V~O',3,NULL,'ADV',1,NULL,0),(22,429,'enable_recurring','vtiger_salesorder',1,'56','enable_recurring','Enable Recurring',1,0,'',100,1,85,1,'C~O',3,NULL,'BAS',0,NULL,0),(22,430,'recurring_frequency','vtiger_invoice_recurring_info',1,'16','recurring_frequency','Frequency',1,0,'',100,2,85,1,'V~O',3,NULL,'BAS',0,NULL,0),(22,431,'start_period','vtiger_invoice_recurring_info',1,'5','start_period','Start Period',1,0,'',100,3,85,1,'D~O',3,NULL,'BAS',0,NULL,0),(22,432,'end_period','vtiger_invoice_recurring_info',1,'5','end_period','End Period',1,0,'',100,4,85,1,'D~O~OTH~G~start_period~Start Period',3,NULL,'BAS',0,NULL,0),(22,433,'payment_duration','vtiger_invoice_recurring_info',1,'16','payment_duration','Payment Duration',1,0,'',100,5,85,1,'V~O',3,NULL,'BAS',0,NULL,0),(22,434,'invoice_status','vtiger_invoice_recurring_info',1,'15','invoicestatus','Invoice Status',1,0,'',100,6,85,1,'V~M',3,NULL,'BAS',0,NULL,0),(23,435,'subject','vtiger_invoice',1,'2','subject','Subject',1,0,'',100,1,67,1,'V~M',3,NULL,'BAS',1,NULL,1),(23,436,'salesorderid','vtiger_invoice',1,'80','salesorder_id','Sales Order',1,2,'',100,2,67,1,'I~O',3,NULL,'BAS',0,NULL,1),(23,437,'customerno','vtiger_invoice',1,'1','customerno','Customer No',1,2,'',100,3,67,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,438,'contactid','vtiger_invoice',1,'57','contact_id','Contact Name',1,2,'',100,4,67,1,'I~O',3,NULL,'BAS',1,NULL,0),(23,439,'invoicedate','vtiger_invoice',1,'5','invoicedate','Invoice Date',1,2,'',100,5,67,1,'D~O',3,NULL,'BAS',1,NULL,0),(23,440,'duedate','vtiger_invoice',1,'5','duedate','Due Date',1,2,'',100,6,67,1,'D~O',3,NULL,'BAS',1,NULL,0),(23,441,'purchaseorder','vtiger_invoice',1,'1','vtiger_purchaseorder','Purchase Order',1,2,'',100,8,67,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,442,'adjustment','vtiger_invoice',1,'72','txtAdjustment','Adjustment',1,2,'',100,9,67,3,'NN~O',3,NULL,'BAS',1,NULL,0),(23,443,'salescommission','vtiger_invoice',1,'1','salescommission','Sales Commission',1,2,'',10,13,67,1,'N~O',3,NULL,'BAS',1,NULL,0),(23,444,'exciseduty','vtiger_invoice',1,'1','exciseduty','Excise Duty',1,2,'',100,11,67,1,'N~O',3,NULL,'BAS',1,NULL,0),(23,445,'subtotal','vtiger_invoice',1,'72','hdnSubTotal','Sub Total',1,2,'',100,12,67,3,'N~O',3,NULL,'BAS',1,NULL,0),(23,446,'total','vtiger_invoice',1,'72','hdnGrandTotal','Total',1,2,'',100,13,67,3,'N~O',3,NULL,'BAS',1,NULL,1),(23,447,'taxtype','vtiger_invoice',1,'16','hdnTaxType','Tax Type',1,2,'',100,13,67,3,'V~O',3,NULL,'BAS',1,NULL,0),(23,448,'discount_percent','vtiger_invoice',1,'1','hdnDiscountPercent','Discount Percent',1,2,'',100,13,67,3,'N~O',3,NULL,'BAS',1,NULL,0),(23,449,'discount_amount','vtiger_invoice',1,'72','hdnDiscountAmount','Discount Amount',1,2,'',100,13,67,3,'N~O',3,NULL,'BAS',1,NULL,0),(23,450,'s_h_amount','vtiger_invoice',1,'72','hdnS_H_Amount','S&H Amount',1,2,'',100,14,67,3,'N~O',3,NULL,'BAS',1,NULL,0),(23,451,'accountid','vtiger_invoice',1,'73','account_id','Account Name',1,2,'',100,14,67,1,'I~M',3,NULL,'BAS',1,NULL,0),(23,452,'invoicestatus','vtiger_invoice',1,'15','invoicestatus','Status',1,2,'',100,15,67,1,'V~O',3,NULL,'BAS',1,NULL,1),(23,453,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,16,67,1,'V~M',3,NULL,'BAS',1,NULL,1),(23,454,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,17,67,2,'DT~O',3,NULL,'BAS',0,NULL,0),(23,455,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,18,67,2,'DT~O',3,NULL,'BAS',0,NULL,0),(23,456,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,22,67,3,'V~O',3,NULL,'BAS',0,NULL,0),(23,457,'currency_id','vtiger_invoice',1,'117','currency_id','Currency',1,2,'1',100,19,67,3,'I~O',3,NULL,'BAS',1,NULL,0),(23,458,'conversion_rate','vtiger_invoice',1,'1','conversion_rate','Conversion Rate',1,2,'1',100,20,67,3,'N~O',3,NULL,'BAS',1,NULL,0),(23,459,'bill_street','vtiger_invoicebillads',1,'24','bill_street','Billing Address',1,2,'',100,1,69,1,'V~M',3,NULL,'BAS',1,NULL,0),(23,460,'ship_street','vtiger_invoiceshipads',1,'24','ship_street','Shipping Address',1,2,'',100,2,69,1,'V~M',3,NULL,'BAS',1,NULL,0),(23,461,'bill_city','vtiger_invoicebillads',1,'1','bill_city','Billing City',1,2,'',100,5,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,462,'ship_city','vtiger_invoiceshipads',1,'1','ship_city','Shipping City',1,2,'',100,6,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,463,'bill_state','vtiger_invoicebillads',1,'1','bill_state','Billing State',1,2,'',100,7,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,464,'ship_state','vtiger_invoiceshipads',1,'1','ship_state','Shipping State',1,2,'',100,8,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,465,'bill_code','vtiger_invoicebillads',1,'1','bill_code','Billing Code',1,2,'',100,9,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,466,'ship_code','vtiger_invoiceshipads',1,'1','ship_code','Shipping Code',1,2,'',100,10,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,467,'bill_country','vtiger_invoicebillads',1,'1','bill_country','Billing Country',1,2,'',100,11,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,468,'ship_country','vtiger_invoiceshipads',1,'1','ship_country','Shipping Country',1,2,'',100,12,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,469,'bill_pobox','vtiger_invoicebillads',1,'1','bill_pobox','Billing Po Box',1,2,'',100,3,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,470,'ship_pobox','vtiger_invoiceshipads',1,'1','ship_pobox','Shipping Po Box',1,2,'',100,4,69,1,'V~O',3,NULL,'BAS',1,NULL,0),(23,471,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,72,1,'V~O',3,NULL,'ADV',1,NULL,0),(23,472,'terms_conditions','vtiger_invoice',1,'19','terms_conditions','Terms & Conditions',1,2,'',100,1,71,1,'V~O',3,NULL,'ADV',1,NULL,0),(23,473,'invoice_no','vtiger_invoice',1,'4','invoice_no','Invoice No',1,0,'',100,3,67,1,'V~O',3,NULL,'BAS',0,NULL,1),(29,474,'user_name','vtiger_users',1,'106','user_name','User Name',1,0,'',11,1,77,1,'V~M',1,NULL,'BAS',1,NULL,0),(29,475,'is_admin','vtiger_users',1,'156','is_admin','Admin',1,0,'',3,7,77,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,476,'user_password','vtiger_users',1,'99','user_password','Password',1,0,'',30,5,77,4,'P~M',1,NULL,'BAS',1,NULL,0),(29,477,'confirm_password','vtiger_users',1,'99','confirm_password','Confirm Password',1,0,'',30,6,77,4,'P~M',1,NULL,'BAS',1,NULL,0),(29,478,'first_name','vtiger_users',1,'1','first_name','First Name',1,0,'',30,3,77,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,479,'last_name','vtiger_users',1,'2','last_name','Last Name',1,0,'',30,4,77,1,'V~M',1,NULL,'BAS',1,NULL,0),(29,480,'roleid','vtiger_user2role',1,'98','roleid','Role',1,0,'',200,8,77,1,'V~M',1,NULL,'BAS',1,NULL,0),(29,481,'email1','vtiger_users',1,'104','email1','Email',1,0,'',100,2,77,1,'E~M',1,NULL,'BAS',1,NULL,0),(29,482,'status','vtiger_users',1,'115','status','Status',1,0,'Active',100,10,77,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,483,'activity_view','vtiger_users',1,'16','activity_view','Default Activity View',1,0,'',100,6,118,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,484,'lead_view','vtiger_users',1,'16','lead_view','Default Lead View',1,0,'',100,9,77,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,485,'hour_format','vtiger_users',1,'16','hour_format','Calendar Hour Format',1,0,'12',100,4,118,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,486,'end_hour','vtiger_users',1,'116','end_hour','Day ends at',1,0,'',100,11,77,3,'V~O',1,NULL,'BAS',1,NULL,0),(29,487,'start_hour','vtiger_users',1,'16','start_hour','Day starts at',1,0,'',100,2,118,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,488,'title','vtiger_users',1,'1','title','Title',1,0,'',50,1,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,489,'phone_work','vtiger_users',1,'11','phone_work','Office Phone',1,0,'',50,5,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,490,'department','vtiger_users',1,'1','department','Department',1,0,'',50,3,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,491,'phone_mobile','vtiger_users',1,'11','phone_mobile','Mobile',1,0,'',50,7,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,492,'reports_to_id','vtiger_users',1,'101','reports_to_id','Reports To',1,0,'',50,8,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,493,'phone_other','vtiger_users',1,'11','phone_other','Other Phone',1,0,'',50,11,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,494,'email2','vtiger_users',1,'13','email2','Other Email',1,0,'',100,4,79,1,'E~O',1,NULL,'BAS',1,NULL,0),(29,495,'phone_fax','vtiger_users',1,'11','phone_fax','Fax',1,0,'',50,2,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,496,'secondaryemail','vtiger_users',1,'13','secondaryemail','Secondary Email',1,0,'',100,6,79,1,'E~O',1,NULL,'BAS',1,NULL,0),(29,497,'phone_home','vtiger_users',1,'11','phone_home','Home Phone',1,0,'',50,9,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,498,'date_format','vtiger_users',1,'16','date_format','Date Format',1,0,'',30,3,118,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,499,'signature','vtiger_users',1,'21','signature','Signature',1,0,'',250,13,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,500,'description','vtiger_users',1,'21','description','Documents',1,0,'',250,14,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,501,'address_street','vtiger_users',1,'21','address_street','Street Address',1,0,'',250,1,80,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,502,'address_city','vtiger_users',1,'1','address_city','City',1,0,'',100,3,80,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,503,'address_state','vtiger_users',1,'1','address_state','State',1,0,'',100,5,80,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,504,'address_postalcode','vtiger_users',1,'1','address_postalcode','Postal Code',1,0,'',100,4,80,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,505,'address_country','vtiger_users',1,'1','address_country','Country',1,0,'',100,2,80,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,506,'accesskey','vtiger_users',1,'3','accesskey','Webservice Access Key',1,0,'',100,2,83,2,'V~O',1,NULL,'BAS',1,NULL,0),(29,507,'time_zone','vtiger_users',1,'16','time_zone','Time Zone',1,0,'',200,5,118,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,508,'currency_id','vtiger_users',1,'117','currency_id','Currency',1,0,'',100,1,78,1,'I~O',1,NULL,'BAS',1,NULL,0),(29,509,'currency_grouping_pattern','vtiger_users',1,'16','currency_grouping_pattern','Digit Grouping Pattern',1,0,'',100,2,78,1,'V~O',1,NULL,'BAS',1,'<b>Currency - Digit Grouping Pattern</b> <br/><br/>This pattern specifies the format in which the currency separator will be placed.',0),(29,510,'currency_decimal_separator','vtiger_users',1,'16','currency_decimal_separator','Decimal Separator',1,0,'',2,3,78,1,'V~O',1,NULL,'BAS',1,'<b>Currency - Decimal Separator</b> <br/><br/>Decimal separator specifies the separator to be used to separate the fractional values from the whole number part. <br/><b>Eg:</b> <br/>. => 123.45 <br/>, => 123,45 <br/>\' => 123\'45 <br/>  => 123 45 <br/>$ => 123$45 <br/>',0),(29,511,'currency_grouping_separator','vtiger_users',1,'16','currency_grouping_separator','Digit Grouping Separator',1,0,'',2,4,78,1,'V~O',1,NULL,'BAS',1,'<b>Currency - Grouping Separator</b> <br/><br/>Grouping separator specifies the separator to be used to group the whole number part into hundreds, thousands etc. <br/><b>Eg:</b> <br/>. => 123.456.789 <br/>, => 123,456,789 <br/>\' => 123\'456\'789 <br/>  => 123 456 789 <br/>$ => 123$456$789 <br/>',0),(29,512,'currency_symbol_placement','vtiger_users',1,'16','currency_symbol_placement','Symbol Placement',1,0,'',20,5,78,1,'V~O',1,NULL,'BAS',1,'<b>Currency - Symbol Placement</b> <br/><br/>Symbol Placement allows you to configure the position of the currency symbol with respect to the currency value.<br/><b>Eg:</b> <br/>$1.0 => $123,456,789.50 <br/>1.0$ => 123,456,789.50$ <br/>',0),(29,513,'imagename','vtiger_users',1,'105','imagename','User Image',1,0,'',250,10,82,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,514,'internal_mailer','vtiger_users',1,'56','internal_mailer','INTERNAL_MAIL_COMPOSER',1,0,'',50,15,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,515,'theme','vtiger_users',1,'31','theme','Theme',1,0,'softed',100,16,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,516,'language','vtiger_users',1,'32','language','Language',1,0,'',100,17,79,1,'V~O',1,NULL,'BAS',1,NULL,0),(29,517,'reminder_interval','vtiger_users',1,'16','reminder_interval','Reminder Interval',1,0,'',100,11,118,1,'V~O',1,NULL,'BAS',1,NULL,0),(10,518,'from_email','vtiger_emaildetails',1,'12','from_email','From',1,2,'',100,1,21,3,'V~M',3,NULL,'BAS',0,NULL,0),(10,519,'to_email','vtiger_emaildetails',1,'8','saved_toid','To',1,2,'',100,2,21,1,'V~M',3,NULL,'BAS',0,NULL,0),(10,520,'cc_email','vtiger_emaildetails',1,'8','ccmail','CC',1,2,'',1000,3,21,1,'V~O',3,NULL,'BAS',0,NULL,0),(10,521,'bcc_email','vtiger_emaildetails',1,'8','bccmail','BCC',1,2,'',1000,4,21,1,'V~O',3,NULL,'BAS',0,NULL,0),(10,522,'idlists','vtiger_emaildetails',1,'357','parent_id','Parent ID',1,2,'',1000,5,21,1,'V~O',3,NULL,'BAS',0,NULL,0),(10,523,'email_flag','vtiger_emaildetails',1,'16','email_flag','Email Flag',1,2,'',1000,6,21,3,'V~O',3,NULL,'BAS',0,NULL,0),(33,524,'direction','vtiger_pbxmanager',1,'1','direction','Direction',1,2,'',100,1,88,1,'V~O',1,0,'BAS',1,'',0),(33,525,'callstatus','vtiger_pbxmanager',1,'1','callstatus','Call Status',1,2,'',100,2,88,1,'V~O',1,0,'BAS',1,'',1),(33,526,'starttime','vtiger_pbxmanager',1,'70','starttime','Start Time',1,2,'',100,7,88,1,'DT~O',1,0,'BAS',1,'',1),(33,527,'endtime','vtiger_pbxmanager',1,'70','endtime','End Time',1,2,'',100,8,88,1,'DT~O',1,0,'BAS',1,'',0),(33,528,'totalduration','vtiger_pbxmanager',1,'7','totalduration','Total Duration',1,2,'',100,10,88,1,'I~O',1,0,'BAS',1,'',0),(33,529,'billduration','vtiger_pbxmanager',1,'7','billduration','Bill Duration',1,2,'',100,11,88,1,'I~O',1,0,'BAS',1,'',0),(33,530,'recordingurl','vtiger_pbxmanager',1,'17','recordingurl','Recording URL',1,2,'',100,9,88,1,'V~O',1,0,'BAS',1,'',1),(33,531,'sourceuuid','vtiger_pbxmanager',1,'1','sourceuuid','Source UUID',1,2,'',100,12,88,1,'V~O',1,0,'BAS',1,'',0),(33,532,'gateway','vtiger_pbxmanager',1,'1','gateway','Gateway',1,2,'',100,13,88,1,'V~O',1,0,'BAS',1,'',0),(33,533,'customer','vtiger_pbxmanager',1,'10','customer','Customer',1,2,'',100,3,88,1,'V~O',1,0,'BAS',1,'',1),(33,534,'user','vtiger_pbxmanager',1,'52','user','User',1,2,'',100,4,88,1,'V~O',1,0,'BAS',1,'',1),(33,535,'customernumber','vtiger_pbxmanager',1,'11','customernumber','Customer Number',1,2,'',100,5,88,1,'V~M',1,0,'BAS',1,'',0),(33,536,'customertype','vtiger_pbxmanager',1,'1','customertype','Customer Type',1,2,'',100,6,88,1,'V~O',1,0,'BAS',1,'',0),(33,537,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,2,'',100,14,88,1,'V~M',1,0,'BAS',1,'',0),(33,538,'createdtime','vtiger_crmentity',1,'70','CreatedTime','Created Time',1,2,'',100,15,88,2,'DT~O',1,0,'BAS',1,'',0),(33,539,'modifiedtime','vtiger_crmentity',1,'70','ModifiedTime','Modified Time',1,2,'',100,16,88,2,'DT~O',1,0,'BAS',1,'',0),(29,540,'phone_crm_extension','vtiger_users',1,'11','phone_crm_extension','CRM Phone Extension',1,2,'',100,18,79,1,'V~O',1,0,'BAS',1,'',0),(34,541,'servicename','vtiger_service',1,'2','servicename','Service Name',1,0,'',100,1,89,1,'V~M',0,1,'BAS',1,'',1),(34,542,'service_no','vtiger_service',1,'4','service_no','Service No',1,0,'',100,2,89,1,'V~O',3,0,'BAS',0,'',1),(34,543,'discontinued','vtiger_service',1,'56','discontinued','Service Active',1,2,'',100,4,89,1,'V~O',2,3,'BAS',1,'',0),(34,544,'sales_start_date','vtiger_service',1,'5','sales_start_date','Sales Start Date',1,2,'',100,9,89,1,'D~O',1,0,'BAS',1,'',0),(34,545,'sales_end_date','vtiger_service',1,'5','sales_end_date','Sales End Date',1,2,'',100,10,89,1,'D~O~OTH~GE~sales_start_date~Sales Start Date',1,0,'BAS',1,'',0),(34,546,'start_date','vtiger_service',1,'5','start_date','Support Start Date',1,2,'',100,11,89,1,'D~O',1,0,'BAS',1,'',0),(34,547,'expiry_date','vtiger_service',1,'5','expiry_date','Support Expiry Date',1,2,'',100,12,89,1,'D~O~OTH~GE~start_date~Start Date',1,0,'BAS',1,'',0),(34,548,'website','vtiger_service',1,'17','website','Website',1,2,'',100,6,89,1,'V~O',1,0,'BAS',1,'',0),(34,549,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,13,89,2,'DT~O',3,0,'BAS',0,'',0),(34,550,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,14,89,2,'DT~O',3,0,'BAS',0,'',0),(34,551,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,16,89,3,'V~O',3,0,'BAS',0,'',0),(34,552,'service_usageunit','vtiger_service',1,'15','service_usageunit','Usage Unit',1,2,'',100,3,89,1,'V~O',1,0,'BAS',1,'',0),(34,553,'qty_per_unit','vtiger_service',1,'1','qty_per_unit','No of Units',1,2,'',100,5,89,1,'N~O',1,0,'BAS',1,'',1),(34,554,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Owner',1,0,'',100,8,89,1,'I~O',1,0,'BAS',1,'',0),(34,555,'servicecategory','vtiger_service',1,'15','servicecategory','Service Category',1,2,'',100,7,89,1,'V~O',1,0,'BAS',1,'',0),(34,556,'unit_price','vtiger_service',1,'72','unit_price','Price',1,0,'',100,1,90,1,'N~O',2,2,'BAS',0,'',1),(34,557,'taxclass','vtiger_service',1,'83','taxclass','Tax Class',1,2,'',100,4,90,1,'V~O',1,0,'BAS',1,'',0),(34,558,'commissionrate','vtiger_service',1,'9','commissionrate','Commission Rate',1,2,'',100,2,90,1,'N~O',1,0,'BAS',1,'',1),(34,559,'description','vtiger_crmentity',1,'19','description','Description',1,2,'',100,1,92,1,'V~O',1,0,'BAS',1,'',0),(36,560,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,2,'',100,4,93,1,'V~M',2,2,'BAS',1,'',1),(36,561,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,17,93,2,'DT~O',3,0,'BAS',0,'',0),(36,562,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,18,93,2,'DT~O',3,0,'BAS',0,'',0),(36,563,'start_date','vtiger_servicecontracts',1,'5','start_date','Start Date',1,2,'',100,7,93,1,'D~O',2,4,'BAS',1,'',0),(36,564,'end_date','vtiger_servicecontracts',1,'5','end_date','End Date',1,2,'',100,11,93,2,'D~O',3,0,'BAS',0,'',0),(36,565,'sc_related_to','vtiger_servicecontracts',1,'10','sc_related_to','Related to',1,2,'',100,3,93,1,'V~O',2,6,'BAS',1,'',0),(36,566,'tracking_unit','vtiger_servicecontracts',1,'15','tracking_unit','Tracking Unit',1,2,'',100,6,93,1,'V~O',2,7,'BAS',1,'',0),(36,567,'total_units','vtiger_servicecontracts',1,'7','total_units','Total Units',1,2,'',100,8,93,1,'V~O',2,8,'BAS',1,'',1),(36,568,'used_units','vtiger_servicecontracts',1,'7','used_units','Used Units',1,2,'',100,10,93,1,'V~O',2,9,'BAS',1,'',1),(36,569,'subject','vtiger_servicecontracts',1,'1','subject','Subject',1,0,'',100,1,93,1,'V~M',0,1,'BAS',1,'',1),(36,570,'due_date','vtiger_servicecontracts',1,'23','due_date','Due date',1,2,'',100,9,93,1,'D~O',2,5,'BAS',1,'',0),(36,571,'planned_duration','vtiger_servicecontracts',1,'1','planned_duration','Planned Duration',1,2,'',100,13,93,2,'V~O',3,0,'BAS',0,'',0),(36,572,'actual_duration','vtiger_servicecontracts',1,'1','actual_duration','Actual Duration',1,2,'',100,15,93,2,'V~O',3,0,'BAS',0,'',0),(36,573,'contract_status','vtiger_servicecontracts',1,'15','contract_status','Status',1,2,'',100,12,93,1,'V~O',1,0,'BAS',1,'',0),(36,574,'priority','vtiger_servicecontracts',1,'15','contract_priority','Priority',1,2,'',100,14,93,1,'V~O',1,0,'BAS',1,'',0),(36,575,'contract_type','vtiger_servicecontracts',1,'15','contract_type','Type',1,2,'',100,5,93,1,'V~O',1,0,'BAS',1,'',0),(36,576,'progress','vtiger_servicecontracts',1,'9','progress','Progress',1,2,'',100,16,93,2,'N~O~2~2',3,3,'BAS',0,'',0),(36,577,'contract_no','vtiger_servicecontracts',1,'4','contract_no','Contract No',1,0,'',100,2,93,1,'V~O',3,0,'BAS',0,'',1),(36,578,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,17,93,3,'V~O',3,0,'BAS',0,'',0),(40,579,'projectmilestonename','vtiger_projectmilestone',1,'2','projectmilestonename','Project Milestone Name',1,2,'',100,1,95,1,'V~M',0,1,'BAS',1,'',1),(40,580,'projectmilestonedate','vtiger_projectmilestone',1,'5','projectmilestonedate','Milestone Date',1,2,'',100,5,95,1,'D~O',0,3,'BAS',1,'',1),(40,581,'projectid','vtiger_projectmilestone',1,'10','projectid','Related to',1,0,'',100,4,95,1,'V~M',0,4,'BAS',1,'',0),(40,582,'projectmilestonetype','vtiger_projectmilestone',1,'15','projectmilestonetype','Type',1,2,'',100,7,95,1,'V~O',1,0,'BAS',1,'',1),(40,583,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,2,'',100,6,95,1,'V~M',0,2,'BAS',1,'',0),(40,584,'projectmilestone_no','vtiger_projectmilestone',2,'4','projectmilestone_no','Project Milestone No',1,0,'',100,2,95,1,'V~O',3,4,'BAS',0,'',0),(40,585,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,2,'',100,1,96,2,'T~O',1,0,'BAS',1,'',0),(40,586,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,2,'',100,2,96,2,'T~O',1,0,'BAS',1,'',0),(40,587,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,3,96,3,'V~O',3,0,'BAS',0,'',0),(40,588,'description','vtiger_crmentity',1,'19','description','description',1,2,'',100,1,97,1,'V~O',1,0,'BAS',1,'',0),(41,589,'projecttaskname','vtiger_projecttask',1,'2','projecttaskname','Project Task Name',1,2,'',100,1,98,1,'V~M',0,1,'BAS',1,'',1),(41,590,'projecttasktype','vtiger_projecttask',1,'15','projecttasktype','Type',1,2,'',100,4,98,1,'V~O',1,0,'BAS',1,'',1),(41,591,'projecttaskpriority','vtiger_projecttask',1,'15','projecttaskpriority','Priority',1,2,'',100,3,98,1,'V~O',1,0,'BAS',1,'',0),(41,592,'projectid','vtiger_projecttask',1,'10','projectid','Related to',1,0,'',100,6,98,1,'V~M',0,5,'BAS',1,'',0),(41,593,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,2,'',100,7,98,1,'V~M',0,2,'BAS',1,'',1),(41,594,'projecttasknumber','vtiger_projecttask',1,'7','projecttasknumber','Project Task Number',1,2,'',100,5,98,1,'I~O',1,0,'BAS',1,'',0),(41,595,'projecttask_no','vtiger_projecttask',2,'4','projecttask_no','Project Task No',1,0,'',100,2,98,1,'V~O',3,4,'BAS',0,'',0),(41,596,'projecttaskprogress','vtiger_projecttask',1,'15','projecttaskprogress','Progress',1,2,'',100,1,99,1,'V~O',1,0,'BAS',1,'',1),(41,597,'projecttaskhours','vtiger_projecttask',1,'7','projecttaskhours','Worked Hours',1,2,'',100,2,99,1,'V~O',1,0,'BAS',1,'',0),(41,598,'startdate','vtiger_projecttask',1,'5','startdate','Start Date',1,2,'',100,3,99,1,'D~O',0,3,'BAS',1,'',1),(41,599,'enddate','vtiger_projecttask',1,'5','enddate','End Date',1,2,'',100,4,99,1,'D~O~OTH~GE~startdate~Start Date',1,0,'BAS',1,'',1),(41,600,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,2,'',100,5,99,2,'T~O',1,0,'BAS',1,'',0),(41,601,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,2,'',100,6,99,2,'T~O',1,0,'BAS',1,'',0),(41,602,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,7,99,3,'V~O',3,0,'BAS',0,'',0),(41,603,'description','vtiger_crmentity',1,'19','description','description',1,2,'',100,1,100,1,'V~O',1,0,'BAS',1,'',0),(42,604,'projectname','vtiger_project',1,'2','projectname','Project Name',1,2,'',100,1,101,1,'V~M',0,1,'BAS',1,'',1),(42,605,'startdate','vtiger_project',1,'23','startdate','Start Date',1,2,'',100,3,101,1,'D~O',0,3,'BAS',1,'',1),(42,606,'targetenddate','vtiger_project',1,'23','targetenddate','Target End Date',1,2,'',100,5,101,1,'D~O~OTH~GE~startdate~Start Date',0,4,'BAS',1,'',1),(42,607,'actualenddate','vtiger_project',1,'23','actualenddate','Actual End Date',1,2,'',100,6,101,1,'D~O~OTH~GE~startdate~Start Date',1,0,'BAS',1,'',0),(42,608,'projectstatus','vtiger_project',1,'15','projectstatus','Status',1,2,'',100,7,101,1,'V~O',1,0,'BAS',1,'',1),(42,609,'projecttype','vtiger_project',1,'15','projecttype','Type',1,2,'',100,8,101,1,'V~O',1,0,'BAS',1,'',1),(42,610,'linktoaccountscontacts','vtiger_project',1,'10','linktoaccountscontacts','Related to',1,2,'',100,9,101,1,'V~O',1,0,'BAS',1,'',0),(42,611,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,2,'',100,4,101,1,'V~M',0,2,'BAS',1,'',1),(42,612,'project_no','vtiger_project',2,'4','project_no','Project No',1,0,'',100,2,101,1,'V~O',3,0,'BAS',0,'',0),(42,613,'targetbudget','vtiger_project',1,'7','targetbudget','Target Budget',1,2,'',100,1,102,1,'V~O',1,0,'BAS',1,'',0),(42,614,'projecturl','vtiger_project',1,'17','projecturl','Project Url',1,2,'',100,2,102,1,'V~O',1,0,'BAS',1,'',0),(42,615,'projectpriority','vtiger_project',1,'15','projectpriority','Priority',1,2,'',100,3,102,1,'V~O',1,0,'BAS',1,'',0),(42,616,'progress','vtiger_project',1,'15','progress','Progress',1,2,'',100,4,102,1,'V~O',1,0,'BAS',1,'',0),(42,617,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,2,'',100,5,102,2,'T~O',1,0,'BAS',1,'',0),(42,618,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,2,'',100,6,102,2,'T~O',1,0,'BAS',1,'',0),(42,619,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,7,102,3,'V~O',3,0,'BAS',0,'',0),(42,620,'description','vtiger_crmentity',1,'19','description','description',1,2,'',100,1,103,1,'V~O',1,0,'BAS',1,'',0),(43,621,'asset_no','vtiger_assets',1,'4','asset_no','Asset No',1,0,'',100,2,104,1,'V~O',3,0,'BAS',0,'\n                    ',1),(43,622,'product','vtiger_assets',1,'10','product','Product Name',1,2,'',100,3,104,1,'V~M',0,3,'BAS',1,'\n                    ',1),(43,623,'serialnumber','vtiger_assets',1,'2','serialnumber','Serial Number',1,2,'',100,4,104,1,'V~M',0,5,'BAS',1,'\n                    ',0),(43,624,'datesold','vtiger_assets',1,'5','datesold','Date Sold',1,2,'',100,5,104,1,'D~M~OTH~GE~datesold~Date Sold',0,0,'BAS',1,'\n                    ',0),(43,625,'dateinservice','vtiger_assets',1,'5','dateinservice','Date in Service',1,2,'',100,6,104,1,'D~M~OTH~GE~dateinservice~Date in Service',0,4,'BAS',1,'\n                    ',0),(43,626,'assetstatus','vtiger_assets',1,'15','assetstatus','Status',1,2,'',100,7,104,1,'V~M',0,0,'BAS',1,'\n                    ',0),(43,627,'tagnumber','vtiger_assets',1,'2','tagnumber','Tag Number',1,2,'',100,8,104,1,'V~O',1,0,'BAS',1,'\n                    ',0),(43,628,'invoiceid','vtiger_assets',1,'10','invoiceid','Invoice Name',1,2,'',100,9,104,1,'V~O',1,0,'BAS',1,'\n                    ',0),(43,629,'shippingmethod','vtiger_assets',1,'2','shippingmethod','Shipping Method',1,2,'',100,10,104,1,'V~O',1,0,'BAS',1,'\n                    ',0),(43,630,'shippingtrackingnumber','vtiger_assets',1,'2','shippingtrackingnumber','Shipping Tracking Number',1,2,'',100,11,104,1,'V~O',1,0,'BAS',1,'\n                    ',0),(43,631,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,2,'',100,4,104,1,'V~M',0,2,'BAS',1,'\n                    ',0),(43,632,'assetname','vtiger_assets',1,'1','assetname','Asset Name',1,0,'',100,12,104,1,'V~M',0,6,'BAS',1,'\n                    ',1),(43,633,'account','vtiger_assets',1,'10','account','Customer Name',1,2,'',100,13,104,1,'V~M',0,0,'BAS',1,'\n                    ',1),(43,634,'contact','vtiger_assets',1,'10','contact','Contact Name',1,2,'',100,14,104,1,'V~O',0,0,'BAS',1,'\n                    ',0),(43,635,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,14,104,2,'DT~O',3,0,'BAS',0,'\n                    ',0),(43,636,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,15,104,2,'DT~O',3,0,'BAS',0,'\n                    ',0),(43,637,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,16,104,3,'V~O',3,0,'BAS',0,'\n                    ',0),(43,638,'description','vtiger_crmentity',1,'19','description','Notes',1,2,'',100,1,106,1,'V~O',1,0,'BAS',1,'\n                    ',0),(45,639,'commentcontent','vtiger_modcomments',1,'19','commentcontent','Comment',1,0,'',100,4,107,1,'V~M',0,4,'BAS',2,'',1),(45,640,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,1,108,1,'V~M',0,1,'BAS',2,'',1),(45,641,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,5,108,2,'DT~O',0,2,'BAS',0,'',0),(45,642,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,6,108,2,'DT~O',0,3,'BAS',0,'',0),(45,643,'related_to','vtiger_modcomments',1,'10','related_to','Related To',1,2,'',100,2,108,1,'V~M',2,5,'BAS',2,'',0),(45,644,'smcreatorid','vtiger_crmentity',1,'52','creator','Creator',1,2,'',100,4,108,2,'V~O',1,0,'BAS',1,'',0),(45,645,'parent_comments','vtiger_modcomments',1,'10','parent_comments','Related To Comments',1,2,'',100,7,108,1,'V~O',1,0,'BAS',1,'',0),(47,646,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,0,'',100,2,110,1,'V~M',1,0,'BAS',1,'',1),(47,647,'createdtime','vtiger_crmentity',1,'70','createdtime','Created Time',1,0,'',100,5,110,2,'DT~O',1,0,'BAS',0,'',0),(47,648,'modifiedtime','vtiger_crmentity',1,'70','modifiedtime','Modified Time',1,0,'',100,6,110,2,'DT~O',1,0,'BAS',0,'',0),(47,649,'message','vtiger_smsnotifier',1,'21','message','message',1,0,'',100,1,110,1,'V~M',1,0,'BAS',1,'',1),(47,650,'modifiedby','vtiger_crmentity',1,'52','modifiedby','Last Modified By',1,0,'',100,7,110,3,'V~O',1,0,'BAS',0,'',0),(2,651,'forecast_amount','vtiger_potential',1,'71','forecast_amount','Forecast Amount',1,2,'',100,18,1,1,'N~O',1,0,'BAS',0,'',0),(29,652,'no_of_currency_decimals','vtiger_users',1,'16','no_of_currency_decimals','Number Of Currency Decimals',1,2,'2',100,6,78,1,'V~O',1,0,'BAS',1,'<b>Currency - Number of Decimal places</b> <br/><br/>Number of decimal places specifies how many number of decimals will be shown after decimal separator.<br/><b>Eg:</b> 123.00',0),(23,653,'productid','vtiger_inventoryproductrel',1,'10','productid','Item Name',0,2,'',100,1,113,5,'V~M',1,0,'BAS',0,'',0),(23,654,'quantity','vtiger_inventoryproductrel',1,'7','quantity','Quantity',0,2,'',100,2,113,5,'N~O',1,0,'BAS',0,'',0),(23,655,'listprice','vtiger_inventoryproductrel',1,'71','listprice','List Price',0,2,'',100,3,113,5,'N~O',1,0,'BAS',0,'',0),(23,656,'comment','vtiger_inventoryproductrel',1,'19','comment','Item Comment',0,2,'',100,4,113,5,'V~O',1,0,'BAS',0,'',0),(23,657,'discount_amount','vtiger_inventoryproductrel',1,'71','discount_amount','Discount',0,2,'',100,5,113,5,'N~O',1,0,'BAS',0,'',0),(23,658,'discount_percent','vtiger_inventoryproductrel',1,'7','discount_percent','Item Discount Percent',0,2,'',100,6,113,5,'V~O',1,0,'BAS',0,'',0),(23,659,'tax1','vtiger_inventoryproductrel',1,'83','tax1','Tax1',0,2,'',100,7,113,5,'V~O',1,0,'BAS',0,'',0),(23,660,'tax2','vtiger_inventoryproductrel',1,'83','tax2','Tax2',0,2,'',100,8,113,5,'V~O',1,0,'BAS',0,'',0),(23,661,'tax3','vtiger_inventoryproductrel',1,'83','tax3','Tax3',0,2,'',100,9,113,5,'V~O',1,0,'BAS',0,'',0),(22,662,'productid','vtiger_inventoryproductrel',1,'10','productid','Item Name',0,2,'',100,1,114,5,'V~M',1,0,'BAS',0,'',0),(22,663,'quantity','vtiger_inventoryproductrel',1,'7','quantity','Quantity',0,2,'',100,2,114,5,'N~O',1,0,'BAS',0,'',0),(22,664,'listprice','vtiger_inventoryproductrel',1,'71','listprice','List Price',0,2,'',100,3,114,5,'N~O',1,0,'BAS',0,'',0),(22,665,'comment','vtiger_inventoryproductrel',1,'19','comment','Item Comment',0,2,'',100,4,114,5,'V~O',1,0,'BAS',0,'',0),(22,666,'discount_amount','vtiger_inventoryproductrel',1,'71','discount_amount','Discount',0,2,'',100,5,114,5,'N~O',1,0,'BAS',0,'',0),(22,667,'discount_percent','vtiger_inventoryproductrel',1,'7','discount_percent','Item Discount Percent',0,2,'',100,6,114,5,'V~O',1,0,'BAS',0,'',0),(22,668,'tax1','vtiger_inventoryproductrel',1,'83','tax1','Tax1',0,2,'',100,7,114,5,'V~O',1,0,'BAS',0,'',0),(22,669,'tax2','vtiger_inventoryproductrel',1,'83','tax2','Tax2',0,2,'',100,8,114,5,'V~O',1,0,'BAS',0,'',0),(22,670,'tax3','vtiger_inventoryproductrel',1,'83','tax3','Tax3',0,2,'',100,9,114,5,'V~O',1,0,'BAS',0,'',0),(21,671,'productid','vtiger_inventoryproductrel',1,'10','productid','Item Name',0,2,'',100,1,115,5,'V~M',1,0,'BAS',0,'',0),(21,672,'quantity','vtiger_inventoryproductrel',1,'7','quantity','Quantity',0,2,'',100,2,115,5,'N~O',1,0,'BAS',0,'',0),(21,673,'listprice','vtiger_inventoryproductrel',1,'71','listprice','List Price',0,2,'',100,3,115,5,'N~O',1,0,'BAS',0,'',0),(21,674,'comment','vtiger_inventoryproductrel',1,'19','comment','Item Comment',0,2,'',100,4,115,5,'V~O',1,0,'BAS',0,'',0),(21,675,'discount_amount','vtiger_inventoryproductrel',1,'71','discount_amount','Discount',0,2,'',100,5,115,5,'N~O',1,0,'BAS',0,'',0),(21,676,'discount_percent','vtiger_inventoryproductrel',1,'7','discount_percent','Item Discount Percent',0,2,'',100,6,115,5,'V~O',1,0,'BAS',0,'',0),(21,677,'tax1','vtiger_inventoryproductrel',1,'83','tax1','Tax1',0,2,'',100,7,115,5,'V~O',1,0,'BAS',0,'',0),(21,678,'tax2','vtiger_inventoryproductrel',1,'83','tax2','Tax2',0,2,'',100,8,115,5,'V~O',1,0,'BAS',0,'',0),(21,679,'tax3','vtiger_inventoryproductrel',1,'83','tax3','Tax3',0,2,'',100,9,115,5,'V~O',1,0,'BAS',0,'',0),(20,680,'productid','vtiger_inventoryproductrel',1,'10','productid','Item Name',0,2,'',100,1,116,5,'V~M',1,0,'BAS',0,'',0),(20,681,'quantity','vtiger_inventoryproductrel',1,'7','quantity','Quantity',0,2,'',100,2,116,5,'N~O',1,0,'BAS',0,'',0),(20,682,'listprice','vtiger_inventoryproductrel',1,'71','listprice','List Price',0,2,'',100,3,116,5,'N~O',1,0,'BAS',0,'',0),(20,683,'comment','vtiger_inventoryproductrel',1,'19','comment','Item Comment',0,2,'',100,4,116,5,'V~O',1,0,'BAS',0,'',0),(20,684,'discount_amount','vtiger_inventoryproductrel',1,'71','discount_amount','Discount',0,2,'',100,5,116,5,'N~O',1,0,'BAS',0,'',0),(20,685,'discount_percent','vtiger_inventoryproductrel',1,'7','discount_percent','Item Discount Percent',0,2,'',100,6,116,5,'V~O',1,0,'BAS',0,'',0),(20,686,'tax1','vtiger_inventoryproductrel',1,'83','tax1','Tax1',0,2,'',100,7,116,5,'V~O',1,0,'BAS',0,'',0),(20,687,'tax2','vtiger_inventoryproductrel',1,'83','tax2','Tax2',0,2,'',100,8,116,5,'V~O',1,0,'BAS',0,'',0),(20,688,'tax3','vtiger_inventoryproductrel',1,'83','tax3','Tax3',0,2,'',100,9,116,5,'V~O',1,0,'BAS',0,'',0),(29,689,'truncate_trailing_zeros','vtiger_users',1,'56','truncate_trailing_zeros','Truncate Trailing Zeros',1,2,'0',100,7,78,1,'V~O',1,0,'BAS',1,'<b> Truncate Trailing Zeros </b> <br/><br/>It truncated trailing 0s in any of Currency, Decimal and Percentage Field types<br/><br/><b>Ex:</b><br/>If value is 89.00000 then <br/>decimal and Percentage fields were shows 89<br/>currency field type - shows 89.00<br/>',0),(41,690,'projecttaskstatus','vtiger_projecttask',1,'15','projecttaskstatus','Status',1,2,'',100,8,98,1,'V~O',0,6,'BAS',1,'',0),(45,691,'customer','vtiger_modcomments',1,'10','customer','Customer',1,2,'',100,5,107,3,'V~O',1,0,'BAS',1,'',0),(29,692,'dayoftheweek','vtiger_users',1,'16','dayoftheweek','Starting Day of the week',1,2,'Monday',100,1,118,1,'V~O',1,0,'BAS',1,'',0),(29,693,'callduration','vtiger_users',1,'16','callduration','Default Call Duration',1,2,'5',100,7,118,1,'V~O',1,0,'BAS',1,'',0),(29,694,'othereventduration','vtiger_users',1,'16','othereventduration','Other Event Duration',1,2,'5',100,8,118,1,'V~O',1,0,'BAS',1,'',0),(23,695,'pre_tax_total','vtiger_invoice',1,'72','pre_tax_total','Pre Tax Total',1,2,'',100,23,67,3,'N~O',1,0,'BAS',1,'',0),(22,696,'pre_tax_total','vtiger_salesorder',1,'72','pre_tax_total','Pre Tax Total',1,2,'',100,23,61,3,'N~O',1,0,'BAS',1,'',0),(21,697,'pre_tax_total','vtiger_purchaseorder',1,'72','pre_tax_total','Pre Tax Total',1,2,'',100,23,55,3,'N~O',1,0,'BAS',1,'',0),(20,698,'pre_tax_total','vtiger_quotes',1,'72','pre_tax_total','Pre Tax Total',1,2,'',100,23,49,3,'N~O',1,0,'BAS',1,'',0),(29,699,'calendarsharedtype','vtiger_users',1,'16','calendarsharedtype','Calendar Shared Type',1,2,'Public',100,12,118,3,'V~O',1,0,'BAS',1,'',0),(6,700,'isconvertedfromlead','vtiger_account',1,'56','isconvertedfromlead','Is Converted From Lead',1,2,'no',100,24,9,2,'C~O',1,0,'BAS',1,'',0),(4,701,'isconvertedfromlead','vtiger_contactdetails',1,'56','isconvertedfromlead','Is Converted From Lead',1,2,'no',100,29,4,2,'C~O',1,0,'BAS',1,'',0),(2,702,'isconvertedfromlead','vtiger_potential',1,'56','isconvertedfromlead','Is Converted From Lead',1,2,'no',100,19,1,2,'C~O',1,0,'BAS',1,'',0),(29,703,'default_record_view','vtiger_users',1,'16','default_record_view','Default Record View',1,2,'Summary',100,19,79,1,'V~O',1,0,'BAS',1,'',0),(23,704,'received','vtiger_invoice',1,'72','received','Received',1,2,'0',100,24,67,3,'N~O',1,0,'BAS',1,'',0),(23,705,'balance','vtiger_invoice',1,'72','balance','Balance',1,2,'0',100,25,67,3,'N~O',1,0,'BAS',1,'',0),(21,706,'paid','vtiger_purchaseorder',1,'72','paid','Paid',1,2,'0',100,24,55,3,'N~O',1,0,'BAS',1,'',0),(21,707,'balance','vtiger_purchaseorder',1,'72','balance','Balance',1,2,'0',100,25,55,3,'N~O',1,0,'BAS',1,'',0),(18,708,'smownerid','vtiger_crmentity',1,'53','assigned_user_id','Assigned To',1,2,'',100,13,42,1,'V~M',1,0,'BAS',1,'',0),(7,709,'emailoptout','vtiger_leaddetails',1,'56','emailoptout','Email Opt Out',1,2,'',100,24,13,1,'C~O',1,0,'BAS',1,'',0),(45,710,'userid','vtiger_modcomments',1,'10','userid','UserId',1,2,'',100,6,107,3,'V~O',1,0,'BAS',1,'',0),(45,711,'reasontoedit','vtiger_modcomments',1,'19','reasontoedit','ReasonToEdit',1,2,'',100,7,107,1,'V~O',1,0,'BAS',1,'',0),(23,712,'s_h_percent','vtiger_invoice',1,'1','hdnS_H_Percent','S&H Percent',0,2,'',100,10,113,5,'N~O',0,1,'BAS',0,'',0),(20,713,'s_h_percent','vtiger_quotes',1,'1','hdnS_H_Percent','S&H Percent',0,2,'',100,10,116,5,'N~O',0,1,'BAS',0,'',0),(21,714,'s_h_percent','vtiger_purchaseorder',1,'1','hdnS_H_Percent','S&H Percent',0,2,'',100,10,115,5,'N~O',0,1,'BAS',0,'',0),(22,715,'s_h_percent','vtiger_salesorder',1,'1','hdnS_H_Percent','S&H Percent',0,2,'',100,10,114,5,'N~O',0,1,'BAS',0,'',0),(29,716,'leftpanelhide','vtiger_users',1,'56','leftpanelhide','Left Panel Hide',1,2,'0',100,20,79,1,'V~O',1,0,'BAS',1,'',0),(2,717,'contact_id','vtiger_potential',1,'10','contact_id','Contact Name',1,2,'',100,4,1,1,'V~O',1,0,'BAS',1,'',1),(13,718,'contact_id','vtiger_troubletickets',1,'10','contact_id','Contact Name',1,2,'',100,3,25,1,'V~O',1,0,'BAS',1,'',1),(29,719,'rowheight','vtiger_users',1,'16','rowheight','Row Height',1,2,'medium',100,21,79,1,'V~O',1,0,'BAS',1,'',0),(13,720,'from_portal','vtiger_ticketcf',1,'56','from_portal','From Portal',1,0,'',100,18,25,3,'C~O',1,0,'BAS',1,'',0),(29,721,'defaulteventstatus','vtiger_users',1,'15','defaulteventstatus','Default Event Status',1,2,'',100,9,118,1,'V~O',1,0,'BAS',1,'',0),(29,722,'defaultactivitytype','vtiger_users',1,'15','defaultactivitytype','Default Activity Type',1,2,'',100,10,118,1,'V~O',1,0,'BAS',1,'',0),(29,723,'hidecompletedevents','vtiger_users',1,'56','hidecompletedevents','LBL_HIDE_COMPLETED_EVENTS',1,2,'0',100,13,118,1,'C~O',1,0,'BAS',1,'',0),(9,729,'smcreatorid','vtiger_crmentity',1,'52','created_user_id','Created By',1,2,'',100,23,19,2,'V~O',3,5,'BAS',0,'',0),(29,750,'is_owner','vtiger_users',1,'1','is_owner','Account Owner',0,2,'0',100,12,77,5,'V~O',0,1,'BAS',0,'',0);
/*!40000 ALTER TABLE `vtiger_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_field_seq`
--

DROP TABLE IF EXISTS `vtiger_field_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_field_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_field_seq`
--

LOCK TABLES `vtiger_field_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_field_seq` DISABLE KEYS */;
INSERT INTO `vtiger_field_seq` VALUES (750);
/*!40000 ALTER TABLE `vtiger_field_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_fieldmodulerel`
--

DROP TABLE IF EXISTS `vtiger_fieldmodulerel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_fieldmodulerel` (
  `fieldid` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `relmodule` varchar(100) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_fieldmodulerel`
--

LOCK TABLES `vtiger_fieldmodulerel` WRITE;
/*!40000 ALTER TABLE `vtiger_fieldmodulerel` DISABLE KEYS */;
INSERT INTO `vtiger_fieldmodulerel` VALUES (113,'Potentials','Accounts',NULL,0),(533,'PBXManager','Leads',NULL,NULL),(533,'PBXManager','Contacts',NULL,NULL),(533,'PBXManager','Accounts',NULL,NULL),(565,'ServiceContracts','Contacts',NULL,NULL),(565,'ServiceContracts','Accounts',NULL,NULL),(581,'ProjectMilestone','Project',NULL,NULL),(592,'ProjectTask','Project',NULL,NULL),(610,'Project','Accounts',NULL,NULL),(610,'Project','Contacts',NULL,NULL),(622,'Assets','Products',NULL,NULL),(628,'Assets','Invoice',NULL,NULL),(633,'Assets','Accounts',NULL,NULL),(634,'Assets','Contacts',NULL,NULL),(643,'ModComments','Leads',NULL,NULL),(643,'ModComments','Contacts',NULL,NULL),(643,'ModComments','Accounts',NULL,NULL),(645,'ModComments','ModComments',NULL,NULL),(643,'ModComments','Potentials',NULL,NULL),(643,'ModComments','Project',NULL,NULL),(643,'ModComments','ProjectTask',NULL,NULL),(653,'Invoice','Products',NULL,NULL),(653,'Invoice','Services',NULL,NULL),(662,'SalesOrder','Products',NULL,NULL),(662,'SalesOrder','Services',NULL,NULL),(671,'PurchaseOrder','Products',NULL,NULL),(671,'PurchaseOrder','Services',NULL,NULL),(680,'Quotes','Products',NULL,NULL),(680,'Quotes','Services',NULL,NULL),(691,'ModComments','Contacts',NULL,NULL),(643,'ModComments','HelpDesk',NULL,NULL),(643,'ModComments','Faq',NULL,NULL),(717,'Potentials','Contacts',NULL,NULL),(157,'HelpDesk','Accounts',NULL,NULL),(718,'HelpDesk','Contacts',NULL,NULL),(237,'Accounts','Calendar',NULL,NULL),(237,'Leads','Calendar',NULL,NULL),(237,'HelpDesk','Calendar',NULL,NULL),(237,'Campaigns','Calendar',NULL,NULL),(237,'Potentials','Calendar',NULL,NULL),(237,'PurchaseOrder','Calendar',NULL,NULL),(237,'SalesOrder','Calendar',NULL,NULL),(237,'Quotes','Calendar',NULL,NULL),(237,'Invoice','Calendar',NULL,NULL),(238,'Contacts','Calendar',NULL,NULL);
/*!40000 ALTER TABLE `vtiger_fieldmodulerel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_freetagged_objects`
--

DROP TABLE IF EXISTS `vtiger_freetagged_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_freetagged_objects` (
  `tag_id` int(20) NOT NULL DEFAULT '0',
  `tagger_id` int(20) NOT NULL DEFAULT '0',
  `object_id` int(20) NOT NULL DEFAULT '0',
  `tagged_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `module` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`tag_id`,`tagger_id`,`object_id`),
  KEY `freetagged_objects_tag_id_tagger_id_object_id_idx` (`tag_id`,`tagger_id`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_freetagged_objects`
--

LOCK TABLES `vtiger_freetagged_objects` WRITE;
/*!40000 ALTER TABLE `vtiger_freetagged_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_freetagged_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_freetags`
--

DROP TABLE IF EXISTS `vtiger_freetags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_freetags` (
  `id` int(19) NOT NULL,
  `tag` varchar(50) NOT NULL DEFAULT '',
  `raw_tag` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_freetags`
--

LOCK TABLES `vtiger_freetags` WRITE;
/*!40000 ALTER TABLE `vtiger_freetags` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_freetags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_freetags_seq`
--

DROP TABLE IF EXISTS `vtiger_freetags_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_freetags_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_freetags_seq`
--

LOCK TABLES `vtiger_freetags_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_freetags_seq` DISABLE KEYS */;
INSERT INTO `vtiger_freetags_seq` VALUES (1);
/*!40000 ALTER TABLE `vtiger_freetags_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_glacct`
--

DROP TABLE IF EXISTS `vtiger_glacct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_glacct` (
  `glacctid` int(19) NOT NULL AUTO_INCREMENT,
  `glacct` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`glacctid`),
  UNIQUE KEY `glacct_glacct_idx` (`glacct`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_glacct`
--

LOCK TABLES `vtiger_glacct` WRITE;
/*!40000 ALTER TABLE `vtiger_glacct` DISABLE KEYS */;
INSERT INTO `vtiger_glacct` VALUES (1,'300-Sales-Software',1,51,0),(2,'301-Sales-Hardware',1,52,1),(3,'302-Rental-Income',1,53,2),(4,'303-Interest-Income',1,54,3),(5,'304-Sales-Software-Support',1,55,4),(6,'305-Sales Other',1,56,5),(7,'306-Internet Sales',1,57,6),(8,'307-Service-Hardware Labor',1,58,7),(9,'308-Sales-Books',1,59,8);
/*!40000 ALTER TABLE `vtiger_glacct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_glacct_seq`
--

DROP TABLE IF EXISTS `vtiger_glacct_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_glacct_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_glacct_seq`
--

LOCK TABLES `vtiger_glacct_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_glacct_seq` DISABLE KEYS */;
INSERT INTO `vtiger_glacct_seq` VALUES (9);
/*!40000 ALTER TABLE `vtiger_glacct_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_google_oauth2`
--

DROP TABLE IF EXISTS `vtiger_google_oauth2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_google_oauth2` (
  `service` varchar(20) DEFAULT NULL,
  `access_token` varchar(500) DEFAULT NULL,
  `refresh_token` varchar(500) DEFAULT NULL,
  `userid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_google_oauth2`
--

LOCK TABLES `vtiger_google_oauth2` WRITE;
/*!40000 ALTER TABLE `vtiger_google_oauth2` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_google_oauth2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_google_sync_fieldmapping`
--

DROP TABLE IF EXISTS `vtiger_google_sync_fieldmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_google_sync_fieldmapping` (
  `vtiger_field` varchar(255) DEFAULT NULL,
  `google_field` varchar(255) DEFAULT NULL,
  `google_field_type` varchar(255) DEFAULT NULL,
  `google_custom_label` varchar(255) DEFAULT NULL,
  `user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_google_sync_fieldmapping`
--

LOCK TABLES `vtiger_google_sync_fieldmapping` WRITE;
/*!40000 ALTER TABLE `vtiger_google_sync_fieldmapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_google_sync_fieldmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_google_sync_settings`
--

DROP TABLE IF EXISTS `vtiger_google_sync_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_google_sync_settings` (
  `user` int(11) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `clientgroup` varchar(255) DEFAULT NULL,
  `direction` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_google_sync_settings`
--

LOCK TABLES `vtiger_google_sync_settings` WRITE;
/*!40000 ALTER TABLE `vtiger_google_sync_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_google_sync_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_group2grouprel`
--

DROP TABLE IF EXISTS `vtiger_group2grouprel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_group2grouprel` (
  `groupid` int(19) NOT NULL,
  `containsgroupid` int(19) NOT NULL,
  PRIMARY KEY (`groupid`,`containsgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_group2grouprel`
--

LOCK TABLES `vtiger_group2grouprel` WRITE;
/*!40000 ALTER TABLE `vtiger_group2grouprel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_group2grouprel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_group2role`
--

DROP TABLE IF EXISTS `vtiger_group2role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_group2role` (
  `groupid` int(19) NOT NULL,
  `roleid` varchar(255) NOT NULL,
  PRIMARY KEY (`groupid`,`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_group2role`
--

LOCK TABLES `vtiger_group2role` WRITE;
/*!40000 ALTER TABLE `vtiger_group2role` DISABLE KEYS */;
INSERT INTO `vtiger_group2role` VALUES (2,'H4'),(3,'H10'),(3,'H11'),(3,'H2'),(3,'H4'),(3,'H6'),(5,'H10'),(5,'H2'),(5,'H4'),(5,'H6');
/*!40000 ALTER TABLE `vtiger_group2role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_group2rs`
--

DROP TABLE IF EXISTS `vtiger_group2rs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_group2rs` (
  `groupid` int(19) NOT NULL,
  `roleandsubid` varchar(255) NOT NULL,
  PRIMARY KEY (`groupid`,`roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_group2rs`
--

LOCK TABLES `vtiger_group2rs` WRITE;
/*!40000 ALTER TABLE `vtiger_group2rs` DISABLE KEYS */;
INSERT INTO `vtiger_group2rs` VALUES (2,'H5'),(2,'H6');
/*!40000 ALTER TABLE `vtiger_group2rs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_groups`
--

DROP TABLE IF EXISTS `vtiger_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_groups` (
  `groupid` int(19) NOT NULL,
  `groupname` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`groupid`),
  UNIQUE KEY `groups_groupname_idx` (`groupname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_groups`
--

LOCK TABLES `vtiger_groups` WRITE;
/*!40000 ALTER TABLE `vtiger_groups` DISABLE KEYS */;
INSERT INTO `vtiger_groups` VALUES (2,'Team Selling','Group Related to Sales'),(3,'Marketing Group','Group Related to Marketing Activities'),(4,'Support Group','Group Related to providing Support to Customers'),(5,'Strategy','Strategic Group');
/*!40000 ALTER TABLE `vtiger_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_home_layout`
--

DROP TABLE IF EXISTS `vtiger_home_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_home_layout` (
  `userid` int(19) NOT NULL,
  `layout` int(19) NOT NULL DEFAULT '4',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_home_layout`
--

LOCK TABLES `vtiger_home_layout` WRITE;
/*!40000 ALTER TABLE `vtiger_home_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_home_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_homedashbd`
--

DROP TABLE IF EXISTS `vtiger_homedashbd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_homedashbd` (
  `stuffid` int(19) NOT NULL DEFAULT '0',
  `dashbdname` varchar(100) DEFAULT NULL,
  `dashbdtype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_homedashbd`
--

LOCK TABLES `vtiger_homedashbd` WRITE;
/*!40000 ALTER TABLE `vtiger_homedashbd` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_homedashbd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_homedefault`
--

DROP TABLE IF EXISTS `vtiger_homedefault`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_homedefault` (
  `stuffid` int(19) NOT NULL DEFAULT '0',
  `hometype` varchar(30) NOT NULL,
  `maxentries` int(19) DEFAULT NULL,
  `setype` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_homedefault`
--

LOCK TABLES `vtiger_homedefault` WRITE;
/*!40000 ALTER TABLE `vtiger_homedefault` DISABLE KEYS */;
INSERT INTO `vtiger_homedefault` VALUES (1,'ALVT',5,'Accounts'),(2,'HDB',5,'Dashboard'),(3,'PLVT',5,'Potentials'),(4,'QLTQ',5,'Quotes'),(5,'CVLVT',5,'NULL'),(6,'HLT',5,'HelpDesk'),(7,'UA',5,'Calendar'),(8,'GRT',5,'NULL'),(9,'OLTSO',5,'SalesOrder'),(10,'ILTI',5,'Invoice'),(11,'MNL',5,'Leads'),(12,'OLTPO',5,'PurchaseOrder'),(13,'PA',5,'Calendar'),(14,'LTFAQ',5,'Faq'),(16,'ALVT',5,'Accounts'),(17,'HDB',5,'Dashboard'),(18,'PLVT',5,'Potentials'),(19,'QLTQ',5,'Quotes'),(20,'CVLVT',5,'NULL'),(21,'HLT',5,'HelpDesk'),(22,'UA',5,'Calendar'),(23,'GRT',5,'NULL'),(24,'OLTSO',5,'SalesOrder'),(25,'ILTI',5,'Invoice'),(26,'MNL',5,'Leads'),(27,'OLTPO',5,'PurchaseOrder'),(28,'PA',5,'Calendar'),(29,'LTFAQ',5,'Faq'),(31,'ALVT',5,'Accounts'),(32,'HDB',5,'Dashboard'),(33,'PLVT',5,'Potentials'),(34,'QLTQ',5,'Quotes'),(35,'CVLVT',5,'NULL'),(36,'HLT',5,'HelpDesk'),(37,'UA',5,'Calendar'),(38,'GRT',5,'NULL'),(39,'OLTSO',5,'SalesOrder'),(40,'ILTI',5,'Invoice'),(41,'MNL',5,'Leads'),(42,'OLTPO',5,'PurchaseOrder'),(43,'PA',5,'Calendar'),(44,'LTFAQ',5,'Faq'),(46,'ALVT',5,'Accounts'),(47,'HDB',5,'Dashboard'),(48,'PLVT',5,'Potentials'),(49,'QLTQ',5,'Quotes'),(50,'CVLVT',5,'NULL'),(51,'HLT',5,'HelpDesk'),(52,'UA',5,'Calendar'),(53,'GRT',5,'NULL'),(54,'OLTSO',5,'SalesOrder'),(55,'ILTI',5,'Invoice'),(56,'MNL',5,'Leads'),(57,'OLTPO',5,'PurchaseOrder'),(58,'PA',5,'Calendar'),(59,'LTFAQ',5,'Faq'),(61,'ALVT',5,'Accounts'),(62,'HDB',5,'Dashboard'),(63,'PLVT',5,'Potentials'),(64,'QLTQ',5,'Quotes'),(65,'CVLVT',5,'NULL'),(66,'HLT',5,'HelpDesk'),(67,'UA',5,'Calendar'),(68,'GRT',5,'NULL'),(69,'OLTSO',5,'SalesOrder'),(70,'ILTI',5,'Invoice'),(71,'MNL',5,'Leads'),(72,'OLTPO',5,'PurchaseOrder'),(73,'PA',5,'Calendar'),(74,'LTFAQ',5,'Faq'),(76,'ALVT',5,'Accounts'),(77,'HDB',5,'Dashboard'),(78,'PLVT',5,'Potentials'),(79,'QLTQ',5,'Quotes'),(80,'CVLVT',5,'NULL'),(81,'HLT',5,'HelpDesk'),(82,'UA',5,'Calendar'),(83,'GRT',5,'NULL'),(84,'OLTSO',5,'SalesOrder'),(85,'ILTI',5,'Invoice'),(86,'MNL',5,'Leads'),(87,'OLTPO',5,'PurchaseOrder'),(88,'PA',5,'Calendar'),(89,'LTFAQ',5,'Faq'),(91,'ALVT',5,'Accounts'),(92,'HDB',5,'Dashboard'),(93,'PLVT',5,'Potentials'),(94,'QLTQ',5,'Quotes'),(95,'CVLVT',5,'NULL'),(96,'HLT',5,'HelpDesk'),(97,'UA',5,'Calendar'),(98,'GRT',5,'NULL'),(99,'OLTSO',5,'SalesOrder'),(100,'ILTI',5,'Invoice'),(101,'MNL',5,'Leads'),(102,'OLTPO',5,'PurchaseOrder'),(103,'PA',5,'Calendar'),(104,'LTFAQ',5,'Faq'),(106,'ALVT',5,'Accounts'),(107,'HDB',5,'Dashboard'),(108,'PLVT',5,'Potentials'),(109,'QLTQ',5,'Quotes'),(110,'CVLVT',5,'NULL'),(111,'HLT',5,'HelpDesk'),(112,'UA',5,'Calendar'),(113,'GRT',5,'NULL'),(114,'OLTSO',5,'SalesOrder'),(115,'ILTI',5,'Invoice'),(116,'MNL',5,'Leads'),(117,'OLTPO',5,'PurchaseOrder'),(118,'PA',5,'Calendar'),(119,'LTFAQ',5,'Faq'),(121,'ALVT',5,'Accounts'),(122,'HDB',5,'Dashboard'),(123,'PLVT',5,'Potentials'),(124,'QLTQ',5,'Quotes'),(125,'CVLVT',5,'NULL'),(126,'HLT',5,'HelpDesk'),(127,'UA',5,'Calendar'),(128,'GRT',5,'NULL'),(129,'OLTSO',5,'SalesOrder'),(130,'ILTI',5,'Invoice'),(131,'MNL',5,'Leads'),(132,'OLTPO',5,'PurchaseOrder'),(133,'PA',5,'Calendar'),(134,'LTFAQ',5,'Faq'),(136,'ALVT',5,'Accounts'),(137,'HDB',5,'Dashboard'),(138,'PLVT',5,'Potentials'),(139,'QLTQ',5,'Quotes'),(140,'CVLVT',5,'NULL'),(141,'HLT',5,'HelpDesk'),(142,'UA',5,'Calendar'),(143,'GRT',5,'NULL'),(144,'OLTSO',5,'SalesOrder'),(145,'ILTI',5,'Invoice'),(146,'MNL',5,'Leads'),(147,'OLTPO',5,'PurchaseOrder'),(148,'PA',5,'Calendar'),(149,'LTFAQ',5,'Faq'),(151,'ALVT',5,'Accounts'),(152,'HDB',5,'Dashboard'),(153,'PLVT',5,'Potentials'),(154,'QLTQ',5,'Quotes'),(155,'CVLVT',5,'NULL'),(156,'HLT',5,'HelpDesk'),(157,'UA',5,'Calendar'),(158,'GRT',5,'NULL'),(159,'OLTSO',5,'SalesOrder'),(160,'ILTI',5,'Invoice'),(161,'MNL',5,'Leads'),(162,'OLTPO',5,'PurchaseOrder'),(163,'PA',5,'Calendar'),(164,'LTFAQ',5,'Faq'),(166,'ALVT',5,'Accounts'),(167,'HDB',5,'Dashboard'),(168,'PLVT',5,'Potentials'),(169,'QLTQ',5,'Quotes'),(170,'CVLVT',5,'NULL'),(171,'HLT',5,'HelpDesk'),(172,'UA',5,'Calendar'),(173,'GRT',5,'NULL'),(174,'OLTSO',5,'SalesOrder'),(175,'ILTI',5,'Invoice'),(176,'MNL',5,'Leads'),(177,'OLTPO',5,'PurchaseOrder'),(178,'PA',5,'Calendar'),(179,'LTFAQ',5,'Faq'),(181,'ALVT',5,'Accounts'),(182,'HDB',5,'Dashboard'),(183,'PLVT',5,'Potentials'),(184,'QLTQ',5,'Quotes'),(185,'CVLVT',5,'NULL'),(186,'HLT',5,'HelpDesk'),(187,'UA',5,'Calendar'),(188,'GRT',5,'NULL'),(189,'OLTSO',5,'SalesOrder'),(190,'ILTI',5,'Invoice'),(191,'MNL',5,'Leads'),(192,'OLTPO',5,'PurchaseOrder'),(193,'PA',5,'Calendar'),(194,'LTFAQ',5,'Faq');
/*!40000 ALTER TABLE `vtiger_homedefault` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_homemodule`
--

DROP TABLE IF EXISTS `vtiger_homemodule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_homemodule` (
  `stuffid` int(19) NOT NULL,
  `modulename` varchar(100) DEFAULT NULL,
  `maxentries` int(19) NOT NULL,
  `customviewid` int(19) NOT NULL,
  `setype` varchar(30) NOT NULL,
  PRIMARY KEY (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_homemodule`
--

LOCK TABLES `vtiger_homemodule` WRITE;
/*!40000 ALTER TABLE `vtiger_homemodule` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_homemodule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_homemoduleflds`
--

DROP TABLE IF EXISTS `vtiger_homemoduleflds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_homemoduleflds` (
  `stuffid` int(19) DEFAULT NULL,
  `fieldname` varchar(100) DEFAULT NULL,
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_homemoduleflds`
--

LOCK TABLES `vtiger_homemoduleflds` WRITE;
/*!40000 ALTER TABLE `vtiger_homemoduleflds` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_homemoduleflds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_homereportchart`
--

DROP TABLE IF EXISTS `vtiger_homereportchart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_homereportchart` (
  `stuffid` int(11) NOT NULL,
  `reportid` int(19) DEFAULT NULL,
  `reportcharttype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_homereportchart`
--

LOCK TABLES `vtiger_homereportchart` WRITE;
/*!40000 ALTER TABLE `vtiger_homereportchart` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_homereportchart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_homerss`
--

DROP TABLE IF EXISTS `vtiger_homerss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_homerss` (
  `stuffid` int(19) NOT NULL DEFAULT '0',
  `url` varchar(100) DEFAULT NULL,
  `maxentries` int(19) NOT NULL,
  PRIMARY KEY (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_homerss`
--

LOCK TABLES `vtiger_homerss` WRITE;
/*!40000 ALTER TABLE `vtiger_homerss` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_homerss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_homestuff`
--

DROP TABLE IF EXISTS `vtiger_homestuff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_homestuff` (
  `stuffid` int(19) NOT NULL DEFAULT '0',
  `stuffsequence` int(19) NOT NULL DEFAULT '0',
  `stufftype` varchar(100) DEFAULT NULL,
  `userid` int(19) NOT NULL,
  `visible` int(10) NOT NULL DEFAULT '0',
  `stufftitle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_homestuff`
--

LOCK TABLES `vtiger_homestuff` WRITE;
/*!40000 ALTER TABLE `vtiger_homestuff` DISABLE KEYS */;
INSERT INTO `vtiger_homestuff` VALUES (1,1,'Default',1,1,'Top Accounts'),(2,2,'Default',1,1,'Home Page Dashboard'),(3,3,'Default',1,1,'Top Potentials'),(4,4,'Default',1,1,'Top Quotes'),(5,5,'Default',1,1,'Key Metrics'),(6,6,'Default',1,1,'Top Trouble Tickets'),(7,7,'Default',1,1,'Upcoming Activities'),(8,8,'Default',1,1,'My Group Allocation'),(9,9,'Default',1,1,'Top Sales Orders'),(10,10,'Default',1,1,'Top Invoices'),(11,11,'Default',1,1,'My New Leads'),(12,12,'Default',1,1,'Top Purchase Orders'),(13,13,'Default',1,1,'Pending Activities'),(14,14,'Default',1,1,'My Recent FAQs'),(15,15,'Tag Cloud',1,0,'Tag Cloud'),(16,1,'Default',6,1,'Top Accounts'),(17,2,'Default',6,1,'Home Page Dashboard'),(18,3,'Default',6,1,'Top Potentials'),(19,4,'Default',6,1,'Top Quotes'),(20,5,'Default',6,1,'Key Metrics'),(21,6,'Default',6,1,'Top Trouble Tickets'),(22,7,'Default',6,1,'Upcoming Activities'),(23,8,'Default',6,1,'My Group Allocation'),(24,9,'Default',6,1,'Top Sales Orders'),(25,10,'Default',6,1,'Top Invoices'),(26,11,'Default',6,1,'My New Leads'),(27,12,'Default',6,1,'Top Purchase Orders'),(28,13,'Default',6,1,'Pending Activities'),(29,14,'Default',6,1,'My Recent FAQs'),(30,15,'Tag Cloud',6,0,'Tag Cloud'),(31,1,'Default',7,1,'Top Accounts'),(32,2,'Default',7,1,'Home Page Dashboard'),(33,3,'Default',7,1,'Top Potentials'),(34,4,'Default',7,1,'Top Quotes'),(35,5,'Default',7,1,'Key Metrics'),(36,6,'Default',7,1,'Top Trouble Tickets'),(37,7,'Default',7,1,'Upcoming Activities'),(38,8,'Default',7,1,'My Group Allocation'),(39,9,'Default',7,1,'Top Sales Orders'),(40,10,'Default',7,1,'Top Invoices'),(41,11,'Default',7,1,'My New Leads'),(42,12,'Default',7,1,'Top Purchase Orders'),(43,13,'Default',7,1,'Pending Activities'),(44,14,'Default',7,1,'My Recent FAQs'),(45,15,'Tag Cloud',7,0,'Tag Cloud'),(46,1,'Default',8,1,'Top Accounts'),(47,2,'Default',8,1,'Home Page Dashboard'),(48,3,'Default',8,1,'Top Potentials'),(49,4,'Default',8,1,'Top Quotes'),(50,5,'Default',8,1,'Key Metrics'),(51,6,'Default',8,1,'Top Trouble Tickets'),(52,7,'Default',8,1,'Upcoming Activities'),(53,8,'Default',8,1,'My Group Allocation'),(54,9,'Default',8,1,'Top Sales Orders'),(55,10,'Default',8,1,'Top Invoices'),(56,11,'Default',8,1,'My New Leads'),(57,12,'Default',8,1,'Top Purchase Orders'),(58,13,'Default',8,1,'Pending Activities'),(59,14,'Default',8,1,'My Recent FAQs'),(60,15,'Tag Cloud',8,0,'Tag Cloud'),(61,1,'Default',9,1,'Top Accounts'),(62,2,'Default',9,1,'Home Page Dashboard'),(63,3,'Default',9,1,'Top Potentials'),(64,4,'Default',9,1,'Top Quotes'),(65,5,'Default',9,1,'Key Metrics'),(66,6,'Default',9,1,'Top Trouble Tickets'),(67,7,'Default',9,1,'Upcoming Activities'),(68,8,'Default',9,1,'My Group Allocation'),(69,9,'Default',9,1,'Top Sales Orders'),(70,10,'Default',9,1,'Top Invoices'),(71,11,'Default',9,1,'My New Leads'),(72,12,'Default',9,1,'Top Purchase Orders'),(73,13,'Default',9,1,'Pending Activities'),(74,14,'Default',9,1,'My Recent FAQs'),(75,15,'Tag Cloud',9,0,'Tag Cloud'),(76,1,'Default',10,1,'Top Accounts'),(77,2,'Default',10,1,'Home Page Dashboard'),(78,3,'Default',10,1,'Top Potentials'),(79,4,'Default',10,1,'Top Quotes'),(80,5,'Default',10,1,'Key Metrics'),(81,6,'Default',10,1,'Top Trouble Tickets'),(82,7,'Default',10,1,'Upcoming Activities'),(83,8,'Default',10,1,'My Group Allocation'),(84,9,'Default',10,1,'Top Sales Orders'),(85,10,'Default',10,1,'Top Invoices'),(86,11,'Default',10,1,'My New Leads'),(87,12,'Default',10,1,'Top Purchase Orders'),(88,13,'Default',10,1,'Pending Activities'),(89,14,'Default',10,1,'My Recent FAQs'),(90,15,'Tag Cloud',10,0,'Tag Cloud'),(91,1,'Default',11,1,'Top Accounts'),(92,2,'Default',11,1,'Home Page Dashboard'),(93,3,'Default',11,1,'Top Potentials'),(94,4,'Default',11,1,'Top Quotes'),(95,5,'Default',11,1,'Key Metrics'),(96,6,'Default',11,1,'Top Trouble Tickets'),(97,7,'Default',11,1,'Upcoming Activities'),(98,8,'Default',11,1,'My Group Allocation'),(99,9,'Default',11,1,'Top Sales Orders'),(100,10,'Default',11,1,'Top Invoices'),(101,11,'Default',11,1,'My New Leads'),(102,12,'Default',11,1,'Top Purchase Orders'),(103,13,'Default',11,1,'Pending Activities'),(104,14,'Default',11,1,'My Recent FAQs'),(105,15,'Tag Cloud',11,0,'Tag Cloud'),(106,1,'Default',12,1,'Top Accounts'),(107,2,'Default',12,1,'Home Page Dashboard'),(108,3,'Default',12,1,'Top Potentials'),(109,4,'Default',12,1,'Top Quotes'),(110,5,'Default',12,1,'Key Metrics'),(111,6,'Default',12,1,'Top Trouble Tickets'),(112,7,'Default',12,1,'Upcoming Activities'),(113,8,'Default',12,1,'My Group Allocation'),(114,9,'Default',12,1,'Top Sales Orders'),(115,10,'Default',12,1,'Top Invoices'),(116,11,'Default',12,1,'My New Leads'),(117,12,'Default',12,1,'Top Purchase Orders'),(118,13,'Default',12,1,'Pending Activities'),(119,14,'Default',12,1,'My Recent FAQs'),(120,15,'Tag Cloud',12,0,'Tag Cloud'),(121,1,'Default',13,1,'Top Accounts'),(122,2,'Default',13,1,'Home Page Dashboard'),(123,3,'Default',13,1,'Top Potentials'),(124,4,'Default',13,1,'Top Quotes'),(125,5,'Default',13,1,'Key Metrics'),(126,6,'Default',13,1,'Top Trouble Tickets'),(127,7,'Default',13,1,'Upcoming Activities'),(128,8,'Default',13,1,'My Group Allocation'),(129,9,'Default',13,1,'Top Sales Orders'),(130,10,'Default',13,1,'Top Invoices'),(131,11,'Default',13,1,'My New Leads'),(132,12,'Default',13,1,'Top Purchase Orders'),(133,13,'Default',13,1,'Pending Activities'),(134,14,'Default',13,1,'My Recent FAQs'),(135,15,'Tag Cloud',13,0,'Tag Cloud'),(136,1,'Default',14,1,'Top Accounts'),(137,2,'Default',14,1,'Home Page Dashboard'),(138,3,'Default',14,1,'Top Potentials'),(139,4,'Default',14,1,'Top Quotes'),(140,5,'Default',14,1,'Key Metrics'),(141,6,'Default',14,1,'Top Trouble Tickets'),(142,7,'Default',14,1,'Upcoming Activities'),(143,8,'Default',14,1,'My Group Allocation'),(144,9,'Default',14,1,'Top Sales Orders'),(145,10,'Default',14,1,'Top Invoices'),(146,11,'Default',14,1,'My New Leads'),(147,12,'Default',14,1,'Top Purchase Orders'),(148,13,'Default',14,1,'Pending Activities'),(149,14,'Default',14,1,'My Recent FAQs'),(150,15,'Tag Cloud',14,0,'Tag Cloud'),(151,1,'Default',15,1,'Top Accounts'),(152,2,'Default',15,1,'Home Page Dashboard'),(153,3,'Default',15,0,'Top Potentials'),(154,4,'Default',15,1,'Top Quotes'),(155,5,'Default',15,0,'Key Metrics'),(156,6,'Default',15,1,'Top Trouble Tickets'),(157,7,'Default',15,0,'Upcoming Activities'),(158,8,'Default',15,1,'My Group Allocation'),(159,9,'Default',15,1,'Top Sales Orders'),(160,10,'Default',15,1,'Top Invoices'),(161,11,'Default',15,1,'My New Leads'),(162,12,'Default',15,1,'Top Purchase Orders'),(163,13,'Default',15,1,'Pending Activities'),(164,14,'Default',15,1,'My Recent FAQs'),(165,15,'Tag Cloud',15,0,'Tag Cloud'),(166,1,'Default',16,1,'Top Accounts'),(167,2,'Default',16,1,'Home Page Dashboard'),(168,3,'Default',16,0,'Top Potentials'),(169,4,'Default',16,1,'Top Quotes'),(170,5,'Default',16,0,'Key Metrics'),(171,6,'Default',16,1,'Top Trouble Tickets'),(172,7,'Default',16,0,'Upcoming Activities'),(173,8,'Default',16,1,'My Group Allocation'),(174,9,'Default',16,1,'Top Sales Orders'),(175,10,'Default',16,1,'Top Invoices'),(176,11,'Default',16,1,'My New Leads'),(177,12,'Default',16,1,'Top Purchase Orders'),(178,13,'Default',16,1,'Pending Activities'),(179,14,'Default',16,1,'My Recent FAQs'),(180,15,'Tag Cloud',16,0,'Tag Cloud'),(181,1,'Default',17,1,'Top Accounts'),(182,2,'Default',17,1,'Home Page Dashboard'),(183,3,'Default',17,1,'Top Potentials'),(184,4,'Default',17,1,'Top Quotes'),(185,5,'Default',17,1,'Key Metrics'),(186,6,'Default',17,1,'Top Trouble Tickets'),(187,7,'Default',17,1,'Upcoming Activities'),(188,8,'Default',17,1,'My Group Allocation'),(189,9,'Default',17,1,'Top Sales Orders'),(190,10,'Default',17,1,'Top Invoices'),(191,11,'Default',17,1,'My New Leads'),(192,12,'Default',17,1,'Top Purchase Orders'),(193,13,'Default',17,1,'Pending Activities'),(194,14,'Default',17,1,'My Recent FAQs'),(195,15,'Tag Cloud',17,0,'Tag Cloud');
/*!40000 ALTER TABLE `vtiger_homestuff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_homestuff_seq`
--

DROP TABLE IF EXISTS `vtiger_homestuff_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_homestuff_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_homestuff_seq`
--

LOCK TABLES `vtiger_homestuff_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_homestuff_seq` DISABLE KEYS */;
INSERT INTO `vtiger_homestuff_seq` VALUES (195);
/*!40000 ALTER TABLE `vtiger_homestuff_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_hour_format`
--

DROP TABLE IF EXISTS `vtiger_hour_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_hour_format` (
  `hour_formatid` int(11) NOT NULL AUTO_INCREMENT,
  `hour_format` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`hour_formatid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_hour_format`
--

LOCK TABLES `vtiger_hour_format` WRITE;
/*!40000 ALTER TABLE `vtiger_hour_format` DISABLE KEYS */;
INSERT INTO `vtiger_hour_format` VALUES (1,'12',1,1),(2,'24',2,1);
/*!40000 ALTER TABLE `vtiger_hour_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_hour_format_seq`
--

DROP TABLE IF EXISTS `vtiger_hour_format_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_hour_format_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_hour_format_seq`
--

LOCK TABLES `vtiger_hour_format_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_hour_format_seq` DISABLE KEYS */;
INSERT INTO `vtiger_hour_format_seq` VALUES (2);
/*!40000 ALTER TABLE `vtiger_hour_format_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_import_locks`
--

DROP TABLE IF EXISTS `vtiger_import_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_import_locks` (
  `vtiger_import_lock_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `importid` int(11) NOT NULL,
  `locked_since` datetime DEFAULT NULL,
  PRIMARY KEY (`vtiger_import_lock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_import_locks`
--

LOCK TABLES `vtiger_import_locks` WRITE;
/*!40000 ALTER TABLE `vtiger_import_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_import_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_import_maps`
--

DROP TABLE IF EXISTS `vtiger_import_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_import_maps` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(36) NOT NULL,
  `module` varchar(36) NOT NULL,
  `content` longblob,
  `has_header` int(1) NOT NULL DEFAULT '1',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` varchar(36) DEFAULT NULL,
  `is_published` varchar(3) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `import_maps_assigned_user_id_module_name_deleted_idx` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_import_maps`
--

LOCK TABLES `vtiger_import_maps` WRITE;
/*!40000 ALTER TABLE `vtiger_import_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_import_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_import_queue`
--

DROP TABLE IF EXISTS `vtiger_import_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_import_queue` (
  `importid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `field_mapping` text,
  `default_values` text,
  `merge_type` int(11) DEFAULT NULL,
  `merge_fields` text,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`importid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_import_queue`
--

LOCK TABLES `vtiger_import_queue` WRITE;
/*!40000 ALTER TABLE `vtiger_import_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_import_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_industry`
--

DROP TABLE IF EXISTS `vtiger_industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_industry` (
  `industryid` int(19) NOT NULL AUTO_INCREMENT,
  `industry` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`industryid`),
  UNIQUE KEY `industry_industry_idx` (`industry`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_industry`
--

LOCK TABLES `vtiger_industry` WRITE;
/*!40000 ALTER TABLE `vtiger_industry` DISABLE KEYS */;
INSERT INTO `vtiger_industry` VALUES (2,'Apparel',1,61,1),(3,'Banking',1,62,2),(4,'Biotechnology',1,63,3),(5,'Chemicals',1,64,4),(6,'Communications',1,65,5),(7,'Construction',1,66,6),(8,'Consulting',1,67,7),(9,'Education',1,68,8),(10,'Electronics',1,69,9),(11,'Energy',1,70,10),(12,'Engineering',1,71,11),(13,'Entertainment',1,72,12),(14,'Environmental',1,73,13),(15,'Finance',1,74,14),(16,'Food & Beverage',1,75,15),(17,'Government',1,76,16),(18,'Healthcare',1,77,17),(19,'Hospitality',1,78,18),(20,'Insurance',1,79,19),(21,'Machinery',1,80,20),(22,'Manufacturing',1,81,21),(23,'Media',1,82,22),(24,'Not For Profit',1,83,23),(25,'Recreation',1,84,24),(26,'Retail',1,85,25),(27,'Shipping',1,86,26),(28,'Technology',1,87,27),(29,'Telecommunications',1,88,28),(30,'Transportation',1,89,29),(31,'Utilities',1,90,30),(32,'Other',1,91,31);
/*!40000 ALTER TABLE `vtiger_industry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_industry_seq`
--

DROP TABLE IF EXISTS `vtiger_industry_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_industry_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_industry_seq`
--

LOCK TABLES `vtiger_industry_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_industry_seq` DISABLE KEYS */;
INSERT INTO `vtiger_industry_seq` VALUES (32);
/*!40000 ALTER TABLE `vtiger_industry_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventory_tandc`
--

DROP TABLE IF EXISTS `vtiger_inventory_tandc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_inventory_tandc` (
  `id` int(19) NOT NULL,
  `type` varchar(30) NOT NULL,
  `tandc` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_inventory_tandc`
--

LOCK TABLES `vtiger_inventory_tandc` WRITE;
/*!40000 ALTER TABLE `vtiger_inventory_tandc` DISABLE KEYS */;
INSERT INTO `vtiger_inventory_tandc` VALUES (1,'Inventory','\n - Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.');
/*!40000 ALTER TABLE `vtiger_inventory_tandc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventory_tandc_seq`
--

DROP TABLE IF EXISTS `vtiger_inventory_tandc_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_inventory_tandc_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_inventory_tandc_seq`
--

LOCK TABLES `vtiger_inventory_tandc_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_inventory_tandc_seq` DISABLE KEYS */;
INSERT INTO `vtiger_inventory_tandc_seq` VALUES (1);
/*!40000 ALTER TABLE `vtiger_inventory_tandc_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventorynotification`
--

DROP TABLE IF EXISTS `vtiger_inventorynotification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_inventorynotification` (
  `notificationid` int(19) NOT NULL AUTO_INCREMENT,
  `notificationname` varchar(200) DEFAULT NULL,
  `notificationsubject` varchar(200) DEFAULT NULL,
  `notificationbody` text,
  `label` varchar(50) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`notificationid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_inventorynotification`
--

LOCK TABLES `vtiger_inventorynotification` WRITE;
/*!40000 ALTER TABLE `vtiger_inventorynotification` DISABLE KEYS */;
INSERT INTO `vtiger_inventorynotification` VALUES (1,'InvoiceNotification','{PRODUCTNAME} Stock Level is Low','Dear {HANDLER},\n\nThe current stock of {PRODUCTNAME} in our warehouse is {CURRENTSTOCK}. Kindly procure required number of units as the stock level is below reorder level {REORDERLEVELVALUE}.\n\nPlease treat this information as Urgent as the invoice is already sent  to the customer.\n\nSeverity: Critical\n\nThanks,\n{CURRENTUSER} ','InvoiceNotificationDescription',NULL),(2,'QuoteNotification','Quote given for {PRODUCTNAME}','Dear {HANDLER},\n\nQuote is generated for {QUOTEQUANTITY} units of {PRODUCTNAME}. The current stock of {PRODUCTNAME} in our warehouse is {CURRENTSTOCK}.\n\nSeverity: Minor\n\nThanks,\n{CURRENTUSER} ','QuoteNotificationDescription',NULL),(3,'SalesOrderNotification','Sales Order generated for {PRODUCTNAME}','Dear {HANDLER},\n\nSalesOrder is generated for {SOQUANTITY} units of {PRODUCTNAME}. The current stock of {PRODUCTNAME} in our warehouse is {CURRENTSTOCK}.\n\nPlease treat this information  with priority as the sales order is already generated.\n\nSeverity: Major\n\nThanks,\n{CURRENTUSER} ','SalesOrderNotificationDescription',NULL);
/*!40000 ALTER TABLE `vtiger_inventorynotification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventorynotification_seq`
--

DROP TABLE IF EXISTS `vtiger_inventorynotification_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_inventorynotification_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_inventorynotification_seq`
--

LOCK TABLES `vtiger_inventorynotification_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_inventorynotification_seq` DISABLE KEYS */;
INSERT INTO `vtiger_inventorynotification_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_inventorynotification_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventoryproductrel`
--

DROP TABLE IF EXISTS `vtiger_inventoryproductrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_inventoryproductrel` (
  `id` int(19) DEFAULT NULL,
  `productid` int(19) DEFAULT NULL,
  `sequence_no` int(4) DEFAULT NULL,
  `quantity` decimal(25,3) DEFAULT NULL,
  `listprice` decimal(27,8) DEFAULT NULL,
  `discount_percent` decimal(7,3) DEFAULT NULL,
  `discount_amount` decimal(27,8) DEFAULT NULL,
  `comment` text,
  `description` text,
  `incrementondel` int(11) NOT NULL DEFAULT '0',
  `lineitem_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax1` decimal(7,3) DEFAULT NULL,
  `tax2` decimal(7,3) DEFAULT NULL,
  `tax3` decimal(7,3) DEFAULT NULL,
  PRIMARY KEY (`lineitem_id`),
  KEY `inventoryproductrel_id_idx` (`id`),
  KEY `inventoryproductrel_productid_idx` (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_inventoryproductrel`
--

LOCK TABLES `vtiger_inventoryproductrel` WRITE;
/*!40000 ALTER TABLE `vtiger_inventoryproductrel` DISABLE KEYS */;
INSERT INTO `vtiger_inventoryproductrel` VALUES (24,21,1,1.000,2500.00000000,NULL,NULL,'',NULL,0,1,4.500,10.000,12.500),(24,22,2,1.000,3000.00000000,NULL,NULL,'',NULL,0,2,4.500,10.000,12.500),(24,23,3,1.000,5000.00000000,NULL,NULL,'',NULL,0,3,4.500,10.000,12.500);
/*!40000 ALTER TABLE `vtiger_inventoryproductrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventoryproductrel_seq`
--

DROP TABLE IF EXISTS `vtiger_inventoryproductrel_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_inventoryproductrel_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_inventoryproductrel_seq`
--

LOCK TABLES `vtiger_inventoryproductrel_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_inventoryproductrel_seq` DISABLE KEYS */;
INSERT INTO `vtiger_inventoryproductrel_seq` VALUES (0);
/*!40000 ALTER TABLE `vtiger_inventoryproductrel_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventoryshippingrel`
--

DROP TABLE IF EXISTS `vtiger_inventoryshippingrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_inventoryshippingrel` (
  `id` int(19) DEFAULT NULL,
  `shtax1` decimal(7,3) DEFAULT NULL,
  `shtax2` decimal(7,3) DEFAULT NULL,
  `shtax3` decimal(7,3) DEFAULT NULL,
  KEY `inventoryishippingrel_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_inventoryshippingrel`
--

LOCK TABLES `vtiger_inventoryshippingrel` WRITE;
/*!40000 ALTER TABLE `vtiger_inventoryshippingrel` DISABLE KEYS */;
INSERT INTO `vtiger_inventoryshippingrel` VALUES (24,4.500,10.000,12.500);
/*!40000 ALTER TABLE `vtiger_inventoryshippingrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventorysubproductrel`
--

DROP TABLE IF EXISTS `vtiger_inventorysubproductrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_inventorysubproductrel` (
  `id` int(19) NOT NULL,
  `sequence_no` int(10) NOT NULL,
  `productid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_inventorysubproductrel`
--

LOCK TABLES `vtiger_inventorysubproductrel` WRITE;
/*!40000 ALTER TABLE `vtiger_inventorysubproductrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_inventorysubproductrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventorytaxinfo`
--

DROP TABLE IF EXISTS `vtiger_inventorytaxinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_inventorytaxinfo` (
  `taxid` int(3) NOT NULL,
  `taxname` varchar(50) DEFAULT NULL,
  `taxlabel` varchar(50) DEFAULT NULL,
  `percentage` decimal(7,3) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`taxid`),
  KEY `inventorytaxinfo_taxname_idx` (`taxname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_inventorytaxinfo`
--

LOCK TABLES `vtiger_inventorytaxinfo` WRITE;
/*!40000 ALTER TABLE `vtiger_inventorytaxinfo` DISABLE KEYS */;
INSERT INTO `vtiger_inventorytaxinfo` VALUES (1,'tax1','VAT',4.500,0),(2,'tax2','Sales',10.000,0),(3,'tax3','Service',12.500,0);
/*!40000 ALTER TABLE `vtiger_inventorytaxinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_inventorytaxinfo_seq`
--

DROP TABLE IF EXISTS `vtiger_inventorytaxinfo_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_inventorytaxinfo_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_inventorytaxinfo_seq`
--

LOCK TABLES `vtiger_inventorytaxinfo_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_inventorytaxinfo_seq` DISABLE KEYS */;
INSERT INTO `vtiger_inventorytaxinfo_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_inventorytaxinfo_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_invitees`
--

DROP TABLE IF EXISTS `vtiger_invitees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_invitees` (
  `activityid` int(19) NOT NULL,
  `inviteeid` int(19) NOT NULL,
  PRIMARY KEY (`activityid`,`inviteeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_invitees`
--

LOCK TABLES `vtiger_invitees` WRITE;
/*!40000 ALTER TABLE `vtiger_invitees` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_invitees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_invoice`
--

DROP TABLE IF EXISTS `vtiger_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_invoice` (
  `invoiceid` int(19) NOT NULL DEFAULT '0',
  `subject` varchar(100) DEFAULT NULL,
  `salesorderid` int(19) DEFAULT NULL,
  `customerno` varchar(100) DEFAULT NULL,
  `contactid` int(19) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `invoicedate` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `invoiceterms` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `adjustment` decimal(25,8) DEFAULT NULL,
  `salescommission` decimal(25,3) DEFAULT NULL,
  `exciseduty` decimal(25,3) DEFAULT NULL,
  `subtotal` decimal(25,8) DEFAULT NULL,
  `total` decimal(25,8) DEFAULT NULL,
  `taxtype` varchar(25) DEFAULT NULL,
  `discount_percent` decimal(25,3) DEFAULT NULL,
  `discount_amount` decimal(25,8) DEFAULT NULL,
  `s_h_amount` decimal(25,8) DEFAULT NULL,
  `shipping` varchar(100) DEFAULT NULL,
  `accountid` int(19) DEFAULT NULL,
  `terms_conditions` text,
  `purchaseorder` varchar(200) DEFAULT NULL,
  `invoicestatus` varchar(200) DEFAULT NULL,
  `invoice_no` varchar(100) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT '1.000',
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `received` decimal(25,8) DEFAULT NULL,
  `balance` decimal(25,8) DEFAULT NULL,
  `s_h_percent` int(11) DEFAULT NULL,
  PRIMARY KEY (`invoiceid`),
  KEY `invoice_purchaseorderid_idx` (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_invoice`
--

LOCK TABLES `vtiger_invoice` WRITE;
/*!40000 ALTER TABLE `vtiger_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_invoice_recurring_info`
--

DROP TABLE IF EXISTS `vtiger_invoice_recurring_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_invoice_recurring_info` (
  `salesorderid` int(11) NOT NULL,
  `recurring_frequency` varchar(200) DEFAULT NULL,
  `start_period` date DEFAULT NULL,
  `end_period` date DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `payment_duration` varchar(200) DEFAULT NULL,
  `invoice_status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`salesorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_invoice_recurring_info`
--

LOCK TABLES `vtiger_invoice_recurring_info` WRITE;
/*!40000 ALTER TABLE `vtiger_invoice_recurring_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_invoice_recurring_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_invoicebillads`
--

DROP TABLE IF EXISTS `vtiger_invoicebillads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_invoicebillads` (
  `invoicebilladdressid` int(19) NOT NULL DEFAULT '0',
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`invoicebilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_invoicebillads`
--

LOCK TABLES `vtiger_invoicebillads` WRITE;
/*!40000 ALTER TABLE `vtiger_invoicebillads` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_invoicebillads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_invoicecf`
--

DROP TABLE IF EXISTS `vtiger_invoicecf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_invoicecf` (
  `invoiceid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_invoicecf`
--

LOCK TABLES `vtiger_invoicecf` WRITE;
/*!40000 ALTER TABLE `vtiger_invoicecf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_invoicecf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_invoiceshipads`
--

DROP TABLE IF EXISTS `vtiger_invoiceshipads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_invoiceshipads` (
  `invoiceshipaddressid` int(19) NOT NULL DEFAULT '0',
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`invoiceshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_invoiceshipads`
--

LOCK TABLES `vtiger_invoiceshipads` WRITE;
/*!40000 ALTER TABLE `vtiger_invoiceshipads` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_invoiceshipads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_invoicestatus`
--

DROP TABLE IF EXISTS `vtiger_invoicestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_invoicestatus` (
  `invoicestatusid` int(19) NOT NULL AUTO_INCREMENT,
  `invoicestatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`invoicestatusid`),
  UNIQUE KEY `invoicestatus_invoiestatus_idx` (`invoicestatus`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_invoicestatus`
--

LOCK TABLES `vtiger_invoicestatus` WRITE;
/*!40000 ALTER TABLE `vtiger_invoicestatus` DISABLE KEYS */;
INSERT INTO `vtiger_invoicestatus` VALUES (1,'AutoCreated',0,92,0),(2,'Created',0,93,1),(3,'Approved',0,94,2),(4,'Sent',0,95,3),(5,'Credit Invoice',0,96,4),(6,'Paid',0,97,5),(7,'Cancel',1,288,1);
/*!40000 ALTER TABLE `vtiger_invoicestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_invoicestatus_seq`
--

DROP TABLE IF EXISTS `vtiger_invoicestatus_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_invoicestatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_invoicestatus_seq`
--

LOCK TABLES `vtiger_invoicestatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_invoicestatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_invoicestatus_seq` VALUES (7);
/*!40000 ALTER TABLE `vtiger_invoicestatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_invoicestatushistory`
--

DROP TABLE IF EXISTS `vtiger_invoicestatushistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_invoicestatushistory` (
  `historyid` int(19) NOT NULL AUTO_INCREMENT,
  `invoiceid` int(19) NOT NULL,
  `accountname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `invoicestatus` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  KEY `invoicestatushistory_invoiceid_idx` (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_invoicestatushistory`
--

LOCK TABLES `vtiger_invoicestatushistory` WRITE;
/*!40000 ALTER TABLE `vtiger_invoicestatushistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_invoicestatushistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_language`
--

DROP TABLE IF EXISTS `vtiger_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `prefix` varchar(10) DEFAULT NULL,
  `label` varchar(30) DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `isdefault` int(1) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_language`
--

LOCK TABLES `vtiger_language` WRITE;
/*!40000 ALTER TABLE `vtiger_language` DISABLE KEYS */;
INSERT INTO `vtiger_language` VALUES (1,'English','en_us','US English','2017-03-04 10:29:03',NULL,1,1),(2,'Dutch','nl_nl','NL-Dutch','2017-03-04 10:29:29',NULL,0,1),(3,'Pack de langue français','fr_fr','Pack de langue français','2017-03-04 10:29:38',NULL,0,1),(4,'British English','en_gb','British English','2017-03-04 10:29:33',NULL,0,1),(5,'Język Polski','pl_pl','Język Polski','2017-03-04 10:29:38',NULL,0,1),(6,'Romana','ro_ro','Romana','2017-03-04 10:29:38',NULL,0,1),(7,'Deutsch','de_de','DE Deutsch','2017-03-04 10:29:34',NULL,0,1),(8,'Spanish','es_es','ES Spanish','2017-03-04 10:29:34',NULL,0,1),(9,'Arabic','ar_ae','Arabic','2017-03-04 10:29:51',NULL,0,1),(10,'Russian','ru_ru','Russian','2017-03-04 10:29:34',NULL,0,1),(11,'Hungarian','hu_hu','HU Magyar','2017-03-04 10:29:35',NULL,0,1),(12,'Swedish','sv_se','Swedish','2017-03-04 10:29:51',NULL,0,1),(13,'Turkce','tr_tr','Turkce Dil Paketi','2017-03-04 10:29:36',NULL,0,1),(14,'Mexican Spanish','es_mx','ES Mexico','2017-03-04 10:29:36',NULL,0,1),(15,'Brazilian','pt_br','PT Brasil','2017-03-04 10:29:38',NULL,0,1),(16,'Italian','it_it','IT Italian','2017-03-04 10:29:37',NULL,0,1);
/*!40000 ALTER TABLE `vtiger_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_language_seq`
--

DROP TABLE IF EXISTS `vtiger_language_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_language_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_language_seq`
--

LOCK TABLES `vtiger_language_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_language_seq` DISABLE KEYS */;
INSERT INTO `vtiger_language_seq` VALUES (16);
/*!40000 ALTER TABLE `vtiger_language_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_lead_view`
--

DROP TABLE IF EXISTS `vtiger_lead_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_lead_view` (
  `lead_viewid` int(19) NOT NULL AUTO_INCREMENT,
  `lead_view` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`lead_viewid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_lead_view`
--

LOCK TABLES `vtiger_lead_view` WRITE;
/*!40000 ALTER TABLE `vtiger_lead_view` DISABLE KEYS */;
INSERT INTO `vtiger_lead_view` VALUES (1,'Today',0,1),(2,'Last 2 Days',1,1),(3,'Last Week',2,1);
/*!40000 ALTER TABLE `vtiger_lead_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_lead_view_seq`
--

DROP TABLE IF EXISTS `vtiger_lead_view_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_lead_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_lead_view_seq`
--

LOCK TABLES `vtiger_lead_view_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_lead_view_seq` DISABLE KEYS */;
INSERT INTO `vtiger_lead_view_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_lead_view_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_leadaddress`
--

DROP TABLE IF EXISTS `vtiger_leadaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_leadaddress` (
  `leadaddressid` int(19) NOT NULL DEFAULT '0',
  `city` varchar(30) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `pobox` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `lane` varchar(250) DEFAULT NULL,
  `leadaddresstype` varchar(30) DEFAULT 'Billing',
  PRIMARY KEY (`leadaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_leadaddress`
--

LOCK TABLES `vtiger_leadaddress` WRITE;
/*!40000 ALTER TABLE `vtiger_leadaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_leadaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_leaddetails`
--

DROP TABLE IF EXISTS `vtiger_leaddetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_leaddetails` (
  `leadid` int(19) NOT NULL,
  `lead_no` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `interest` varchar(50) DEFAULT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `salutation` varchar(200) DEFAULT NULL,
  `lastname` varchar(80) NOT NULL,
  `company` varchar(100) NOT NULL,
  `annualrevenue` decimal(25,8) DEFAULT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `campaign` varchar(30) DEFAULT NULL,
  `rating` varchar(200) DEFAULT NULL,
  `leadstatus` varchar(50) DEFAULT NULL,
  `leadsource` varchar(200) DEFAULT NULL,
  `converted` int(1) DEFAULT '0',
  `designation` varchar(50) DEFAULT 'SalesMan',
  `licencekeystatus` varchar(50) DEFAULT NULL,
  `space` varchar(250) DEFAULT NULL,
  `comments` text,
  `priority` varchar(50) DEFAULT NULL,
  `demorequest` varchar(50) DEFAULT NULL,
  `partnercontact` varchar(50) DEFAULT NULL,
  `productversion` varchar(20) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `maildate` date DEFAULT NULL,
  `nextstepdate` date DEFAULT NULL,
  `fundingsituation` varchar(50) DEFAULT NULL,
  `purpose` varchar(50) DEFAULT NULL,
  `evaluationstatus` varchar(50) DEFAULT NULL,
  `transferdate` date DEFAULT NULL,
  `revenuetype` varchar(50) DEFAULT NULL,
  `noofemployees` int(50) DEFAULT NULL,
  `secondaryemail` varchar(100) DEFAULT NULL,
  `assignleadchk` int(1) DEFAULT '0',
  `emailoptout` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`leadid`),
  KEY `leaddetails_converted_leadstatus_idx` (`converted`,`leadstatus`),
  KEY `email_idx` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_leaddetails`
--

LOCK TABLES `vtiger_leaddetails` WRITE;
/*!40000 ALTER TABLE `vtiger_leaddetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_leaddetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_leadscf`
--

DROP TABLE IF EXISTS `vtiger_leadscf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_leadscf` (
  `leadid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`leadid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_leadscf`
--

LOCK TABLES `vtiger_leadscf` WRITE;
/*!40000 ALTER TABLE `vtiger_leadscf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_leadscf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_leadsource`
--

DROP TABLE IF EXISTS `vtiger_leadsource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_leadsource` (
  `leadsourceid` int(19) NOT NULL AUTO_INCREMENT,
  `leadsource` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`leadsourceid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_leadsource`
--

LOCK TABLES `vtiger_leadsource` WRITE;
/*!40000 ALTER TABLE `vtiger_leadsource` DISABLE KEYS */;
INSERT INTO `vtiger_leadsource` VALUES (2,'Cold Call',1,99,1),(3,'Existing Customer',1,100,2),(4,'Self Generated',1,101,3),(5,'Employee',1,102,4),(6,'Partner',1,103,5),(7,'Public Relations',1,104,6),(8,'Direct Mail',1,105,7),(9,'Conference',1,106,8),(10,'Trade Show',1,107,9),(11,'Web Site',1,108,10),(12,'Word of mouth',1,109,11),(13,'Other',1,110,12);
/*!40000 ALTER TABLE `vtiger_leadsource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_leadsource_seq`
--

DROP TABLE IF EXISTS `vtiger_leadsource_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_leadsource_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_leadsource_seq`
--

LOCK TABLES `vtiger_leadsource_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_leadsource_seq` DISABLE KEYS */;
INSERT INTO `vtiger_leadsource_seq` VALUES (13);
/*!40000 ALTER TABLE `vtiger_leadsource_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_leadstage`
--

DROP TABLE IF EXISTS `vtiger_leadstage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_leadstage` (
  `leadstageid` int(19) NOT NULL AUTO_INCREMENT,
  `stage` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`leadstageid`),
  UNIQUE KEY `leadstage_stage_idx` (`stage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_leadstage`
--

LOCK TABLES `vtiger_leadstage` WRITE;
/*!40000 ALTER TABLE `vtiger_leadstage` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_leadstage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_leadstatus`
--

DROP TABLE IF EXISTS `vtiger_leadstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_leadstatus` (
  `leadstatusid` int(19) NOT NULL AUTO_INCREMENT,
  `leadstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`leadstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_leadstatus`
--

LOCK TABLES `vtiger_leadstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_leadstatus` DISABLE KEYS */;
INSERT INTO `vtiger_leadstatus` VALUES (2,'Attempted to Contact',1,112,1),(3,'Cold',1,113,2),(4,'Contact in Future',1,114,3),(5,'Contacted',1,115,4),(6,'Hot',1,116,5),(7,'Junk Lead',1,117,6),(8,'Lost Lead',1,118,7),(9,'Not Contacted',1,119,8),(10,'Pre Qualified',1,120,9),(11,'Qualified',1,121,10),(12,'Warm',1,122,11);
/*!40000 ALTER TABLE `vtiger_leadstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_leadstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_leadstatus_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_leadstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_leadstatus_seq`
--

LOCK TABLES `vtiger_leadstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_leadstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_leadstatus_seq` VALUES (12);
/*!40000 ALTER TABLE `vtiger_leadstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_leadsubdetails`
--

DROP TABLE IF EXISTS `vtiger_leadsubdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_leadsubdetails` (
  `leadsubscriptionid` int(19) NOT NULL DEFAULT '0',
  `website` varchar(255) DEFAULT NULL,
  `callornot` int(1) DEFAULT '0',
  `readornot` int(1) DEFAULT '0',
  `empct` int(10) DEFAULT '0',
  PRIMARY KEY (`leadsubscriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_leadsubdetails`
--

LOCK TABLES `vtiger_leadsubdetails` WRITE;
/*!40000 ALTER TABLE `vtiger_leadsubdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_leadsubdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_links`
--

DROP TABLE IF EXISTS `vtiger_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_links` (
  `linkid` int(11) NOT NULL,
  `tabid` int(11) DEFAULT NULL,
  `linktype` varchar(50) DEFAULT NULL,
  `linklabel` varchar(50) DEFAULT NULL,
  `linkurl` varchar(255) DEFAULT NULL,
  `linkicon` varchar(100) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `handler_path` varchar(128) DEFAULT NULL,
  `handler_class` varchar(50) DEFAULT NULL,
  `handler` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`linkid`),
  KEY `link_tabidtype_idx` (`tabid`,`linktype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_links`
--

LOCK TABLES `vtiger_links` WRITE;
/*!40000 ALTER TABLE `vtiger_links` DISABLE KEYS */;
INSERT INTO `vtiger_links` VALUES (1,6,'DETAILVIEWBASIC','LBL_ADD_NOTE','index.php?module=Documents&action=EditView&return_module=$MODULE$&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$','themes/images/bookMark.gif',0,'modules/Documents/Documents.php','Documents','isLinkPermitted'),(2,6,'DETAILVIEWBASIC','LBL_SHOW_ACCOUNT_HIERARCHY','index.php?module=Accounts&action=AccountHierarchy&accountid=$RECORD$','',0,NULL,NULL,NULL),(3,7,'DETAILVIEWBASIC','LBL_ADD_NOTE','index.php?module=Documents&action=EditView&return_module=$MODULE$&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$','themes/images/bookMark.gif',0,'modules/Documents/Documents.php','Documents','isLinkPermitted'),(4,4,'DETAILVIEWBASIC','LBL_ADD_NOTE','index.php?module=Documents&action=EditView&return_module=$MODULE$&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$','themes/images/bookMark.gif',0,'modules/Documents/Documents.php','Documents','isLinkPermitted'),(5,0,'HEADERSCRIPT','Incoming Calls','modules/PBXManager/resources/PBXManagerJS.js','',0,'modules/PBXManager/PBXManager.php','PBXManager','checkLinkPermission'),(9,4,'DETAILVIEWSIDEBARWIDGET','Google Map','module=Google&view=Map&mode=showMap&viewtype=detail','',0,NULL,NULL,NULL),(10,7,'DETAILVIEWSIDEBARWIDGET','Google Map','module=Google&view=Map&mode=showMap&viewtype=detail','',0,NULL,NULL,NULL),(11,6,'DETAILVIEWSIDEBARWIDGET','Google Map','module=Google&view=Map&mode=showMap&viewtype=detail','',0,NULL,NULL,NULL),(12,4,'LISTVIEWSIDEBARWIDGET','Google Contacts','module=Google&view=List&sourcemodule=Contacts','',0,NULL,NULL,NULL),(13,9,'LISTVIEWSIDEBARWIDGET','Google Calendar','module=Google&view=List&sourcemodule=Calendar','',0,NULL,NULL,NULL),(14,45,'HEADERSCRIPT','ModCommentsCommonHeaderScript','modules/ModComments/ModCommentsCommon.js','',0,NULL,NULL,NULL),(15,7,'DETAILVIEWWIDGET','DetailViewBlockCommentWidget','block://ModComments:modules/ModComments/ModComments.php','',0,NULL,NULL,NULL),(16,4,'DETAILVIEWWIDGET','DetailViewBlockCommentWidget','block://ModComments:modules/ModComments/ModComments.php','',0,NULL,NULL,NULL),(17,6,'DETAILVIEWWIDGET','DetailViewBlockCommentWidget','block://ModComments:modules/ModComments/ModComments.php','',0,NULL,NULL,NULL),(18,2,'DETAILVIEWWIDGET','DetailViewBlockCommentWidget','block://ModComments:modules/ModComments/ModComments.php','',0,NULL,NULL,NULL),(21,47,'DETAILVIEWBASIC','LBL_CHECK_STATUS','javascript:SMSNotifier.checkstatus($RECORD$)','themes/images/reload.gif',0,NULL,NULL,NULL),(23,47,'HEADERSCRIPT','SMSNotifierCommonJS','modules/SMSNotifier/SMSNotifierCommon.js','',0,NULL,NULL,NULL),(24,7,'LISTVIEWBASIC','Send SMS','SMSNotifierCommon.displaySelectWizard(this, \'$MODULE$\');','',0,NULL,NULL,NULL),(25,7,'DETAILVIEWBASIC','Send SMS','javascript:SMSNotifierCommon.displaySelectWizard_DetailView(\'$MODULE$\', \'$RECORD$\');','',0,NULL,NULL,NULL),(26,4,'LISTVIEWBASIC','Send SMS','SMSNotifierCommon.displaySelectWizard(this, \'$MODULE$\');','',0,NULL,NULL,NULL),(27,4,'DETAILVIEWBASIC','Send SMS','javascript:SMSNotifierCommon.displaySelectWizard_DetailView(\'$MODULE$\', \'$RECORD$\');','',0,NULL,NULL,NULL),(28,6,'LISTVIEWBASIC','Send SMS','SMSNotifierCommon.displaySelectWizard(this, \'$MODULE$\');','',0,NULL,NULL,NULL),(29,6,'DETAILVIEWBASIC','Send SMS','javascript:SMSNotifierCommon.displaySelectWizard_DetailView(\'$MODULE$\', \'$RECORD$\');','',0,NULL,NULL,NULL),(30,41,'DETAILVIEWBASIC','Add Note','index.php?module=Documents&action=EditView&return_module=ProjectTask&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$','',0,'modules/Documents/Documents.php','Documents','isLinkPermitted'),(31,41,'DETAILVIEWWIDGET','DetailViewBlockCommentWidget','block://ModComments:modules/ModComments/ModComments.php','',0,NULL,NULL,NULL),(32,42,'DETAILVIEWBASIC','Add Project Task','index.php?module=ProjectTask&action=EditView&projectid=$RECORD$&return_module=Project&return_action=DetailView&return_id=$RECORD$','',0,'modules/ProjectTask/ProjectTask.php','ProjectTask','isLinkPermitted'),(33,42,'DETAILVIEWBASIC','Add Note','index.php?module=Documents&action=EditView&return_module=Project&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$','',1,'modules/Documents/Documents.php','Documents','isLinkPermitted'),(34,42,'DETAILVIEWWIDGET','DetailViewBlockCommentWidget','block://ModComments:modules/ModComments/ModComments.php','',0,NULL,NULL,NULL),(35,2,'DASHBOARDWIDGET','History','index.php?module=Potentials&view=ShowWidget&name=History','',1,NULL,NULL,NULL),(36,2,'DASHBOARDWIDGET','Upcoming Activities','index.php?module=Potentials&view=ShowWidget&name=CalendarActivities','',2,NULL,NULL,NULL),(37,2,'DASHBOARDWIDGET','Funnel','index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesStage','',3,NULL,NULL,NULL),(38,2,'DASHBOARDWIDGET','Potentials by Stage','index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesPerson','',4,NULL,NULL,NULL),(39,2,'DASHBOARDWIDGET','Pipelined Amount','index.php?module=Potentials&view=ShowWidget&name=PipelinedAmountPerSalesPerson','',5,NULL,NULL,NULL),(40,2,'DASHBOARDWIDGET','Total Revenue','index.php?module=Potentials&view=ShowWidget&name=TotalRevenuePerSalesPerson','',6,NULL,NULL,NULL),(41,2,'DASHBOARDWIDGET','Top Potentials','index.php?module=Potentials&view=ShowWidget&name=TopPotentials','',7,NULL,NULL,NULL),(42,2,'DASHBOARDWIDGET','Overdue Activities','index.php?module=Potentials&view=ShowWidget&name=OverdueActivities','',9,NULL,NULL,NULL),(43,6,'DASHBOARDWIDGET','History','index.php?module=Accounts&view=ShowWidget&name=History','',1,NULL,NULL,NULL),(44,6,'DASHBOARDWIDGET','Upcoming Activities','index.php?module=Accounts&view=ShowWidget&name=CalendarActivities','',2,NULL,NULL,NULL),(45,6,'DASHBOARDWIDGET','Overdue Activities','index.php?module=Accounts&view=ShowWidget&name=OverdueActivities','',3,NULL,NULL,NULL),(46,4,'DASHBOARDWIDGET','History','index.php?module=Contacts&view=ShowWidget&name=History','',1,NULL,NULL,NULL),(47,4,'DASHBOARDWIDGET','Upcoming Activities','index.php?module=Contacts&view=ShowWidget&name=CalendarActivities','',2,NULL,NULL,NULL),(48,4,'DASHBOARDWIDGET','Overdue Activities','index.php?module=Contacts&view=ShowWidget&name=OverdueActivities','',3,NULL,NULL,NULL),(49,7,'DASHBOARDWIDGET','History','index.php?module=Leads&view=ShowWidget&name=History','',1,NULL,NULL,NULL),(50,7,'DASHBOARDWIDGET','Upcoming Activities','index.php?module=Leads&view=ShowWidget&name=CalendarActivities','',2,NULL,NULL,NULL),(51,7,'DASHBOARDWIDGET','Leads by Status','index.php?module=Leads&view=ShowWidget&name=LeadsByStatus','',4,NULL,NULL,NULL),(52,7,'DASHBOARDWIDGET','Leads by Source','index.php?module=Leads&view=ShowWidget&name=LeadsBySource','',5,NULL,NULL,NULL),(53,7,'DASHBOARDWIDGET','Leads by Industry','index.php?module=Leads&view=ShowWidget&name=LeadsByIndustry','',6,NULL,NULL,NULL),(54,7,'DASHBOARDWIDGET','Overdue Activities','index.php?module=Leads&view=ShowWidget&name=OverdueActivities','',7,NULL,NULL,NULL),(55,13,'DASHBOARDWIDGET','Tickets by Status','index.php?module=HelpDesk&view=ShowWidget&name=TicketsByStatus','',1,NULL,NULL,NULL),(56,13,'DASHBOARDWIDGET','Open Tickets','index.php?module=HelpDesk&view=ShowWidget&name=OpenTickets','',2,NULL,NULL,NULL),(57,3,'DASHBOARDWIDGET','History','index.php?module=Home&view=ShowWidget&name=History','',1,NULL,NULL,NULL),(58,3,'DASHBOARDWIDGET','Upcoming Activities','index.php?module=Home&view=ShowWidget&name=CalendarActivities','',2,NULL,NULL,NULL),(59,3,'DASHBOARDWIDGET','Funnel','index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesStage','',3,NULL,NULL,NULL),(60,3,'DASHBOARDWIDGET','Potentials by Stage','index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesPerson','',4,NULL,NULL,NULL),(61,3,'DASHBOARDWIDGET','Pipelined Amount','index.php?module=Potentials&view=ShowWidget&name=PipelinedAmountPerSalesPerson','',5,NULL,NULL,NULL),(62,3,'DASHBOARDWIDGET','Total Revenue','index.php?module=Potentials&view=ShowWidget&name=TotalRevenuePerSalesPerson','',6,NULL,NULL,NULL),(63,3,'DASHBOARDWIDGET','Top Potentials','index.php?module=Potentials&view=ShowWidget&name=TopPotentials','',7,NULL,NULL,NULL),(64,3,'DASHBOARDWIDGET','Leads by Status','index.php?module=Leads&view=ShowWidget&name=LeadsByStatus','',10,NULL,NULL,NULL),(65,3,'DASHBOARDWIDGET','Leads by Source','index.php?module=Leads&view=ShowWidget&name=LeadsBySource','',11,NULL,NULL,NULL),(66,3,'DASHBOARDWIDGET','Leads by Industry','index.php?module=Leads&view=ShowWidget&name=LeadsByIndustry','',12,NULL,NULL,NULL),(67,3,'DASHBOARDWIDGET','Overdue Activities','index.php?module=Home&view=ShowWidget&name=OverdueActivities','',13,NULL,NULL,NULL),(68,3,'DASHBOARDWIDGET','Tickets by Status','index.php?module=HelpDesk&view=ShowWidget&name=TicketsByStatus','',13,NULL,NULL,NULL),(69,3,'DASHBOARDWIDGET','Open Tickets','index.php?module=HelpDesk&view=ShowWidget&name=OpenTickets','',14,NULL,NULL,NULL),(70,13,'DETAILVIEWWIDGET','DetailViewBlockCommentWidget','block://ModComments:modules/ModComments/ModComments.php','',0,NULL,NULL,NULL),(71,15,'DETAILVIEWWIDGET','DetailViewBlockCommentWidget','block://ModComments:modules/ModComments/ModComments.php','',0,NULL,NULL,NULL),(100,3,'DASHBOARDWIDGET','Key Metrics','index.php?module=Home&view=ShowWidget&name=KeyMetrics','',0,NULL,NULL,NULL),(101,3,'DASHBOARDWIDGET','Mini List','index.php?module=Home&view=ShowWidget&name=MiniList','',0,NULL,NULL,NULL),(102,3,'DASHBOARDWIDGET','Tag Cloud','index.php?module=Home&view=ShowWidget&name=TagCloud','',0,NULL,NULL,NULL),(103,2,'DASHBOARDWIDGET','Funnel Amount','index.php?module=Potentials&view=ShowWidget&name=FunnelAmount','',10,NULL,NULL,NULL),(104,3,'DASHBOARDWIDGET','Funnel Amount','index.php?module=Potentials&view=ShowWidget&name=FunnelAmount','',10,NULL,NULL,NULL),(105,3,'DASHBOARDWIDGET','Notebook','index.php?module=Home&view=ShowWidget&name=Notebook','',0,NULL,NULL,NULL),(106,49,'HEADERSCRIPT','ExtensionStoreCommonHeaderScript','modules/ExtensionStore/ExtensionStore.js','',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `vtiger_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_links_seq`
--

DROP TABLE IF EXISTS `vtiger_links_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_links_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_links_seq`
--

LOCK TABLES `vtiger_links_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_links_seq` DISABLE KEYS */;
INSERT INTO `vtiger_links_seq` VALUES (106);
/*!40000 ALTER TABLE `vtiger_links_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_loginhistory`
--

DROP TABLE IF EXISTS `vtiger_loginhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_loginhistory` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_ip` varchar(25) NOT NULL,
  `logout_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `login_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_loginhistory`
--

LOCK TABLES `vtiger_loginhistory` WRITE;
/*!40000 ALTER TABLE `vtiger_loginhistory` DISABLE KEYS */;
INSERT INTO `vtiger_loginhistory` VALUES (1,'admin','172.24.0.1','2017-03-04 10:31:07','2017-03-04 10:29:55','Signed off'),(2,'admin','172.24.0.1','0000-00-00 00:00:00','2017-03-04 10:31:21','Signed in'),(3,'admin','172.24.0.1','0000-00-00 00:00:00','2017-03-04 12:16:23','Signed in'),(4,'admin','172.24.0.1','2017-03-07 11:47:13','2017-03-04 12:17:06','Signed off'),(5,'agente','172.24.0.1','2017-03-07 11:47:41','2017-03-07 11:47:21','Signed off'),(6,'agente','172.24.0.1','2017-03-07 11:48:23','2017-03-07 11:48:04','Signed off'),(7,'admin','172.24.0.1','2017-03-07 11:57:35','2017-03-07 11:48:35','Signed off'),(8,'tecnico','172.24.0.1','2017-03-07 11:58:13','2017-03-07 11:57:44','Signed off'),(9,'tecnico','172.24.0.1','2017-03-07 11:59:58','2017-03-07 11:58:22','Signed off'),(10,'tec.manager','172.24.0.1','2017-03-07 12:01:09','2017-03-07 12:00:07','Signed off'),(11,'sales.manager','172.24.0.1','2017-03-07 19:20:51','2017-03-07 12:01:19','Signed off'),(12,'tec.manager','172.24.0.1','2017-03-07 12:05:40','2017-03-07 12:03:23','Signed off'),(13,'agente','172.24.0.1','2017-03-07 12:12:38','2017-03-07 12:05:52','Signed off'),(14,'vendite','172.24.0.1','0000-00-00 00:00:00','2017-03-07 12:12:48','Signed in'),(15,'admin','172.24.0.1','2017-03-07 12:40:42','2017-03-07 12:20:09','Signed off'),(16,'tecnico','172.24.0.1','2017-03-07 12:41:07','2017-03-07 12:41:03','Signed off'),(17,'admin','172.24.0.1','0000-00-00 00:00:00','2017-03-07 12:41:59','Signed in'),(18,'admin','172.24.0.1','2017-03-07 17:29:55','2017-03-07 15:19:59','Signed off'),(19,'tecnico','172.24.0.1','2017-03-07 17:30:13','2017-03-07 17:30:04','Signed off'),(20,'tecnico','172.24.0.1','2017-03-07 17:31:26','2017-03-07 17:30:19','Signed off'),(21,'admin','172.24.0.1','0000-00-00 00:00:00','2017-03-07 17:31:31','Signed in'),(22,'admin','172.24.0.1','0000-00-00 00:00:00','2017-03-07 19:08:37','Signed in'),(23,'tecnico','172.24.0.1','0000-00-00 00:00:00','2017-03-07 19:11:06','Signed in'),(24,'eurostaff','172.24.0.1','2017-03-07 19:16:19','2017-03-07 19:14:28','Signed off'),(25,'eurostaff','172.24.0.1','2017-03-07 19:18:42','2017-03-07 19:16:22','Signed off'),(26,'eurostaff','172.24.0.1','2017-03-07 19:18:55','2017-03-07 19:18:48','Signed off'),(27,'admin','172.24.0.1','0000-00-00 00:00:00','2017-03-07 19:19:02','Signed in'),(28,'admin','172.24.0.1','0000-00-00 00:00:00','2017-03-07 19:19:37','Signed in'),(29,'eurostaff','172.24.0.1','2017-03-07 19:20:42','2017-03-07 19:20:38','Signed off'),(30,'admin','172.24.0.1','0000-00-00 00:00:00','2017-03-07 19:20:47','Signed in'),(31,'admin','172.24.0.1','2017-03-07 19:25:43','2017-03-07 19:21:51','Signed off'),(32,'tecnico','172.24.0.1','2017-03-07 19:25:54','2017-03-07 19:25:49','Signed off'),(33,'admin','172.24.0.1','2017-03-07 19:26:05','2017-03-07 19:25:58','Signed off'),(34,'admin','172.24.0.1','2017-03-07 19:28:24','2017-03-07 19:26:09','Signed off'),(35,'tecnico','172.24.0.1','2017-03-07 20:22:17','2017-03-07 19:28:33','Signed off'),(36,'admin','172.24.0.1','0000-00-00 00:00:00','2017-03-07 20:22:21','Signed in');
/*!40000 ALTER TABLE `vtiger_loginhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mail_accounts`
--

DROP TABLE IF EXISTS `vtiger_mail_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_mail_accounts` (
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `mail_id` varchar(50) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `mail_protocol` varchar(20) DEFAULT NULL,
  `mail_username` varchar(50) NOT NULL,
  `mail_password` varchar(250) NOT NULL,
  `mail_servername` varchar(50) DEFAULT NULL,
  `box_refresh` int(10) DEFAULT NULL,
  `mails_per_page` int(10) DEFAULT NULL,
  `ssltype` varchar(50) DEFAULT NULL,
  `sslmeth` varchar(50) DEFAULT NULL,
  `int_mailer` int(1) DEFAULT '0',
  `status` varchar(10) DEFAULT NULL,
  `set_default` int(2) DEFAULT NULL,
  `sent_folder` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_mail_accounts`
--

LOCK TABLES `vtiger_mail_accounts` WRITE;
/*!40000 ALTER TABLE `vtiger_mail_accounts` DISABLE KEYS */;
INSERT INTO `vtiger_mail_accounts` VALUES (1,1,'account.prova@eurobrico.com',NULL,'account.prova@eurobrico.com','IMAP4','account.prova@eurobrico.com','z8_Ozs_Pz87Pz87Oz8_Oz8_Pzs7Pz87Oz8_Ozs_Oz8_Pz87Oz87Pzs_Pzs7Pzs7Pz8_Ozs_Ozs7Pz87Ozs_Pzw..','webmail.eurobrico.com',300000,20,'notls','novalidate-cert',0,'1',0,'');
/*!40000 ALTER TABLE `vtiger_mail_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailer_queue`
--

DROP TABLE IF EXISTS `vtiger_mailer_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_mailer_queue` (
  `id` int(11) NOT NULL,
  `fromname` varchar(100) DEFAULT NULL,
  `fromemail` varchar(100) DEFAULT NULL,
  `mailer` varchar(10) DEFAULT NULL,
  `content_type` varchar(15) DEFAULT NULL,
  `subject` varchar(999) DEFAULT NULL,
  `body` text,
  `relcrmid` int(11) DEFAULT NULL,
  `failed` int(1) NOT NULL DEFAULT '0',
  `failreason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_mailer_queue`
--

LOCK TABLES `vtiger_mailer_queue` WRITE;
/*!40000 ALTER TABLE `vtiger_mailer_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mailer_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailer_queueattachments`
--

DROP TABLE IF EXISTS `vtiger_mailer_queueattachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_mailer_queueattachments` (
  `id` int(11) DEFAULT NULL,
  `path` text,
  `name` varchar(100) DEFAULT NULL,
  `encoding` varchar(50) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_mailer_queueattachments`
--

LOCK TABLES `vtiger_mailer_queueattachments` WRITE;
/*!40000 ALTER TABLE `vtiger_mailer_queueattachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mailer_queueattachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailer_queueinfo`
--

DROP TABLE IF EXISTS `vtiger_mailer_queueinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_mailer_queueinfo` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `type` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_mailer_queueinfo`
--

LOCK TABLES `vtiger_mailer_queueinfo` WRITE;
/*!40000 ALTER TABLE `vtiger_mailer_queueinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mailer_queueinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailmanager_mailattachments`
--

DROP TABLE IF EXISTS `vtiger_mailmanager_mailattachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_mailmanager_mailattachments` (
  `userid` int(11) DEFAULT NULL,
  `muid` int(11) DEFAULT NULL,
  `aname` varchar(100) DEFAULT NULL,
  `lastsavedtime` int(11) DEFAULT NULL,
  `attachid` int(19) NOT NULL,
  `path` varchar(200) NOT NULL,
  `cid` varchar(50) DEFAULT NULL,
  KEY `userid_muid_idx` (`userid`,`muid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_mailmanager_mailattachments`
--

LOCK TABLES `vtiger_mailmanager_mailattachments` WRITE;
/*!40000 ALTER TABLE `vtiger_mailmanager_mailattachments` DISABLE KEYS */;
INSERT INTO `vtiger_mailmanager_mailattachments` VALUES (1,1,'',1488880571,4,'storage/2017/March/week1/','_2_0CFED5480CFED2DC002AB50FC125809C');
/*!40000 ALTER TABLE `vtiger_mailmanager_mailattachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailmanager_mailrecord`
--

DROP TABLE IF EXISTS `vtiger_mailmanager_mailrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_mailmanager_mailrecord` (
  `userid` int(11) DEFAULT NULL,
  `mfrom` varchar(255) DEFAULT NULL,
  `mto` varchar(255) DEFAULT NULL,
  `mcc` varchar(500) DEFAULT NULL,
  `mbcc` varchar(500) DEFAULT NULL,
  `mdate` varchar(20) DEFAULT NULL,
  `msubject` varchar(500) DEFAULT NULL,
  `mbody` text,
  `mcharset` varchar(10) DEFAULT NULL,
  `misbodyhtml` int(1) DEFAULT NULL,
  `mplainmessage` int(1) DEFAULT NULL,
  `mhtmlmessage` int(1) DEFAULT NULL,
  `muniqueid` varchar(500) DEFAULT NULL,
  `mbodyparsed` int(1) DEFAULT NULL,
  `muid` int(11) DEFAULT NULL,
  `lastsavedtime` int(11) DEFAULT NULL,
  KEY `userid_lastsavedtime_idx` (`userid`,`lastsavedtime`),
  KEY `userid_muid_idx` (`userid`,`muid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_mailmanager_mailrecord`
--

LOCK TABLES `vtiger_mailmanager_mailrecord` WRITE;
/*!40000 ALTER TABLE `vtiger_mailmanager_mailrecord` DISABLE KEYS */;
INSERT INTO `vtiger_mailmanager_mailrecord` VALUES (1,'[\"andrea.muraro@eurobrico.com\"]','[\"account.prova@eurobrico.com\"]','[]','[]','1487662460','prova messaggio','\r\n<p>\r\n<hr><font size=1 face=\"sans-serif\"><br>\r\nDICHIARAZIONE DI RESPONSABILITA\' Questo messaggio ed i suoi allegati sono\r\nindirizzati ai destinatari sopra indicati e devono essere considerati confidenziali.\r\nSe il messaggio è stato inviato a questo indirizzo per errore, Le chiediamo\r\ngentilmente di distruggerlo dal momento che qualunque divulgazione, copia,\r\ndistribuzione o uso dei contenuti di questo messaggio sono proibiti. <br>\r\nDISCLAIMER This message and its attachments are addressed to the above\r\nmentioned recipients and have to be considered as confidential. If the\r\nmessage has been mistransmitted to your address, kindly destroy it as any\r\ndisclosure, copy, distribution or use of the contents of this message is\r\nprohibited.</font>\r\n<p>\r\n<p>\r\n<font size=2 color=#000080 face=\"Arial\"><b><i><br>\r\n</i></b></font><font size=2 color=#000061 face=\"Arial\"><b><i>Andrea\r\nMuraro</i></b></font>\r\n<br><font size=2 color=#000061 face=\"Arial\"><i>Information and Communication Technology</i></font>\r\n<br><font size=2 color=#000061 face=\"Arial\"><i>P +39 0461 780474  - Cell. +39 3496540524 -  +39 0461 780200</i></font>\r\n<br><font size=2 color=#000061 face=\"Arial\"><i>F +39 0461 780419  - +39 0461 780300</i></font>\r\n<br><font size=2 color=#000061 face=\"Arial\"><i>mailto: Andrea.Muraro@eurobrico.com\r\n-</i></font><a href=http://www.eurobrico.com/><font size=2 color=#000061 face=\"Arial\"><i>www.eurobrico.com</i></font></a>\r\n<br>\r\n<br><img src=cid:_2_0CFED5480CFED2DC002AB50FC125809C style=\"border:0px solid;\">\r\n<br>\r\n<br><br>','ISO-8859-1',1,0,0,'<OFA1E75C68.FF67C97F-ONC12580CE.0029913C-C12580CE.0029BC75@LocalDomain>',1,1,1488880571),(1,'[\"andrea.dnz@gmail.com\"]','[\"account.prova@eurobrico.com\"]','[]','[]','1488880614','Prova invio','<div dir=\"ltr\">Prova invio</div>\r\n<br><br>','UTF-8',1,0,0,'<CAG6OYR8dg8=6zY1yUOzeJ438Udgx-+EKAyFkG4_u-87j+bXj=Q@mail.gmail.com>',1,3,1488880721),(1,'[\"ale.menapace20@gmail.com\"]','[\"account.prova@eurobrico.com\"]','[]','[]','1488895685','Richiesta preventivo','<div dir=\"ltr\"><div><div><div>Buonasera<br></div>vorrei un preventivo per una cucina<br><br></div>Alessandra Menapace<br></div>tel 339 6708895<br><br></div>\r\n<br><br>','UTF-8',1,0,0,'<CADB9z0mY+ewhFcAyZZSsLA5RFnrMnuA2QDMLU8fk+sNSaBCkPg@mail.gmail.com>',1,4,1488895693),(1,'[\"ciamp.tassullo@gmail.com\"]','[\"account.prova@eurobrico.com\"]','[]','[]','1488896268','Richiesta materiale informativo','<div dir=\"ltr\">Siamo un&#39;associazione che deve ristrutturare la sede<div><br></div><div>Tassullo</div><div>Andrea</div></div>\r\n<br><br>','UTF-8',1,0,0,'<CAG6OYR8BXF0t3iSG9U5_ONmHakOS502rzRY-sBpoECOGUfgSSQ@mail.gmail.com>',1,5,1488896294),(1,'[\"alessandra_menapace@hotmail.com\"]','[\"account.prova@eurobrico.com\"]','[]','[]','1488897208','Appuntamento','<div dir=\"ltr\"><div><div><div>Buongiorno<br></div>chiedo vs disponibilità per discutere costruzione case schiera zona Ravina<br><br></div>tel 787878<br></div>Sig Verdi Luca<br></div>\r\n<br><br>','UTF-8',1,0,0,'<CADB9z0mtaWq_Z5y-5LFajCuEG_JUX+x5Or=Pwyxse5RMZZgwdw@mail.gmail.com>',1,6,1488897280);
/*!40000 ALTER TABLE `vtiger_mailmanager_mailrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailmanager_mailrel`
--

DROP TABLE IF EXISTS `vtiger_mailmanager_mailrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_mailmanager_mailrel` (
  `mailuid` varchar(999) DEFAULT NULL,
  `crmid` int(11) DEFAULT NULL,
  `emailid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_mailmanager_mailrel`
--

LOCK TABLES `vtiger_mailmanager_mailrel` WRITE;
/*!40000 ALTER TABLE `vtiger_mailmanager_mailrel` DISABLE KEYS */;
INSERT INTO `vtiger_mailmanager_mailrel` VALUES ('<CADB9z0mY+ewhFcAyZZSsLA5RFnrMnuA2QDMLU8fk+sNSaBCkPg@mail.gmail.com>',26,27),('<CAG6OYR8BXF0t3iSG9U5_ONmHakOS502rzRY-sBpoECOGUfgSSQ@mail.gmail.com>',30,31),('<CADB9z0mtaWq_Z5y-5LFajCuEG_JUX+x5Or=Pwyxse5RMZZgwdw@mail.gmail.com>',32,33);
/*!40000 ALTER TABLE `vtiger_mailmanager_mailrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailscanner`
--

DROP TABLE IF EXISTS `vtiger_mailscanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_mailscanner` (
  `scannerid` int(11) NOT NULL AUTO_INCREMENT,
  `scannername` varchar(30) DEFAULT NULL,
  `server` varchar(100) DEFAULT NULL,
  `protocol` varchar(10) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ssltype` varchar(10) DEFAULT NULL,
  `sslmethod` varchar(30) DEFAULT NULL,
  `connecturl` varchar(255) DEFAULT NULL,
  `searchfor` varchar(10) DEFAULT NULL,
  `markas` varchar(10) DEFAULT NULL,
  `isvalid` int(1) DEFAULT NULL,
  `time_zone` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`scannerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_mailscanner`
--

LOCK TABLES `vtiger_mailscanner` WRITE;
/*!40000 ALTER TABLE `vtiger_mailscanner` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mailscanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailscanner_actions`
--

DROP TABLE IF EXISTS `vtiger_mailscanner_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_mailscanner_actions` (
  `actionid` int(11) NOT NULL AUTO_INCREMENT,
  `scannerid` int(11) DEFAULT NULL,
  `actiontype` varchar(10) DEFAULT NULL,
  `module` varchar(30) DEFAULT NULL,
  `lookup` varchar(30) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  PRIMARY KEY (`actionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_mailscanner_actions`
--

LOCK TABLES `vtiger_mailscanner_actions` WRITE;
/*!40000 ALTER TABLE `vtiger_mailscanner_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mailscanner_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailscanner_folders`
--

DROP TABLE IF EXISTS `vtiger_mailscanner_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_mailscanner_folders` (
  `folderid` int(11) NOT NULL AUTO_INCREMENT,
  `scannerid` int(11) DEFAULT NULL,
  `foldername` varchar(255) DEFAULT NULL,
  `lastscan` varchar(30) DEFAULT NULL,
  `rescan` int(1) DEFAULT NULL,
  `enabled` int(1) DEFAULT NULL,
  PRIMARY KEY (`folderid`),
  KEY `folderid_idx` (`folderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_mailscanner_folders`
--

LOCK TABLES `vtiger_mailscanner_folders` WRITE;
/*!40000 ALTER TABLE `vtiger_mailscanner_folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mailscanner_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailscanner_ids`
--

DROP TABLE IF EXISTS `vtiger_mailscanner_ids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_mailscanner_ids` (
  `scannerid` int(11) DEFAULT NULL,
  `messageid` varchar(512) DEFAULT NULL,
  `crmid` int(11) DEFAULT NULL,
  KEY `scanner_message_ids_idx` (`scannerid`,`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_mailscanner_ids`
--

LOCK TABLES `vtiger_mailscanner_ids` WRITE;
/*!40000 ALTER TABLE `vtiger_mailscanner_ids` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mailscanner_ids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailscanner_ruleactions`
--

DROP TABLE IF EXISTS `vtiger_mailscanner_ruleactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_mailscanner_ruleactions` (
  `ruleid` int(11) DEFAULT NULL,
  `actionid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_mailscanner_ruleactions`
--

LOCK TABLES `vtiger_mailscanner_ruleactions` WRITE;
/*!40000 ALTER TABLE `vtiger_mailscanner_ruleactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mailscanner_ruleactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mailscanner_rules`
--

DROP TABLE IF EXISTS `vtiger_mailscanner_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_mailscanner_rules` (
  `ruleid` int(11) NOT NULL AUTO_INCREMENT,
  `scannerid` int(11) DEFAULT NULL,
  `fromaddress` varchar(255) DEFAULT NULL,
  `toaddress` varchar(255) DEFAULT NULL,
  `subjectop` varchar(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `bodyop` varchar(20) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `matchusing` varchar(5) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `assigned_to` int(10) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ruleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_mailscanner_rules`
--

LOCK TABLES `vtiger_mailscanner_rules` WRITE;
/*!40000 ALTER TABLE `vtiger_mailscanner_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_mailscanner_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_manufacturer`
--

DROP TABLE IF EXISTS `vtiger_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_manufacturer` (
  `manufacturerid` int(19) NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`manufacturerid`),
  UNIQUE KEY `manufacturer_manufacturer_idx` (`manufacturer`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_manufacturer`
--

LOCK TABLES `vtiger_manufacturer` WRITE;
/*!40000 ALTER TABLE `vtiger_manufacturer` DISABLE KEYS */;
INSERT INTO `vtiger_manufacturer` VALUES (2,'AltvetPet Inc.',1,124,1),(3,'LexPon Inc.',1,125,2),(4,'MetBeat Corp',1,126,3);
/*!40000 ALTER TABLE `vtiger_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_manufacturer_seq`
--

DROP TABLE IF EXISTS `vtiger_manufacturer_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_manufacturer_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_manufacturer_seq`
--

LOCK TABLES `vtiger_manufacturer_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_manufacturer_seq` DISABLE KEYS */;
INSERT INTO `vtiger_manufacturer_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_manufacturer_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_mobile_alerts`
--

DROP TABLE IF EXISTS `vtiger_mobile_alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_mobile_alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handler_path` varchar(500) DEFAULT NULL,
  `handler_class` varchar(50) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_mobile_alerts`
--

LOCK TABLES `vtiger_mobile_alerts` WRITE;
/*!40000 ALTER TABLE `vtiger_mobile_alerts` DISABLE KEYS */;
INSERT INTO `vtiger_mobile_alerts` VALUES (1,'modules/Mobile/api/ws/models/alerts/IdleTicketsOfMine.php','Mobile_WS_AlertModel_IdleTicketsOfMine',NULL,0),(2,'modules/Mobile/api/ws/models/alerts/NewTicketOfMine.php','Mobile_WS_AlertModel_NewTicketOfMine',NULL,0),(3,'modules/Mobile/api/ws/models/alerts/PendingTicketsOfMine.php','Mobile_WS_AlertModel_PendingTicketsOfMine',NULL,0),(4,'modules/Mobile/api/ws/models/alerts/PotentialsDueIn5Days.php','Mobile_WS_AlertModel_PotentialsDueIn5Days',NULL,0),(5,'modules/Mobile/api/ws/models/alerts/EventsOfMineToday.php','Mobile_WS_AlertModel_EventsOfMineToday',NULL,0),(6,'modules/Mobile/api/ws/models/alerts/ProjectTasksOfMine.php','Mobile_WS_AlertModel_ProjectTasksOfMine',NULL,0),(7,'modules/Mobile/api/ws/models/alerts/Projects.php','Mobile_WS_AlertModel_Projects',NULL,0);
/*!40000 ALTER TABLE `vtiger_mobile_alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_modcomments`
--

DROP TABLE IF EXISTS `vtiger_modcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_modcomments` (
  `modcommentsid` int(11) DEFAULT NULL,
  `commentcontent` text,
  `related_to` int(19) DEFAULT NULL,
  `parent_comments` varchar(100) DEFAULT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL,
  `reasontoedit` varchar(100) DEFAULT NULL,
  KEY `relatedto_idx` (`related_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_modcomments`
--

LOCK TABLES `vtiger_modcomments` WRITE;
/*!40000 ALTER TABLE `vtiger_modcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_modcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_modcommentscf`
--

DROP TABLE IF EXISTS `vtiger_modcommentscf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_modcommentscf` (
  `modcommentsid` int(11) NOT NULL,
  PRIMARY KEY (`modcommentsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_modcommentscf`
--

LOCK TABLES `vtiger_modcommentscf` WRITE;
/*!40000 ALTER TABLE `vtiger_modcommentscf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_modcommentscf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_modentity_num`
--

DROP TABLE IF EXISTS `vtiger_modentity_num`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_modentity_num` (
  `num_id` int(19) NOT NULL,
  `semodule` varchar(50) NOT NULL,
  `prefix` varchar(50) NOT NULL DEFAULT '',
  `start_id` varchar(50) NOT NULL,
  `cur_id` varchar(50) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`num_id`),
  UNIQUE KEY `num_idx` (`num_id`),
  KEY `semodule_active_idx` (`semodule`,`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_modentity_num`
--

LOCK TABLES `vtiger_modentity_num` WRITE;
/*!40000 ALTER TABLE `vtiger_modentity_num` DISABLE KEYS */;
INSERT INTO `vtiger_modentity_num` VALUES (1,'Leads','LEA','1','1','1'),(2,'Accounts','ACC','1','7','1'),(3,'Campaigns','CAM','1','1','1'),(4,'Contacts','CON','1','4','1'),(5,'Potentials','POT','1','4','1'),(6,'HelpDesk','TT','1','2','1'),(7,'Quotes','QUO','1','2','1'),(8,'SalesOrder','SO','1','1','1'),(9,'PurchaseOrder','PO','1','1','1'),(10,'Invoice','INV','1','1','1'),(11,'Products','PRO','1','4','1'),(12,'Vendors','VEN','1','1','1'),(13,'PriceBooks','PB','1','1','1'),(14,'Faq','FAQ','1','1','1'),(15,'Documents','DOC','1','1','1'),(16,'Services','SER','1','1','1'),(17,'ServiceContracts','SERCON','1','1','1'),(18,'ProjectMilestone','PM','1','4','1'),(19,'ProjectTask','PT','1','4','1'),(20,'Project','PROJ','1','5','1'),(21,'Assets','ASSET','1','1','1');
/*!40000 ALTER TABLE `vtiger_modentity_num` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_modentity_num_seq`
--

DROP TABLE IF EXISTS `vtiger_modentity_num_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_modentity_num_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_modentity_num_seq`
--

LOCK TABLES `vtiger_modentity_num_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_modentity_num_seq` DISABLE KEYS */;
INSERT INTO `vtiger_modentity_num_seq` VALUES (21);
/*!40000 ALTER TABLE `vtiger_modentity_num_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_modtracker_basic`
--

DROP TABLE IF EXISTS `vtiger_modtracker_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_modtracker_basic` (
  `id` int(20) NOT NULL,
  `crmid` int(20) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `whodid` int(20) DEFAULT NULL,
  `changedon` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `crmidx` (`crmid`),
  KEY `idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_modtracker_basic`
--

LOCK TABLES `vtiger_modtracker_basic` WRITE;
/*!40000 ALTER TABLE `vtiger_modtracker_basic` DISABLE KEYS */;
INSERT INTO `vtiger_modtracker_basic` VALUES (1,2,'Accounts',1,'2017-03-04 12:17:40',2),(2,3,'Emails',1,'2017-03-07 08:46:29',2),(3,5,'Accounts',1,'2017-03-07 10:00:00',2),(4,6,'Contacts',1,'2017-03-07 10:00:36',2),(5,5,'Accounts',1,'2017-03-07 10:00:37',4),(6,2,'Accounts',1,'2017-03-07 10:00:57',1),(7,5,'Accounts',1,'2017-03-07 10:01:11',0),(8,5,'Accounts',1,'2017-03-07 10:01:15',0),(9,7,'Project',1,'2017-03-07 10:02:51',2),(10,5,'Accounts',1,'2017-03-07 10:02:51',4),(11,8,'ProjectMilestone',1,'2017-03-07 10:03:18',2),(12,7,'Project',1,'2017-03-07 10:03:18',4),(13,9,'ProjectMilestone',1,'2017-03-07 10:03:40',2),(14,7,'Project',1,'2017-03-07 10:03:40',4),(15,10,'ProjectMilestone',1,'2017-03-07 10:03:59',2),(16,7,'Project',1,'2017-03-07 10:03:59',4),(17,7,'Project',1,'2017-03-07 10:04:45',0),(18,11,'ProjectTask',1,'2017-03-07 10:10:06',2),(19,7,'Project',1,'2017-03-07 10:10:06',4),(20,12,'ProjectTask',1,'2017-03-07 10:10:38',2),(21,7,'Project',1,'2017-03-07 10:10:39',4),(22,11,'ProjectTask',1,'2017-03-07 10:11:03',0),(23,11,'ProjectTask',1,'2017-03-07 10:11:08',0),(24,11,'ProjectTask',1,'2017-03-07 10:11:17',0),(25,11,'ProjectTask',1,'2017-03-07 10:11:23',0),(26,11,'ProjectTask',1,'2017-03-07 10:11:33',0),(27,12,'ProjectTask',1,'2017-03-07 10:11:57',0),(28,12,'ProjectTask',1,'2017-03-07 10:12:02',0),(29,12,'ProjectTask',1,'2017-03-07 10:12:08',0),(30,12,'ProjectTask',1,'2017-03-07 10:12:12',0),(31,12,'ProjectTask',1,'2017-03-07 10:12:38',0),(32,7,'Project',1,'2017-03-07 10:12:57',0),(33,7,'Project',1,'2017-03-07 10:13:40',0),(34,13,'Accounts',1,'2017-03-07 11:28:25',2),(35,14,'Potentials',1,'2017-03-07 11:29:00',2),(36,15,'Contacts',1,'2017-03-07 11:29:54',2),(37,13,'Accounts',1,'2017-03-07 11:29:54',4),(38,13,'Accounts',1,'2017-03-07 11:46:45',0),(39,5,'Accounts',1,'2017-03-07 11:46:45',0),(40,15,'Contacts',1,'2017-03-07 11:47:02',0),(41,6,'Contacts',1,'2017-03-07 11:47:02',0),(42,14,'Potentials',1,'2017-03-07 11:50:11',0),(43,7,'Project',1,'2017-03-07 11:50:40',0),(44,10,'ProjectMilestone',1,'2017-03-07 11:51:02',0),(45,9,'ProjectMilestone',1,'2017-03-07 11:51:02',0),(46,8,'ProjectMilestone',1,'2017-03-07 11:51:03',0),(47,12,'ProjectTask',1,'2017-03-07 11:51:17',0),(48,11,'ProjectTask',1,'2017-03-07 11:51:17',0),(49,16,'ProjectTask',1,'2017-03-07 11:52:13',2),(50,16,'ProjectTask',1,'2017-03-07 11:56:04',0),(51,12,'ProjectTask',1,'2017-03-07 11:56:24',0),(52,7,'Project',8,'2017-03-07 12:00:44',0),(53,17,'Potentials',13,'2017-03-07 12:06:49',2),(54,5,'Accounts',13,'2017-03-07 12:06:49',4),(55,17,'Potentials',13,'2017-03-07 12:07:04',0),(56,18,'Calendar',13,'2017-03-07 12:07:54',2),(57,17,'Potentials',13,'2017-03-07 12:07:54',4),(58,19,'Events',13,'2017-03-07 12:08:33',2),(59,17,'Potentials',13,'2017-03-07 12:08:33',4),(60,20,'Events',13,'2017-03-07 12:08:33',0),(61,21,'Products',7,'2017-03-07 12:15:40',2),(62,22,'Products',7,'2017-03-07 12:15:48',2),(63,23,'Products',7,'2017-03-07 12:15:57',2),(64,24,'Quotes',7,'2017-03-07 12:16:47',2),(65,17,'Potentials',7,'2017-03-07 12:16:48',4),(66,17,'Potentials',7,'2017-03-07 12:17:11',0),(67,17,'Potentials',7,'2017-03-07 12:17:17',0),(68,25,'Calendar',7,'2017-03-07 12:18:03',2),(69,24,'Quotes',7,'2017-03-07 12:18:03',4),(70,26,'Contacts',1,'2017-03-07 14:10:25',2),(71,27,'Emails',1,'2017-03-07 14:10:25',2),(72,26,'Contacts',1,'2017-03-07 14:11:30',0),(73,28,'Accounts',1,'2017-03-07 14:12:40',2),(74,26,'Contacts',1,'2017-03-07 14:12:46',0),(75,29,'Calendar',1,'2017-03-07 14:19:20',2),(76,30,'Accounts',1,'2017-03-07 14:23:35',2),(77,31,'Emails',1,'2017-03-07 14:23:36',2),(78,30,'Accounts',1,'2017-03-07 14:30:16',0),(79,32,'Accounts',1,'2017-03-07 14:36:05',2),(80,33,'Emails',1,'2017-03-07 14:36:06',2),(81,32,'Accounts',1,'2017-03-07 14:38:49',0),(82,34,'Emails',1,'2017-03-07 14:59:15',2),(83,35,'Project',1,'2017-03-07 18:17:47',2),(84,35,'Project',1,'2017-03-07 18:18:00',1),(85,36,'Project',1,'2017-03-07 18:19:26',2),(86,37,'HelpDesk',1,'2017-03-07 18:28:30',2),(87,38,'Project',1,'2017-03-07 18:39:24',2),(88,38,'Project',1,'2017-03-07 18:40:06',1),(89,36,'Project',1,'2017-03-07 18:40:06',1),(90,39,'Potentials',1,'2017-03-07 18:40:37',2),(91,39,'Potentials',1,'2017-03-07 18:40:48',1),(92,32,'Accounts',1,'2017-03-07 18:43:09',1);
/*!40000 ALTER TABLE `vtiger_modtracker_basic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_modtracker_basic_seq`
--

DROP TABLE IF EXISTS `vtiger_modtracker_basic_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_modtracker_basic_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_modtracker_basic_seq`
--

LOCK TABLES `vtiger_modtracker_basic_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_modtracker_basic_seq` DISABLE KEYS */;
INSERT INTO `vtiger_modtracker_basic_seq` VALUES (92);
/*!40000 ALTER TABLE `vtiger_modtracker_basic_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_modtracker_detail`
--

DROP TABLE IF EXISTS `vtiger_modtracker_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_modtracker_detail` (
  `id` int(11) DEFAULT NULL,
  `fieldname` varchar(100) DEFAULT NULL,
  `prevalue` text,
  `postvalue` text,
  KEY `idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_modtracker_detail`
--

LOCK TABLES `vtiger_modtracker_detail` WRITE;
/*!40000 ALTER TABLE `vtiger_modtracker_detail` DISABLE KEYS */;
INSERT INTO `vtiger_modtracker_detail` VALUES (1,'accountname',NULL,'Prova'),(1,'account_no',NULL,'ACC1'),(1,'annual_revenue',NULL,'0.00000000'),(1,'assigned_user_id',NULL,'1'),(1,'createdtime',NULL,'2017-03-04 12:17:40'),(1,'modifiedby',NULL,'1'),(1,'record_id',NULL,'2'),(1,'record_module',NULL,'Accounts'),(2,'date_start',NULL,'2017-03-07'),(2,'activitytype',NULL,'Emails'),(2,'assigned_user_id',NULL,'1'),(2,'subject',NULL,'Prova localhost'),(2,'description',NULL,'Prova'),(2,'time_start',NULL,'08:46'),(2,'createdtime',NULL,'2017-03-07 08:46:29'),(2,'modifiedby',NULL,'1'),(2,'from_email',NULL,'andrea.dnz@gmail.com'),(2,'saved_toid',NULL,'[&quot;andrea.dnz@gmail.com&quot;]'),(2,'ccmail',NULL,'[&quot;andrea@danzi.tn.it&quot;]'),(2,'bccmail',NULL,'[&quot;&quot;]'),(2,'parent_id',NULL,'1@-1|'),(2,'email_flag',NULL,'SENT'),(2,'record_id',NULL,'3'),(2,'record_module',NULL,'Emails'),(3,'accountname',NULL,'DANZI.TN'),(3,'account_no',NULL,'ACC2'),(3,'phone',NULL,'+39 333 5993234'),(3,'website',NULL,'www.danzi.tn.it'),(3,'email1',NULL,'help@danzi.tn.it'),(3,'rating',NULL,'Active'),(3,'industry',NULL,'Technology'),(3,'annual_revenue',NULL,'0.00000000'),(3,'assigned_user_id',NULL,'1'),(3,'createdtime',NULL,'2017-03-07 10:00:00'),(3,'modifiedby',NULL,'1'),(3,'record_id',NULL,'5'),(3,'record_module',NULL,'Accounts'),(4,'firstname',NULL,'Andrea'),(4,'contact_no',NULL,'CON1'),(4,'phone',NULL,'+39 333 5993234'),(4,'lastname',NULL,'Danzi'),(4,'account_id',NULL,'5'),(4,'email',NULL,'andrea@danzi.tn.it'),(4,'assigned_user_id',NULL,'1'),(4,'createdtime',NULL,'2017-03-07 10:00:36'),(4,'modifiedby',NULL,'1'),(4,'support_start_date',NULL,'2017-03-07'),(4,'support_end_date',NULL,'2018-03-07'),(4,'record_id',NULL,'6'),(4,'record_module',NULL,'Contacts'),(7,'bill_city','','Trento'),(8,'bill_country','','IT'),(9,'projectname',NULL,'Progetto Paterno'),(9,'startdate',NULL,'2017-03-07'),(9,'targetenddate',NULL,'2017-05-31'),(9,'linktoaccountscontacts',NULL,'5'),(9,'assigned_user_id',NULL,'1'),(9,'project_no',NULL,'PROJ1'),(9,'createdtime',NULL,'2017-03-07 10:02:51'),(9,'modifiedby',NULL,'1'),(9,'record_id',NULL,'7'),(9,'record_module',NULL,'Project'),(11,'projectmilestonename',NULL,'Demo'),(11,'projectmilestonedate',NULL,'2017-03-13'),(11,'projectid',NULL,'7'),(11,'assigned_user_id',NULL,'1'),(11,'projectmilestone_no',NULL,'PM1'),(11,'createdtime',NULL,'2017-03-07 10:03:18'),(11,'modifiedby',NULL,'1'),(11,'record_id',NULL,'8'),(11,'record_module',NULL,'ProjectMilestone'),(13,'projectmilestonename',NULL,'Analisi'),(13,'projectmilestonedate',NULL,'2017-04-03'),(13,'projectid',NULL,'7'),(13,'assigned_user_id',NULL,'1'),(13,'projectmilestone_no',NULL,'PM2'),(13,'createdtime',NULL,'2017-03-07 10:03:40'),(13,'modifiedby',NULL,'1'),(13,'record_id',NULL,'9'),(13,'record_module',NULL,'ProjectMilestone'),(15,'projectmilestonename',NULL,'Installazione'),(15,'projectmilestonedate',NULL,'2017-06-30'),(15,'projectid',NULL,'7'),(15,'assigned_user_id',NULL,'1'),(15,'projectmilestone_no',NULL,'PM3'),(15,'createdtime',NULL,'2017-03-07 10:03:59'),(15,'modifiedby',NULL,'1'),(15,'record_id',NULL,'10'),(15,'record_module',NULL,'ProjectMilestone'),(17,'projectstatus','','in progress'),(18,'projecttaskname',NULL,'Predisposizione ambiente Demo'),(18,'projectid',NULL,'7'),(18,'assigned_user_id',NULL,'1'),(18,'projecttask_no',NULL,'PT1'),(18,'startdate',NULL,'2017-02-21'),(18,'createdtime',NULL,'2017-03-07 10:10:06'),(18,'modifiedby',NULL,'1'),(18,'projecttaskstatus',NULL,'In Progress'),(18,'record_id',NULL,'11'),(18,'record_module',NULL,'ProjectTask'),(20,'projecttaskname',NULL,'Predisporre Scenari / Use Case'),(20,'projectid',NULL,'7'),(20,'assigned_user_id',NULL,'1'),(20,'projecttask_no',NULL,'PT2'),(20,'startdate',NULL,'2017-03-07'),(20,'createdtime',NULL,'2017-03-07 10:10:38'),(20,'modifiedby',NULL,'1'),(20,'projecttaskstatus',NULL,'In Progress'),(20,'record_id',NULL,'12'),(20,'record_module',NULL,'ProjectTask'),(22,'projecttaskpriority','','normal'),(23,'projecttasktype','','operative'),(24,'projecttaskprogress','','70%'),(25,'projecttaskhours','','4'),(26,'enddate','','2017-03-13'),(27,'projecttaskpriority','','normal'),(28,'projecttasktype','','operative'),(29,'projecttaskprogress','','30%'),(30,'enddate','','2017-03-13'),(31,'projecttaskpriority','normal','high'),(32,'projecttype','','operative'),(33,'startdate','2017-03-07','2017-02-13'),(34,'accountname',NULL,'SWS Eng'),(34,'account_no',NULL,'ACC3'),(34,'annual_revenue',NULL,'0.00000000'),(34,'assigned_user_id',NULL,'1'),(34,'createdtime',NULL,'2017-03-07 11:28:25'),(34,'modifiedby',NULL,'1'),(34,'record_id',NULL,'13'),(34,'record_module',NULL,'Accounts'),(35,'potentialname',NULL,'Gestione commerciale SWS Engineering'),(35,'potential_no',NULL,'POT1'),(35,'amount',NULL,'0.00000000'),(35,'related_to',NULL,'13'),(35,'closingdate',NULL,'2017-04-13'),(35,'opportunity_type',NULL,'Existing Business'),(35,'leadsource',NULL,'Partner'),(35,'sales_stage',NULL,'Prospecting'),(35,'assigned_user_id',NULL,'1'),(35,'probability',NULL,'0.000'),(35,'createdtime',NULL,'2017-03-07 11:29:00'),(35,'modifiedby',NULL,'1'),(35,'forecast_amount',NULL,'0.00000000'),(35,'record_id',NULL,'14'),(35,'record_module',NULL,'Potentials'),(36,'firstname',NULL,'Paolo'),(36,'contact_no',NULL,'CON2'),(36,'phone',NULL,'0461979000'),(36,'lastname',NULL,'Cucino'),(36,'account_id',NULL,'13'),(36,'assigned_user_id',NULL,'1'),(36,'createdtime',NULL,'2017-03-07 11:29:54'),(36,'modifiedby',NULL,'1'),(36,'support_start_date',NULL,'2017-03-07'),(36,'support_end_date',NULL,'2018-03-07'),(36,'record_id',NULL,'15'),(36,'record_module',NULL,'Contacts'),(38,'assigned_user_id','1','13'),(39,'assigned_user_id','1','13'),(40,'assigned_user_id','1','13'),(41,'assigned_user_id','1','13'),(42,'assigned_user_id','1','9'),(43,'assigned_user_id','1','6'),(44,'assigned_user_id','1','6'),(45,'assigned_user_id','1','6'),(46,'assigned_user_id','1','6'),(47,'assigned_user_id','1','6'),(48,'assigned_user_id','1','6'),(49,'projecttaskname',NULL,'Valutazione commerciale'),(49,'projecttasktype',NULL,'administrative'),(49,'projecttaskpriority',NULL,'high'),(49,'projectid',NULL,'7'),(49,'assigned_user_id',NULL,'2'),(49,'projecttask_no',NULL,'PT3'),(49,'projecttaskprogress',NULL,'20%'),(49,'startdate',NULL,'2017-03-05'),(49,'enddate',NULL,'2017-03-31'),(49,'createdtime',NULL,'2017-03-07 11:52:13'),(49,'modifiedby',NULL,'1'),(49,'projecttaskstatus',NULL,'In Progress'),(49,'record_id',NULL,'16'),(49,'record_module',NULL,'ProjectTask'),(50,'projecttaskhours','','4'),(51,'projecttaskhours','','2'),(52,'assigned_user_id','6','2'),(52,'modifiedby','1','8'),(53,'potentialname',NULL,'Nuova fornitura'),(53,'potential_no',NULL,'POT2'),(53,'amount',NULL,'10000.00000000'),(53,'related_to',NULL,'5'),(53,'closingdate',NULL,'2017-04-30'),(53,'sales_stage',NULL,'Prospecting'),(53,'assigned_user_id',NULL,'13'),(53,'probability',NULL,'0.000'),(53,'createdtime',NULL,'2017-03-07 12:06:49'),(53,'modifiedby',NULL,'13'),(53,'forecast_amount',NULL,'0.00000000'),(53,'record_id',NULL,'17'),(53,'record_module',NULL,'Potentials'),(55,'contact_id','0','6'),(56,'subject',NULL,'Chiamare responsabile tecnico'),(56,'assigned_user_id',NULL,'13'),(56,'date_start',NULL,'2017-03-15'),(56,'time_start',NULL,'12:07:00'),(56,'due_date',NULL,'2017-03-15'),(56,'parent_id',NULL,'17'),(56,'taskstatus',NULL,'Not Started'),(56,'createdtime',NULL,'2017-03-07 12:07:54'),(56,'activitytype',NULL,'Task'),(56,'visibility',NULL,'Private'),(56,'duration_hours',NULL,'-413580'),(56,'duration_minutes',NULL,'-7'),(56,'modifiedby',NULL,'13'),(56,'created_user_id',NULL,'13'),(56,'record_id',NULL,'18'),(56,'record_module',NULL,'Calendar'),(58,'subject',NULL,'Telefonata con resp. acquisti'),(58,'assigned_user_id',NULL,'13'),(58,'date_start',NULL,'2017-03-06'),(58,'time_start',NULL,'12:07:00'),(58,'time_end',NULL,'12:12:00'),(58,'due_date',NULL,'2017-03-06'),(58,'parent_id',NULL,'17'),(58,'eventstatus',NULL,'Held'),(58,'createdtime',NULL,'2017-03-07 12:08:33'),(58,'activitytype',NULL,'Call'),(58,'visibility',NULL,'Public'),(58,'duration_minutes',NULL,'5'),(58,'modifiedby',NULL,'13'),(58,'created_user_id',NULL,'13'),(58,'record_id',NULL,'19'),(58,'record_module',NULL,'Events'),(60,'subject',NULL,'[Followup] Telefonata con resp. acquisti'),(60,'assigned_user_id',NULL,'13'),(60,'date_start',NULL,'2017-03-13'),(60,'time_start',NULL,'12:07:00'),(60,'time_end',NULL,'12:12:00'),(60,'due_date',NULL,'2017-03-13'),(60,'parent_id',NULL,'17'),(60,'eventstatus',NULL,'Planned'),(60,'createdtime',NULL,'2017-03-07 12:08:33'),(60,'activitytype',NULL,'Call'),(60,'visibility',NULL,'Public'),(60,'duration_minutes',NULL,'5'),(60,'modifiedby',NULL,'13'),(60,'created_user_id',NULL,'13'),(60,'record_id',NULL,'20'),(60,'record_module',NULL,'Events'),(61,'productname',NULL,'Prodotto A'),(61,'product_no',NULL,'PRO1'),(61,'discontinued',NULL,'1'),(61,'createdtime',NULL,'2017-03-07 12:15:40'),(61,'modifiedby',NULL,'7'),(61,'unit_price',NULL,'0.00000000'),(61,'commissionrate',NULL,'0.000'),(61,'qty_per_unit',NULL,'0.00'),(61,'qtyinstock',NULL,'0.000'),(61,'assigned_user_id',NULL,'8'),(61,'record_id',NULL,'21'),(61,'record_module',NULL,'Products'),(62,'productname',NULL,'Prodotto B'),(62,'product_no',NULL,'PRO2'),(62,'discontinued',NULL,'1'),(62,'createdtime',NULL,'2017-03-07 12:15:48'),(62,'modifiedby',NULL,'7'),(62,'unit_price',NULL,'0.00000000'),(62,'commissionrate',NULL,'0.000'),(62,'qty_per_unit',NULL,'0.00'),(62,'qtyinstock',NULL,'0.000'),(62,'assigned_user_id',NULL,'8'),(62,'record_id',NULL,'22'),(62,'record_module',NULL,'Products'),(63,'productname',NULL,'Prodotto C'),(63,'product_no',NULL,'PRO3'),(63,'discontinued',NULL,'1'),(63,'createdtime',NULL,'2017-03-07 12:15:57'),(63,'modifiedby',NULL,'7'),(63,'unit_price',NULL,'0.00000000'),(63,'commissionrate',NULL,'0.000'),(63,'qty_per_unit',NULL,'0.00'),(63,'qtyinstock',NULL,'0.000'),(63,'assigned_user_id',NULL,'8'),(63,'record_id',NULL,'23'),(63,'record_module',NULL,'Products'),(64,'quote_no',NULL,'QUO1'),(64,'subject',NULL,'Preventivo ABC'),(64,'potential_id',NULL,'17'),(64,'quotestage',NULL,'Created'),(64,'validtill',NULL,'2017-04-30'),(64,'contact_id',NULL,'6'),(64,'hdnsubtotal',NULL,'10500.00000000'),(64,'assigned_user_id1',NULL,'6'),(64,'txtadjustment',NULL,'0.00000000'),(64,'hdngrandtotal',NULL,'13335.00000000'),(64,'hdntaxtype',NULL,'group'),(64,'hdns_h_amount',NULL,'0.00000000'),(64,'account_id',NULL,'5'),(64,'assigned_user_id',NULL,'7'),(64,'createdtime',NULL,'2017-03-07 12:16:47'),(64,'modifiedby',NULL,'7'),(64,'currency_id',NULL,'1'),(64,'conversion_rate',NULL,'1.000'),(64,'bill_street',NULL,'via lunga'),(64,'ship_street',NULL,'via lunga'),(64,'terms_conditions',NULL,'termini e condizioni'),(64,'productid',NULL,'21'),(64,'quantity',NULL,'1.000'),(64,'listprice',NULL,'2500.00000000'),(64,'tax1',NULL,'4.500'),(64,'tax2',NULL,'10.000'),(64,'tax3',NULL,'12.500'),(64,'pre_tax_total',NULL,'10500.00000000'),(64,'hdns_h_percent',NULL,'27'),(64,'record_id',NULL,'24'),(64,'record_module',NULL,'Quotes'),(66,'potentialname','Nuova fornitura','Nuova fornitura DAZNZI.TN'),(67,'potentialname','Nuova fornitura DAZNZI.TN','Nuova fornitura DANZI.TN'),(68,'subject',NULL,'Sentire cliente per conferma'),(68,'assigned_user_id',NULL,'7'),(68,'date_start',NULL,'2017-03-14'),(68,'time_start',NULL,'12:17:00'),(68,'due_date',NULL,'2017-03-14'),(68,'parent_id',NULL,'24'),(68,'contact_id',NULL,'6'),(68,'taskstatus',NULL,'Not Started'),(68,'taskpriority',NULL,'High'),(68,'createdtime',NULL,'2017-03-07 12:18:03'),(68,'activitytype',NULL,'Task'),(68,'visibility',NULL,'Private'),(68,'duration_hours',NULL,'-413581'),(68,'duration_minutes',NULL,'-17'),(68,'modifiedby',NULL,'7'),(68,'created_user_id',NULL,'7'),(68,'record_id',NULL,'25'),(68,'record_module',NULL,'Calendar'),(70,'firstname',NULL,'Alessandra'),(70,'contact_no',NULL,'CON3'),(70,'phone',NULL,'339 6708895'),(70,'lastname',NULL,'Menapace'),(70,'email',NULL,'ale.menapace20@gmail.com'),(70,'assigned_user_id',NULL,'7'),(70,'createdtime',NULL,'2017-03-07 14:10:25'),(70,'modifiedby',NULL,'1'),(70,'record_id',NULL,'26'),(70,'record_module',NULL,'Contacts'),(71,'date_start',NULL,'2017-03-07'),(71,'parent_type',NULL,'Contacts'),(71,'activitytype',NULL,'Emails'),(71,'assigned_user_id',NULL,'1'),(71,'subject',NULL,'Richiesta preventivo'),(71,'description',NULL,'&lt;div dir=&quot;ltr&quot;&gt;&lt;div&gt;&lt;div&gt;&lt;div&gt;Buonasera&lt;br /&gt;&lt;/div&gt;vorrei un preventivo per una cucina&lt;br /&gt;&lt;br /&gt;&lt;/div&gt;Alessandra Menapace&lt;br /&gt;&lt;/div&gt;tel 339 6708895&lt;br /&gt;&lt;br /&gt;&lt;/div&gt;\r\n&lt;br /&gt;&lt;br /&gt;'),(71,'time_start',NULL,'14:08'),(71,'createdtime',NULL,'2017-03-07 14:10:25'),(71,'modifiedby',NULL,'1'),(71,'from_email',NULL,'ale.menapace20@gmail.com'),(71,'saved_toid',NULL,'[&quot;account.prova@eurobrico.com&quot;]'),(71,'ccmail',NULL,'[&quot;&quot;]'),(71,'bccmail',NULL,'[&quot;&quot;]'),(71,'parent_id',NULL,'26@-1|'),(71,'email_flag',NULL,'MailManager'),(71,'record_id',NULL,'27'),(71,'record_module',NULL,'Emails'),(72,'leadsource','','Direct Mail'),(72,'support_start_date','','2017-03-07'),(72,'support_end_date','','2018-03-07'),(73,'accountname',NULL,'Menapace Alessandra'),(73,'account_no',NULL,'ACC4'),(73,'annual_revenue',NULL,'0.00000000'),(73,'assigned_user_id',NULL,'7'),(73,'createdtime',NULL,'2017-03-07 14:12:40'),(73,'modifiedby',NULL,'1'),(73,'record_id',NULL,'28'),(73,'record_module',NULL,'Accounts'),(74,'salutationtype','','Ms.'),(74,'account_id','0','28'),(75,'subject',NULL,'Richiesta materiale informativo'),(75,'assigned_user_id',NULL,'7'),(75,'date_start',NULL,'2017-03-07'),(75,'time_start',NULL,'14:18:00'),(75,'due_date',NULL,'2017-03-07'),(75,'taskstatus',NULL,'Not Started'),(75,'createdtime',NULL,'2017-03-07 14:19:20'),(75,'activitytype',NULL,'Task'),(75,'visibility',NULL,'Public'),(75,'modifiedby',NULL,'1'),(75,'created_user_id',NULL,'1'),(75,'record_id',NULL,'29'),(75,'record_module',NULL,'Calendar'),(76,'accountname',NULL,'CIAMP'),(76,'account_no',NULL,'ACC5'),(76,'phone',NULL,'04619790023'),(76,'website',NULL,'www.ciamp.com'),(76,'annual_revenue',NULL,'0.00000000'),(76,'assigned_user_id',NULL,'2'),(76,'createdtime',NULL,'2017-03-07 14:23:35'),(76,'modifiedby',NULL,'1'),(76,'record_id',NULL,'30'),(76,'record_module',NULL,'Accounts'),(77,'date_start',NULL,'2017-03-07'),(77,'parent_type',NULL,'Accounts'),(77,'activitytype',NULL,'Emails'),(77,'assigned_user_id',NULL,'1'),(77,'subject',NULL,'Richiesta materiale informativo'),(77,'description',NULL,'&lt;div dir=&quot;ltr&quot;&gt;Siamo un&#039;associazione che deve ristrutturare la sede&lt;div&gt;&lt;br /&gt;&lt;/div&gt;&lt;div&gt;Tassullo&lt;/div&gt;&lt;div&gt;Andrea&lt;/div&gt;&lt;/div&gt;\r\n&lt;br /&gt;&lt;br /&gt;'),(77,'time_start',NULL,'14:17'),(77,'createdtime',NULL,'2017-03-07 14:23:36'),(77,'modifiedby',NULL,'1'),(77,'from_email',NULL,'ciamp.tassullo@gmail.com'),(77,'saved_toid',NULL,'[&quot;account.prova@eurobrico.com&quot;]'),(77,'ccmail',NULL,'[&quot;&quot;]'),(77,'bccmail',NULL,'[&quot;&quot;]'),(77,'parent_id',NULL,'30@-1|'),(77,'email_flag',NULL,'MailManager'),(77,'record_id',NULL,'31'),(77,'record_module',NULL,'Emails'),(78,'notify_owner','0','1'),(79,'accountname',NULL,'Impresa Casa Pi&ugrave;'),(79,'account_no',NULL,'ACC6'),(79,'phone',NULL,'0463787878'),(79,'website',NULL,'www.casapiu.it'),(79,'annual_revenue',NULL,'0.00000000'),(79,'assigned_user_id',NULL,'6'),(79,'createdtime',NULL,'2017-03-07 14:36:05'),(79,'modifiedby',NULL,'1'),(79,'record_id',NULL,'32'),(79,'record_module',NULL,'Accounts'),(80,'date_start',NULL,'2017-03-07'),(80,'parent_type',NULL,'Accounts'),(80,'activitytype',NULL,'Emails'),(80,'assigned_user_id',NULL,'1'),(80,'subject',NULL,'Appuntamento'),(80,'description',NULL,'&lt;div dir=&quot;ltr&quot;&gt;&lt;div&gt;&lt;div&gt;&lt;div&gt;Buongiorno&lt;br /&gt;&lt;/div&gt;chiedo vs disponibilit&agrave; per discutere costruzione case schiera zona Ravina&lt;br /&gt;&lt;br /&gt;&lt;/div&gt;tel 787878&lt;br /&gt;&lt;/div&gt;Sig Verdi Luca&lt;br /&gt;&lt;/div&gt;\r\n&lt;br /&gt;&lt;br /&gt;'),(80,'time_start',NULL,'14:33'),(80,'createdtime',NULL,'2017-03-07 14:36:06'),(80,'modifiedby',NULL,'1'),(80,'from_email',NULL,'alessandra_menapace@hotmail.com'),(80,'saved_toid',NULL,'[&quot;account.prova@eurobrico.com&quot;]'),(80,'ccmail',NULL,'[&quot;&quot;]'),(80,'bccmail',NULL,'[&quot;&quot;]'),(80,'parent_id',NULL,'32@-1|'),(80,'email_flag',NULL,'MailManager'),(80,'record_id',NULL,'33'),(80,'record_module',NULL,'Emails'),(81,'email1','','alessandra_menapace@hotmail.com'),(82,'date_start',NULL,'2017-03-07'),(82,'activitytype',NULL,'Emails'),(82,'assigned_user_id',NULL,'1'),(82,'subject',NULL,'Prova invio da CRM Rotho'),(82,'description',NULL,'Prova invio da CRM Rotho'),(82,'time_start',NULL,'14:59'),(82,'createdtime',NULL,'2017-03-07 14:59:15'),(82,'modifiedby',NULL,'1'),(82,'from_email',NULL,'andrea.dnz@gmail.com'),(82,'saved_toid',NULL,'[&quot;help@danzi.tn.it&quot;]'),(82,'ccmail',NULL,'[&quot;&quot;]'),(82,'bccmail',NULL,'[&quot;&quot;]'),(82,'parent_id',NULL,'5@1|'),(82,'email_flag',NULL,'SENT'),(82,'record_id',NULL,'34'),(82,'record_module',NULL,'Emails'),(83,'projectname',NULL,'Prova da Mail Manager'),(83,'startdate',NULL,'2017-03-08'),(83,'assigned_user_id',NULL,'7'),(83,'project_no',NULL,'PROJ2'),(83,'createdtime',NULL,'2017-03-07 18:17:47'),(83,'modifiedby',NULL,'1'),(83,'record_id',NULL,'35'),(83,'record_module',NULL,'Project'),(85,'projectname',NULL,'Prova da Mail Manager'),(85,'startdate',NULL,'2017-03-07'),(85,'targetenddate',NULL,'2017-04-28'),(85,'assigned_user_id',NULL,'11'),(85,'project_no',NULL,'PROJ3'),(85,'createdtime',NULL,'2017-03-07 18:19:26'),(85,'modifiedby',NULL,'1'),(85,'record_id',NULL,'36'),(85,'record_module',NULL,'Project'),(86,'ticket_no',NULL,'TT1'),(86,'assigned_user_id',NULL,'13'),(86,'parent_id',NULL,'32'),(86,'ticketstatus',NULL,'Open'),(86,'hours',NULL,'0.00000000'),(86,'days',NULL,'0.00000000'),(86,'createdtime',NULL,'2017-03-07 18:28:30'),(86,'modifiedby',NULL,'1'),(86,'ticket_title',NULL,'Appuntamento'),(86,'description',NULL,'Buongiornochiedo vs disponibilit&agrave; per discutere costruzione case schiera zona Ravinatel 787878Sig Verdi Luca\n'),(86,'record_id',NULL,'37'),(86,'record_module',NULL,'HelpDesk'),(87,'projectname',NULL,'Prova da Mail Manager'),(87,'startdate',NULL,'2017-03-14'),(87,'linktoaccountscontacts',NULL,'32'),(87,'assigned_user_id',NULL,'14'),(87,'project_no',NULL,'PROJ4'),(87,'createdtime',NULL,'2017-03-07 18:39:24'),(87,'modifiedby',NULL,'1'),(87,'record_id',NULL,'38'),(87,'record_module',NULL,'Project'),(90,'potentialname',NULL,'Opp da MailManager'),(90,'potential_no',NULL,'POT3'),(90,'amount',NULL,'0.00000000'),(90,'related_to',NULL,'32'),(90,'closingdate',NULL,'2017-03-15'),(90,'sales_stage',NULL,'Prospecting'),(90,'assigned_user_id',NULL,'1'),(90,'probability',NULL,'0.000'),(90,'createdtime',NULL,'2017-03-07 18:40:37'),(90,'modifiedby',NULL,'1'),(90,'forecast_amount',NULL,'0.00000000'),(90,'record_id',NULL,'39'),(90,'record_module',NULL,'Potentials');
/*!40000 ALTER TABLE `vtiger_modtracker_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_modtracker_relations`
--

DROP TABLE IF EXISTS `vtiger_modtracker_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_modtracker_relations` (
  `id` int(19) NOT NULL,
  `targetmodule` varchar(100) NOT NULL,
  `targetid` int(19) NOT NULL,
  `changedon` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_modtracker_relations`
--

LOCK TABLES `vtiger_modtracker_relations` WRITE;
/*!40000 ALTER TABLE `vtiger_modtracker_relations` DISABLE KEYS */;
INSERT INTO `vtiger_modtracker_relations` VALUES (5,'Contacts',6,'2017-03-07 10:00:37'),(10,'Project',7,'2017-03-07 10:02:51'),(12,'ProjectMilestone',8,'2017-03-07 10:03:18'),(14,'ProjectMilestone',9,'2017-03-07 10:03:40'),(16,'ProjectMilestone',10,'2017-03-07 10:03:59'),(19,'ProjectTask',11,'2017-03-07 10:10:06'),(21,'ProjectTask',12,'2017-03-07 10:10:39'),(37,'Contacts',15,'2017-03-07 11:29:54'),(54,'Potentials',17,'2017-03-07 12:06:49'),(57,'Calendar',18,'2017-03-07 12:07:54'),(59,'Calendar',19,'2017-03-07 12:08:33'),(65,'Quotes',24,'2017-03-07 12:16:48'),(69,'Calendar',25,'2017-03-07 12:18:03');
/*!40000 ALTER TABLE `vtiger_modtracker_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_modtracker_tabs`
--

DROP TABLE IF EXISTS `vtiger_modtracker_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_modtracker_tabs` (
  `tabid` int(11) NOT NULL,
  `visible` int(11) DEFAULT '0',
  PRIMARY KEY (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_modtracker_tabs`
--

LOCK TABLES `vtiger_modtracker_tabs` WRITE;
/*!40000 ALTER TABLE `vtiger_modtracker_tabs` DISABLE KEYS */;
INSERT INTO `vtiger_modtracker_tabs` VALUES (2,1),(4,1),(6,1),(7,1),(8,1),(9,1),(10,1),(13,1),(14,1),(15,1),(16,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(26,1),(28,1),(33,1),(34,1),(36,1),(40,1),(41,1),(42,1),(43,1),(45,1),(47,1);
/*!40000 ALTER TABLE `vtiger_modtracker_tabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_module_dashboard_widgets`
--

DROP TABLE IF EXISTS `vtiger_module_dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_module_dashboard_widgets` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `linkid` int(19) DEFAULT NULL,
  `userid` int(19) DEFAULT NULL,
  `filterid` int(19) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `data` text,
  `position` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_module_dashboard_widgets`
--

LOCK TABLES `vtiger_module_dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `vtiger_module_dashboard_widgets` DISABLE KEYS */;
INSERT INTO `vtiger_module_dashboard_widgets` VALUES (1,60,9,0,'0','false',NULL),(3,58,9,0,'0','false',NULL),(4,58,8,0,'0','false','{\"row\":\"1\",\"col\":\"2\"}'),(5,68,8,0,'0','false','{\"row\":\"1\",\"col\":\"6\"}'),(6,101,8,48,'0','{\"module\":\"ProjectTask\",\"fields\":[\"projecttaskname\",\"projectid\"]}','{\"row\":\"1\",\"col\":\"10\"}'),(7,58,13,0,'0','false','{\"row\":\"1\",\"col\":\"1\"}'),(8,60,13,0,'0','false','{\"row\":\"1\",\"col\":\"5\"}'),(9,101,13,48,'0','{\"module\":\"ProjectTask\",\"fields\":[\"projecttaskname\",\"projectid\"]}',NULL),(10,105,13,0,'Verificare','{\"contents\":\"Requisiti per offerta\\nLayout\",\"lastSavedOn\":\"2017-03-07 12:11:01\"}','{\"row\":\"2\",\"col\":\"1\"}'),(13,58,7,0,'0','false','{\"row\":\"1\",\"col\":\"1\"}'),(14,60,7,0,'0','false','{\"row\":\"1\",\"col\":\"5\"}'),(15,101,7,16,'0','{\"module\":\"Quotes\",\"fields\":[\"subject\",\"potential_id\"]}','{\"row\":\"1\",\"col\":\"11\"}'),(16,43,6,0,'0','false',NULL);
/*!40000 ALTER TABLE `vtiger_module_dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_no_of_currency_decimals`
--

DROP TABLE IF EXISTS `vtiger_no_of_currency_decimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_no_of_currency_decimals` (
  `no_of_currency_decimalsid` int(11) NOT NULL AUTO_INCREMENT,
  `no_of_currency_decimals` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`no_of_currency_decimalsid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_no_of_currency_decimals`
--

LOCK TABLES `vtiger_no_of_currency_decimals` WRITE;
/*!40000 ALTER TABLE `vtiger_no_of_currency_decimals` DISABLE KEYS */;
INSERT INTO `vtiger_no_of_currency_decimals` VALUES (2,'2',2,1),(3,'3',3,1),(4,'4',4,1),(5,'5',5,1),(6,'0',0,1),(7,'1',1,1);
/*!40000 ALTER TABLE `vtiger_no_of_currency_decimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_no_of_currency_decimals_seq`
--

DROP TABLE IF EXISTS `vtiger_no_of_currency_decimals_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_no_of_currency_decimals_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_no_of_currency_decimals_seq`
--

LOCK TABLES `vtiger_no_of_currency_decimals_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_no_of_currency_decimals_seq` DISABLE KEYS */;
INSERT INTO `vtiger_no_of_currency_decimals_seq` VALUES (7);
/*!40000 ALTER TABLE `vtiger_no_of_currency_decimals_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_notebook_contents`
--

DROP TABLE IF EXISTS `vtiger_notebook_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_notebook_contents` (
  `userid` int(19) NOT NULL,
  `notebookid` int(19) NOT NULL,
  `contents` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_notebook_contents`
--

LOCK TABLES `vtiger_notebook_contents` WRITE;
/*!40000 ALTER TABLE `vtiger_notebook_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_notebook_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_notes`
--

DROP TABLE IF EXISTS `vtiger_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_notes` (
  `notesid` int(19) NOT NULL DEFAULT '0',
  `note_no` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `notecontent` text,
  `folderid` int(19) NOT NULL DEFAULT '1',
  `filetype` varchar(50) DEFAULT NULL,
  `filelocationtype` varchar(5) DEFAULT NULL,
  `filedownloadcount` int(19) DEFAULT NULL,
  `filestatus` int(19) DEFAULT NULL,
  `filesize` int(19) NOT NULL DEFAULT '0',
  `fileversion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`notesid`),
  KEY `notes_title_idx` (`title`),
  KEY `notes_notesid_idx` (`notesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_notes`
--

LOCK TABLES `vtiger_notes` WRITE;
/*!40000 ALTER TABLE `vtiger_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_notescf`
--

DROP TABLE IF EXISTS `vtiger_notescf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_notescf` (
  `notesid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`notesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_notescf`
--

LOCK TABLES `vtiger_notescf` WRITE;
/*!40000 ALTER TABLE `vtiger_notescf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_notescf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_notificationscheduler`
--

DROP TABLE IF EXISTS `vtiger_notificationscheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_notificationscheduler` (
  `schedulednotificationid` int(19) NOT NULL AUTO_INCREMENT,
  `schedulednotificationname` varchar(200) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `notificationsubject` varchar(200) DEFAULT NULL,
  `notificationbody` text,
  `label` varchar(50) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`schedulednotificationid`),
  UNIQUE KEY `notificationscheduler_schedulednotificationname_idx` (`schedulednotificationname`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_notificationscheduler`
--

LOCK TABLES `vtiger_notificationscheduler` WRITE;
/*!40000 ALTER TABLE `vtiger_notificationscheduler` DISABLE KEYS */;
INSERT INTO `vtiger_notificationscheduler` VALUES (1,'LBL_TASK_NOTIFICATION_DESCRITPION',1,'Task Delay Notification','Tasks delayed beyond 24 hrs ','LBL_TASK_NOTIFICATION',NULL),(2,'LBL_BIG_DEAL_DESCRIPTION',1,'Big Deal notification','Success! A big deal has been won! ','LBL_BIG_DEAL',NULL),(3,'LBL_TICKETS_DESCRIPTION',1,'Pending Tickets notification','Ticket pending please ','LBL_PENDING_TICKETS',NULL),(4,'LBL_MANY_TICKETS_DESCRIPTION',1,'Too many tickets Notification','Too many tickets pending against this entity ','LBL_MANY_TICKETS',NULL),(5,'LBL_START_DESCRIPTION',1,'Support Start Notification','10','LBL_START_NOTIFICATION','select'),(6,'LBL_SUPPORT_DESCRIPTION',1,'Support ending please','11','LBL_SUPPORT_NOTICIATION','select'),(7,'LBL_SUPPORT_DESCRIPTION_MONTH',1,'Support ending please','12','LBL_SUPPORT_NOTICIATION_MONTH','select'),(8,'LBL_ACTIVITY_REMINDER_DESCRIPTION',1,'Activity Reminder Notification','This is a reminder notification for the Activity','LBL_ACTIVITY_NOTIFICATION',NULL);
/*!40000 ALTER TABLE `vtiger_notificationscheduler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_notificationscheduler_seq`
--

DROP TABLE IF EXISTS `vtiger_notificationscheduler_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_notificationscheduler_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_notificationscheduler_seq`
--

LOCK TABLES `vtiger_notificationscheduler_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_notificationscheduler_seq` DISABLE KEYS */;
INSERT INTO `vtiger_notificationscheduler_seq` VALUES (8);
/*!40000 ALTER TABLE `vtiger_notificationscheduler_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_opportunity_type`
--

DROP TABLE IF EXISTS `vtiger_opportunity_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_opportunity_type` (
  `opptypeid` int(19) NOT NULL AUTO_INCREMENT,
  `opportunity_type` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`opptypeid`),
  UNIQUE KEY `opportunity_type_opportunity_type_idx` (`opportunity_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_opportunity_type`
--

LOCK TABLES `vtiger_opportunity_type` WRITE;
/*!40000 ALTER TABLE `vtiger_opportunity_type` DISABLE KEYS */;
INSERT INTO `vtiger_opportunity_type` VALUES (2,'Existing Business',1,128,1),(3,'New Business',1,129,2);
/*!40000 ALTER TABLE `vtiger_opportunity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_opportunity_type_seq`
--

DROP TABLE IF EXISTS `vtiger_opportunity_type_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_opportunity_type_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_opportunity_type_seq`
--

LOCK TABLES `vtiger_opportunity_type_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_opportunity_type_seq` DISABLE KEYS */;
INSERT INTO `vtiger_opportunity_type_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_opportunity_type_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_opportunitystage`
--

DROP TABLE IF EXISTS `vtiger_opportunitystage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_opportunitystage` (
  `potstageid` int(19) NOT NULL AUTO_INCREMENT,
  `stage` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  `probability` decimal(3,2) DEFAULT '0.00',
  PRIMARY KEY (`potstageid`),
  UNIQUE KEY `opportunitystage_stage_idx` (`stage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_opportunitystage`
--

LOCK TABLES `vtiger_opportunitystage` WRITE;
/*!40000 ALTER TABLE `vtiger_opportunitystage` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_opportunitystage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_org_share_action2tab`
--

DROP TABLE IF EXISTS `vtiger_org_share_action2tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_org_share_action2tab` (
  `share_action_id` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  PRIMARY KEY (`share_action_id`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_org_share_action2tab`
--

LOCK TABLES `vtiger_org_share_action2tab` WRITE;
/*!40000 ALTER TABLE `vtiger_org_share_action2tab` DISABLE KEYS */;
INSERT INTO `vtiger_org_share_action2tab` VALUES (0,2),(0,4),(0,6),(0,7),(0,8),(0,9),(0,10),(0,13),(0,14),(0,16),(0,18),(0,20),(0,21),(0,22),(0,23),(0,26),(0,33),(0,34),(0,36),(0,40),(0,41),(0,42),(0,43),(0,45),(0,47),(1,2),(1,4),(1,6),(1,7),(1,8),(1,9),(1,10),(1,13),(1,14),(1,16),(1,18),(1,20),(1,21),(1,22),(1,23),(1,26),(1,33),(1,34),(1,36),(1,40),(1,41),(1,42),(1,43),(1,45),(1,47),(2,2),(2,4),(2,6),(2,7),(2,8),(2,9),(2,10),(2,13),(2,14),(2,16),(2,18),(2,20),(2,21),(2,22),(2,23),(2,26),(2,33),(2,34),(2,36),(2,40),(2,41),(2,42),(2,43),(2,45),(2,47),(3,2),(3,4),(3,6),(3,7),(3,8),(3,9),(3,10),(3,13),(3,14),(3,16),(3,18),(3,20),(3,21),(3,22),(3,23),(3,26),(3,33),(3,34),(3,36),(3,40),(3,41),(3,42),(3,43),(3,45),(3,47);
/*!40000 ALTER TABLE `vtiger_org_share_action2tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_org_share_action_mapping`
--

DROP TABLE IF EXISTS `vtiger_org_share_action_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_org_share_action_mapping` (
  `share_action_id` int(19) NOT NULL,
  `share_action_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`share_action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_org_share_action_mapping`
--

LOCK TABLES `vtiger_org_share_action_mapping` WRITE;
/*!40000 ALTER TABLE `vtiger_org_share_action_mapping` DISABLE KEYS */;
INSERT INTO `vtiger_org_share_action_mapping` VALUES (0,'Public: Read Only'),(1,'Public: Read, Create/Edit'),(2,'Public: Read, Create/Edit, Delete'),(3,'Private'),(4,'Hide Details'),(5,'Hide Details and Add Events'),(6,'Show Details'),(7,'Show Details and Add Events');
/*!40000 ALTER TABLE `vtiger_org_share_action_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_organizationdetails`
--

DROP TABLE IF EXISTS `vtiger_organizationdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_organizationdetails` (
  `organization_id` int(11) NOT NULL,
  `organizationname` varchar(60) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `logoname` varchar(50) DEFAULT NULL,
  `logo` text,
  `vatid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_organizationdetails`
--

LOCK TABLES `vtiger_organizationdetails` WRITE;
/*!40000 ALTER TABLE `vtiger_organizationdetails` DISABLE KEYS */;
INSERT INTO `vtiger_organizationdetails` VALUES (1,'CRM plus Spa','via di Campo 65/Q','Trento','TN','Italy','38012','+390461879000','+390461879001','www.crmplus.com','vtiger-crm-logo.png',NULL,'1234-5678-9012');
/*!40000 ALTER TABLE `vtiger_organizationdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_organizationdetails_seq`
--

DROP TABLE IF EXISTS `vtiger_organizationdetails_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_organizationdetails_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_organizationdetails_seq`
--

LOCK TABLES `vtiger_organizationdetails_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_organizationdetails_seq` DISABLE KEYS */;
INSERT INTO `vtiger_organizationdetails_seq` VALUES (1);
/*!40000 ALTER TABLE `vtiger_organizationdetails_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_othereventduration`
--

DROP TABLE IF EXISTS `vtiger_othereventduration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_othereventduration` (
  `othereventdurationid` int(11) NOT NULL AUTO_INCREMENT,
  `othereventduration` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`othereventdurationid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_othereventduration`
--

LOCK TABLES `vtiger_othereventduration` WRITE;
/*!40000 ALTER TABLE `vtiger_othereventduration` DISABLE KEYS */;
INSERT INTO `vtiger_othereventduration` VALUES (1,'5',1,1),(2,'10',2,1),(3,'30',3,1),(4,'60',4,1),(5,'120',5,1);
/*!40000 ALTER TABLE `vtiger_othereventduration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_othereventduration_seq`
--

DROP TABLE IF EXISTS `vtiger_othereventduration_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_othereventduration_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_othereventduration_seq`
--

LOCK TABLES `vtiger_othereventduration_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_othereventduration_seq` DISABLE KEYS */;
INSERT INTO `vtiger_othereventduration_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_othereventduration_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_parenttab`
--

DROP TABLE IF EXISTS `vtiger_parenttab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_parenttab` (
  `parenttabid` int(19) NOT NULL,
  `parenttab_label` varchar(100) NOT NULL,
  `sequence` int(10) NOT NULL,
  `visible` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`parenttabid`),
  KEY `parenttab_parenttabid_parenttabl_label_visible_idx` (`parenttabid`,`parenttab_label`,`visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_parenttab`
--

LOCK TABLES `vtiger_parenttab` WRITE;
/*!40000 ALTER TABLE `vtiger_parenttab` DISABLE KEYS */;
INSERT INTO `vtiger_parenttab` VALUES (1,'My Home Page',1,0),(2,'Marketing',2,0),(3,'Sales',3,0),(4,'Support',4,0),(5,'Analytics',5,0),(6,'Inventory',6,0),(7,'Tools',7,0),(8,'Settings',8,0);
/*!40000 ALTER TABLE `vtiger_parenttab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_parenttabrel`
--

DROP TABLE IF EXISTS `vtiger_parenttabrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_parenttabrel` (
  `parenttabid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `sequence` int(3) NOT NULL,
  KEY `parenttabrel_tabid_parenttabid_idx` (`tabid`,`parenttabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_parenttabrel`
--

LOCK TABLES `vtiger_parenttabrel` WRITE;
/*!40000 ALTER TABLE `vtiger_parenttabrel` DISABLE KEYS */;
INSERT INTO `vtiger_parenttabrel` VALUES (1,9,2),(1,28,4),(1,3,1),(3,7,1),(3,6,2),(3,4,3),(3,2,4),(3,20,5),(3,22,6),(3,23,7),(3,19,8),(3,8,9),(4,13,1),(4,15,2),(4,6,3),(4,4,4),(4,8,5),(5,1,2),(5,25,1),(6,14,1),(6,18,2),(6,19,3),(6,21,4),(6,22,5),(6,20,6),(6,23,7),(7,24,1),(7,27,2),(7,8,3),(2,26,1),(2,6,2),(2,4,3),(2,28,4),(4,28,7),(2,7,5),(2,9,6),(4,9,8),(2,8,8),(3,9,11),(7,30,4),(7,30,5),(7,33,6),(7,33,7),(6,34,8),(6,34,9),(4,36,9),(4,36,10),(7,38,8),(7,38,9),(4,40,11),(4,40,12),(4,41,13),(4,41,14),(4,42,15),(4,42,16),(6,43,10),(6,43,11),(7,45,10),(7,45,11),(7,47,12),(7,47,13),(7,48,14),(7,48,15),(8,49,1),(8,49,2);
/*!40000 ALTER TABLE `vtiger_parenttabrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_payment_duration`
--

DROP TABLE IF EXISTS `vtiger_payment_duration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_payment_duration` (
  `payment_duration_id` int(11) DEFAULT NULL,
  `payment_duration` varchar(200) DEFAULT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_payment_duration`
--

LOCK TABLES `vtiger_payment_duration` WRITE;
/*!40000 ALTER TABLE `vtiger_payment_duration` DISABLE KEYS */;
INSERT INTO `vtiger_payment_duration` VALUES (1,'Net 30 days',0,1),(2,'Net 45 days',1,1),(3,'Net 60 days',2,1);
/*!40000 ALTER TABLE `vtiger_payment_duration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_payment_duration_seq`
--

DROP TABLE IF EXISTS `vtiger_payment_duration_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_payment_duration_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_payment_duration_seq`
--

LOCK TABLES `vtiger_payment_duration_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_payment_duration_seq` DISABLE KEYS */;
INSERT INTO `vtiger_payment_duration_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_payment_duration_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_pbxmanager`
--

DROP TABLE IF EXISTS `vtiger_pbxmanager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_pbxmanager` (
  `pbxmanagerid` int(20) NOT NULL AUTO_INCREMENT,
  `direction` varchar(10) DEFAULT NULL,
  `callstatus` varchar(20) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `totalduration` int(11) DEFAULT NULL,
  `billduration` int(11) DEFAULT NULL,
  `recordingurl` varchar(200) DEFAULT NULL,
  `sourceuuid` varchar(100) DEFAULT NULL,
  `gateway` varchar(20) DEFAULT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `customernumber` varchar(100) DEFAULT NULL,
  `customertype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pbxmanagerid`),
  KEY `index_sourceuuid` (`sourceuuid`),
  KEY `index_pbxmanager_id` (`pbxmanagerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_pbxmanager`
--

LOCK TABLES `vtiger_pbxmanager` WRITE;
/*!40000 ALTER TABLE `vtiger_pbxmanager` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_pbxmanager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_pbxmanager_gateway`
--

DROP TABLE IF EXISTS `vtiger_pbxmanager_gateway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_pbxmanager_gateway` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway` varchar(20) DEFAULT NULL,
  `parameters` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_pbxmanager_gateway`
--

LOCK TABLES `vtiger_pbxmanager_gateway` WRITE;
/*!40000 ALTER TABLE `vtiger_pbxmanager_gateway` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_pbxmanager_gateway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_pbxmanager_phonelookup`
--

DROP TABLE IF EXISTS `vtiger_pbxmanager_phonelookup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_pbxmanager_phonelookup` (
  `crmid` int(20) DEFAULT NULL,
  `setype` varchar(30) DEFAULT NULL,
  `fnumber` varchar(100) DEFAULT NULL,
  `rnumber` varchar(100) DEFAULT NULL,
  `fieldname` varchar(50) DEFAULT NULL,
  UNIQUE KEY `unique_key` (`crmid`,`setype`,`fieldname`),
  KEY `index_phone_number` (`fnumber`,`rnumber`),
  CONSTRAINT `vtiger_pbxmanager_phonelookup_ibfk_1` FOREIGN KEY (`crmid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_pbxmanager_phonelookup`
--

LOCK TABLES `vtiger_pbxmanager_phonelookup` WRITE;
/*!40000 ALTER TABLE `vtiger_pbxmanager_phonelookup` DISABLE KEYS */;
INSERT INTO `vtiger_pbxmanager_phonelookup` VALUES (5,'Accounts','393335993234','432399533393','phone'),(6,'Contacts','393335993234','432399533393','phone'),(15,'Contacts','0461979000','0009791640','phone'),(26,'Contacts','3396708895','5988076933','phone'),(30,'Accounts','04619790023','32009791640','phone');
/*!40000 ALTER TABLE `vtiger_pbxmanager_phonelookup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_pbxmanagercf`
--

DROP TABLE IF EXISTS `vtiger_pbxmanagercf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_pbxmanagercf` (
  `pbxmanagerid` int(11) NOT NULL,
  PRIMARY KEY (`pbxmanagerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_pbxmanagercf`
--

LOCK TABLES `vtiger_pbxmanagercf` WRITE;
/*!40000 ALTER TABLE `vtiger_pbxmanagercf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_pbxmanagercf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_picklist`
--

DROP TABLE IF EXISTS `vtiger_picklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_picklist` (
  `picklistid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`picklistid`),
  UNIQUE KEY `picklist_name_idx` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_picklist`
--

LOCK TABLES `vtiger_picklist` WRITE;
/*!40000 ALTER TABLE `vtiger_picklist` DISABLE KEYS */;
INSERT INTO `vtiger_picklist` VALUES (1,'accounttype'),(2,'activitytype'),(45,'assetstatus'),(3,'campaignstatus'),(4,'campaigntype'),(5,'carrier'),(35,'contract_priority'),(34,'contract_status'),(36,'contract_type'),(48,'defaultactivitytype'),(47,'defaulteventstatus'),(6,'eventstatus'),(7,'expectedresponse'),(8,'faqcategories'),(9,'faqstatus'),(10,'glacct'),(11,'industry'),(12,'invoicestatus'),(13,'leadsource'),(14,'leadstatus'),(15,'manufacturer'),(16,'opportunity_type'),(17,'postatus'),(18,'productcategory'),(44,'progress'),(37,'projectmilestonetype'),(43,'projectpriority'),(41,'projectstatus'),(39,'projecttaskpriority'),(40,'projecttaskprogress'),(46,'projecttaskstatus'),(38,'projecttasktype'),(42,'projecttype'),(19,'quotestage'),(20,'rating'),(21,'sales_stage'),(22,'salutationtype'),(32,'servicecategory'),(31,'service_usageunit'),(23,'sostatus'),(24,'taskpriority'),(25,'taskstatus'),(26,'ticketcategories'),(27,'ticketpriorities'),(28,'ticketseverities'),(29,'ticketstatus'),(33,'tracking_unit'),(30,'usageunit');
/*!40000 ALTER TABLE `vtiger_picklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_picklist_dependency`
--

DROP TABLE IF EXISTS `vtiger_picklist_dependency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_picklist_dependency` (
  `id` int(11) NOT NULL,
  `tabid` int(19) NOT NULL,
  `sourcefield` varchar(255) DEFAULT NULL,
  `targetfield` varchar(255) DEFAULT NULL,
  `sourcevalue` varchar(100) DEFAULT NULL,
  `targetvalues` text,
  `criteria` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_picklist_dependency`
--

LOCK TABLES `vtiger_picklist_dependency` WRITE;
/*!40000 ALTER TABLE `vtiger_picklist_dependency` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_picklist_dependency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_picklist_seq`
--

DROP TABLE IF EXISTS `vtiger_picklist_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_picklist_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_picklist_seq`
--

LOCK TABLES `vtiger_picklist_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_picklist_seq` DISABLE KEYS */;
INSERT INTO `vtiger_picklist_seq` VALUES (48);
/*!40000 ALTER TABLE `vtiger_picklist_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_picklistvalues_seq`
--

DROP TABLE IF EXISTS `vtiger_picklistvalues_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_picklistvalues_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_picklistvalues_seq`
--

LOCK TABLES `vtiger_picklistvalues_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_picklistvalues_seq` DISABLE KEYS */;
INSERT INTO `vtiger_picklistvalues_seq` VALUES (302);
/*!40000 ALTER TABLE `vtiger_picklistvalues_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_pobillads`
--

DROP TABLE IF EXISTS `vtiger_pobillads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_pobillads` (
  `pobilladdressid` int(19) NOT NULL DEFAULT '0',
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pobilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_pobillads`
--

LOCK TABLES `vtiger_pobillads` WRITE;
/*!40000 ALTER TABLE `vtiger_pobillads` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_pobillads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_portal`
--

DROP TABLE IF EXISTS `vtiger_portal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_portal` (
  `portalid` int(19) NOT NULL,
  `portalname` varchar(200) NOT NULL,
  `portalurl` varchar(255) NOT NULL,
  `sequence` int(3) NOT NULL,
  `setdefault` int(3) NOT NULL DEFAULT '0',
  `createdtime` datetime DEFAULT NULL,
  PRIMARY KEY (`portalid`),
  KEY `portal_portalname_idx` (`portalname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_portal`
--

LOCK TABLES `vtiger_portal` WRITE;
/*!40000 ALTER TABLE `vtiger_portal` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_portal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_portalinfo`
--

DROP TABLE IF EXISTS `vtiger_portalinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_portalinfo` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `cryptmode` varchar(20) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `isactive` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_portalinfo`
--

LOCK TABLES `vtiger_portalinfo` WRITE;
/*!40000 ALTER TABLE `vtiger_portalinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_portalinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_poshipads`
--

DROP TABLE IF EXISTS `vtiger_poshipads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_poshipads` (
  `poshipaddressid` int(19) NOT NULL DEFAULT '0',
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`poshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_poshipads`
--

LOCK TABLES `vtiger_poshipads` WRITE;
/*!40000 ALTER TABLE `vtiger_poshipads` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_poshipads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_postatus`
--

DROP TABLE IF EXISTS `vtiger_postatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_postatus` (
  `postatusid` int(19) NOT NULL AUTO_INCREMENT,
  `postatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`postatusid`),
  UNIQUE KEY `postatus_postatus_idx` (`postatus`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_postatus`
--

LOCK TABLES `vtiger_postatus` WRITE;
/*!40000 ALTER TABLE `vtiger_postatus` DISABLE KEYS */;
INSERT INTO `vtiger_postatus` VALUES (1,'Created',0,130,0),(2,'Approved',0,131,1),(3,'Delivered',0,132,2),(4,'Cancelled',0,133,3),(5,'Received Shipment',0,134,4);
/*!40000 ALTER TABLE `vtiger_postatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_postatus_seq`
--

DROP TABLE IF EXISTS `vtiger_postatus_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_postatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_postatus_seq`
--

LOCK TABLES `vtiger_postatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_postatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_postatus_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_postatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_postatushistory`
--

DROP TABLE IF EXISTS `vtiger_postatushistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_postatushistory` (
  `historyid` int(19) NOT NULL AUTO_INCREMENT,
  `purchaseorderid` int(19) NOT NULL,
  `vendorname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `postatus` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  KEY `postatushistory_purchaseorderid_idx` (`purchaseorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_postatushistory`
--

LOCK TABLES `vtiger_postatushistory` WRITE;
/*!40000 ALTER TABLE `vtiger_postatushistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_postatushistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_potential`
--

DROP TABLE IF EXISTS `vtiger_potential`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_potential` (
  `potentialid` int(19) NOT NULL DEFAULT '0',
  `potential_no` varchar(100) NOT NULL,
  `related_to` int(19) DEFAULT NULL,
  `potentialname` varchar(120) NOT NULL,
  `amount` decimal(25,8) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `closingdate` date DEFAULT NULL,
  `typeofrevenue` varchar(50) DEFAULT NULL,
  `nextstep` varchar(100) DEFAULT NULL,
  `private` int(1) DEFAULT '0',
  `probability` decimal(7,3) DEFAULT '0.000',
  `campaignid` int(19) DEFAULT NULL,
  `sales_stage` varchar(200) DEFAULT NULL,
  `potentialtype` varchar(200) DEFAULT NULL,
  `leadsource` varchar(200) DEFAULT NULL,
  `productid` int(50) DEFAULT NULL,
  `productversion` varchar(50) DEFAULT NULL,
  `quotationref` varchar(50) DEFAULT NULL,
  `partnercontact` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `runtimefee` int(19) DEFAULT '0',
  `followupdate` date DEFAULT NULL,
  `evaluationstatus` varchar(50) DEFAULT NULL,
  `description` text,
  `forecastcategory` int(19) DEFAULT '0',
  `outcomeanalysis` int(19) DEFAULT '0',
  `forecast_amount` decimal(25,8) DEFAULT NULL,
  `isconvertedfromlead` varchar(3) DEFAULT '0',
  `contact_id` int(19) DEFAULT NULL,
  PRIMARY KEY (`potentialid`),
  KEY `potential_relatedto_idx` (`related_to`),
  KEY `potentail_sales_stage_idx` (`sales_stage`),
  KEY `potentail_sales_stage_amount_idx` (`amount`,`sales_stage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_potential`
--

LOCK TABLES `vtiger_potential` WRITE;
/*!40000 ALTER TABLE `vtiger_potential` DISABLE KEYS */;
INSERT INTO `vtiger_potential` VALUES (14,'POT1',13,'Gestione commerciale SWS Engineering',0.00000000,NULL,'2017-04-13',NULL,'',0,0.000,0,'Prospecting','Existing Business','Partner',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,0,0.00000000,'0',0),(17,'POT2',5,'Nuova fornitura DANZI.TN',10000.00000000,NULL,'2017-04-30',NULL,'',0,0.000,0,'Prospecting','','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,0,0.00000000,'0',6),(39,'POT3',32,'Opp da MailManager',0.00000000,NULL,'2017-03-15',NULL,'',0,0.000,0,'Prospecting','','',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,0,0.00000000,'0',0);
/*!40000 ALTER TABLE `vtiger_potential` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_potentialscf`
--

DROP TABLE IF EXISTS `vtiger_potentialscf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_potentialscf` (
  `potentialid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`potentialid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_potentialscf`
--

LOCK TABLES `vtiger_potentialscf` WRITE;
/*!40000 ALTER TABLE `vtiger_potentialscf` DISABLE KEYS */;
INSERT INTO `vtiger_potentialscf` VALUES (14),(17),(39);
/*!40000 ALTER TABLE `vtiger_potentialscf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_potstagehistory`
--

DROP TABLE IF EXISTS `vtiger_potstagehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_potstagehistory` (
  `historyid` int(19) NOT NULL AUTO_INCREMENT,
  `potentialid` int(19) NOT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `stage` varchar(100) DEFAULT NULL,
  `probability` decimal(7,3) DEFAULT NULL,
  `expectedrevenue` decimal(10,0) DEFAULT NULL,
  `closedate` date DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  KEY `potstagehistory_potentialid_idx` (`potentialid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_potstagehistory`
--

LOCK TABLES `vtiger_potstagehistory` WRITE;
/*!40000 ALTER TABLE `vtiger_potstagehistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_potstagehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_pricebook`
--

DROP TABLE IF EXISTS `vtiger_pricebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_pricebook` (
  `pricebookid` int(19) NOT NULL DEFAULT '0',
  `pricebook_no` varchar(100) NOT NULL,
  `bookname` varchar(100) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pricebookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_pricebook`
--

LOCK TABLES `vtiger_pricebook` WRITE;
/*!40000 ALTER TABLE `vtiger_pricebook` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_pricebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_pricebookcf`
--

DROP TABLE IF EXISTS `vtiger_pricebookcf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_pricebookcf` (
  `pricebookid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pricebookid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_pricebookcf`
--

LOCK TABLES `vtiger_pricebookcf` WRITE;
/*!40000 ALTER TABLE `vtiger_pricebookcf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_pricebookcf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_pricebookproductrel`
--

DROP TABLE IF EXISTS `vtiger_pricebookproductrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_pricebookproductrel` (
  `pricebookid` int(19) NOT NULL,
  `productid` int(19) NOT NULL,
  `listprice` decimal(27,8) DEFAULT NULL,
  `usedcurrency` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pricebookid`,`productid`),
  KEY `pricebookproductrel_pricebookid_idx` (`pricebookid`),
  KEY `pricebookproductrel_productid_idx` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_pricebookproductrel`
--

LOCK TABLES `vtiger_pricebookproductrel` WRITE;
/*!40000 ALTER TABLE `vtiger_pricebookproductrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_pricebookproductrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_priority`
--

DROP TABLE IF EXISTS `vtiger_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_priority` (
  `priorityid` int(19) NOT NULL AUTO_INCREMENT,
  `priority` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`priorityid`),
  UNIQUE KEY `priority_priority_idx` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_priority`
--

LOCK TABLES `vtiger_priority` WRITE;
/*!40000 ALTER TABLE `vtiger_priority` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_productcategory`
--

DROP TABLE IF EXISTS `vtiger_productcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_productcategory` (
  `productcategoryid` int(19) NOT NULL AUTO_INCREMENT,
  `productcategory` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`productcategoryid`),
  UNIQUE KEY `productcategory_productcategory_idx` (`productcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_productcategory`
--

LOCK TABLES `vtiger_productcategory` WRITE;
/*!40000 ALTER TABLE `vtiger_productcategory` DISABLE KEYS */;
INSERT INTO `vtiger_productcategory` VALUES (2,'Hardware',1,136,1),(3,'Software',1,137,2),(4,'CRM Applications',1,138,3);
/*!40000 ALTER TABLE `vtiger_productcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_productcategory_seq`
--

DROP TABLE IF EXISTS `vtiger_productcategory_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_productcategory_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_productcategory_seq`
--

LOCK TABLES `vtiger_productcategory_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_productcategory_seq` DISABLE KEYS */;
INSERT INTO `vtiger_productcategory_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_productcategory_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_productcf`
--

DROP TABLE IF EXISTS `vtiger_productcf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_productcf` (
  `productid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_productcf`
--

LOCK TABLES `vtiger_productcf` WRITE;
/*!40000 ALTER TABLE `vtiger_productcf` DISABLE KEYS */;
INSERT INTO `vtiger_productcf` VALUES (21),(22),(23);
/*!40000 ALTER TABLE `vtiger_productcf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_productcurrencyrel`
--

DROP TABLE IF EXISTS `vtiger_productcurrencyrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_productcurrencyrel` (
  `productid` int(11) NOT NULL,
  `currencyid` int(11) NOT NULL,
  `converted_price` decimal(28,8) DEFAULT NULL,
  `actual_price` decimal(28,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_productcurrencyrel`
--

LOCK TABLES `vtiger_productcurrencyrel` WRITE;
/*!40000 ALTER TABLE `vtiger_productcurrencyrel` DISABLE KEYS */;
INSERT INTO `vtiger_productcurrencyrel` VALUES (21,1,0.00000000,0.00000000),(22,1,0.00000000,0.00000000),(23,1,0.00000000,0.00000000);
/*!40000 ALTER TABLE `vtiger_productcurrencyrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_products`
--

DROP TABLE IF EXISTS `vtiger_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_products` (
  `productid` int(11) NOT NULL,
  `product_no` varchar(100) NOT NULL,
  `productname` varchar(100) DEFAULT NULL,
  `productcode` varchar(40) DEFAULT NULL,
  `productcategory` varchar(200) DEFAULT NULL,
  `manufacturer` varchar(200) DEFAULT NULL,
  `qty_per_unit` decimal(11,2) DEFAULT '0.00',
  `unit_price` decimal(25,8) DEFAULT NULL,
  `weight` decimal(11,3) DEFAULT NULL,
  `pack_size` int(11) DEFAULT NULL,
  `sales_start_date` date DEFAULT NULL,
  `sales_end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `cost_factor` int(11) DEFAULT NULL,
  `commissionrate` decimal(7,3) DEFAULT NULL,
  `commissionmethod` varchar(50) DEFAULT NULL,
  `discontinued` int(1) NOT NULL DEFAULT '0',
  `usageunit` varchar(200) DEFAULT NULL,
  `reorderlevel` int(11) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `taxclass` varchar(200) DEFAULT NULL,
  `mfr_part_no` varchar(200) DEFAULT NULL,
  `vendor_part_no` varchar(200) DEFAULT NULL,
  `serialno` varchar(200) DEFAULT NULL,
  `qtyinstock` decimal(25,3) DEFAULT NULL,
  `productsheet` varchar(200) DEFAULT NULL,
  `qtyindemand` int(11) DEFAULT NULL,
  `glacct` varchar(200) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `imagename` text,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_products`
--

LOCK TABLES `vtiger_products` WRITE;
/*!40000 ALTER TABLE `vtiger_products` DISABLE KEYS */;
INSERT INTO `vtiger_products` VALUES (21,'PRO1','Prodotto A','','','',0.00,0.00000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,NULL,1,'',0,'','','','','',0.000,'',0,'',0,'',1),(22,'PRO2','Prodotto B','','','',0.00,0.00000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,NULL,1,'',0,'','','','','',0.000,'',0,'',0,'',1),(23,'PRO3','Prodotto C','','','',0.00,0.00000000,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.000,NULL,1,'',0,'','','','','',0.000,'',0,'',0,'',1);
/*!40000 ALTER TABLE `vtiger_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_producttaxrel`
--

DROP TABLE IF EXISTS `vtiger_producttaxrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_producttaxrel` (
  `productid` int(11) NOT NULL,
  `taxid` int(3) NOT NULL,
  `taxpercentage` decimal(7,3) DEFAULT NULL,
  KEY `producttaxrel_productid_idx` (`productid`),
  KEY `producttaxrel_taxid_idx` (`taxid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_producttaxrel`
--

LOCK TABLES `vtiger_producttaxrel` WRITE;
/*!40000 ALTER TABLE `vtiger_producttaxrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_producttaxrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_profile`
--

DROP TABLE IF EXISTS `vtiger_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_profile` (
  `profileid` int(10) NOT NULL AUTO_INCREMENT,
  `profilename` varchar(50) NOT NULL,
  `description` text,
  `directly_related_to_role` int(1) DEFAULT '0',
  PRIMARY KEY (`profileid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_profile`
--

LOCK TABLES `vtiger_profile` WRITE;
/*!40000 ALTER TABLE `vtiger_profile` DISABLE KEYS */;
INSERT INTO `vtiger_profile` VALUES (1,'Administrator','Admin Profile',0),(2,'Sales Profile','Profile Related to Sales',0),(3,'Support Profile','Profile Related to Support',0),(4,'Guest Profile','Guest Profile for Test Users',0),(5,'Technical Manager+Profile','0',1),(6,'Technical Person+Profile','0',1),(7,'Agent (ext)+Profile','0',1),(8,'Consultant (ext)+Profile','0',1),(9,'Staff+Profile','0',1),(10,'Staff EuroBrico+Profile','0',1),(11,'Resp. Punto Vendita+Profile','0',1),(12,'Addetti Punto Vendita+Profile','0',1);
/*!40000 ALTER TABLE `vtiger_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_profile2field`
--

DROP TABLE IF EXISTS `vtiger_profile2field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_profile2field` (
  `profileid` int(11) NOT NULL,
  `tabid` int(10) DEFAULT NULL,
  `fieldid` int(19) NOT NULL,
  `visible` int(19) DEFAULT NULL,
  `readonly` int(19) DEFAULT NULL,
  PRIMARY KEY (`profileid`,`fieldid`),
  KEY `profile2field_profileid_tabid_fieldname_idx` (`profileid`,`tabid`),
  KEY `profile2field_tabid_profileid_idx` (`tabid`,`profileid`),
  KEY `profile2field_visible_profileid_idx` (`visible`,`profileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_profile2field`
--

LOCK TABLES `vtiger_profile2field` WRITE;
/*!40000 ALTER TABLE `vtiger_profile2field` DISABLE KEYS */;
INSERT INTO `vtiger_profile2field` VALUES (1,6,1,0,0),(1,6,2,0,0),(1,6,3,0,0),(1,6,4,0,0),(1,6,5,0,0),(1,6,6,0,0),(1,6,7,0,0),(1,6,8,0,0),(1,6,9,0,0),(1,6,10,0,0),(1,6,11,0,0),(1,6,12,0,0),(1,6,13,0,0),(1,6,14,0,0),(1,6,15,0,0),(1,6,16,0,0),(1,6,17,0,0),(1,6,18,0,0),(1,6,19,0,0),(1,6,20,0,0),(1,6,21,0,0),(1,6,22,0,0),(1,6,23,0,0),(1,6,24,0,0),(1,6,25,0,0),(1,6,26,0,0),(1,6,27,0,0),(1,6,28,0,0),(1,6,29,0,0),(1,6,30,0,0),(1,6,31,0,0),(1,6,32,0,0),(1,6,33,0,0),(1,6,34,0,0),(1,6,35,0,0),(1,6,36,0,0),(1,7,37,0,0),(1,7,38,0,0),(1,7,39,0,0),(1,7,40,0,0),(1,7,41,0,0),(1,7,42,0,0),(1,7,43,0,0),(1,7,44,0,0),(1,7,45,0,0),(1,7,46,0,0),(1,7,47,0,0),(1,7,48,0,0),(1,7,49,0,0),(1,7,50,0,0),(1,7,51,0,0),(1,7,52,0,0),(1,7,53,0,0),(1,7,54,0,0),(1,7,55,0,0),(1,7,56,0,0),(1,7,57,0,0),(1,7,58,0,0),(1,7,59,0,0),(1,7,60,0,0),(1,7,61,0,0),(1,7,62,0,0),(1,7,63,0,0),(1,7,64,0,0),(1,7,65,0,0),(1,4,66,0,0),(1,4,67,0,0),(1,4,68,0,0),(1,4,69,0,0),(1,4,70,0,0),(1,4,71,0,0),(1,4,72,0,0),(1,4,73,0,0),(1,4,74,0,0),(1,4,75,0,0),(1,4,76,0,0),(1,4,77,0,0),(1,4,78,0,0),(1,4,79,0,0),(1,4,80,0,0),(1,4,81,0,0),(1,4,82,0,0),(1,4,83,0,0),(1,4,84,0,0),(1,4,85,0,0),(1,4,86,0,0),(1,4,87,0,0),(1,4,88,0,0),(1,4,89,0,0),(1,4,90,0,0),(1,4,91,0,0),(1,4,92,0,0),(1,4,93,0,0),(1,4,94,0,0),(1,4,95,0,0),(1,4,96,0,0),(1,4,97,0,0),(1,4,98,0,0),(1,4,99,0,0),(1,4,100,0,0),(1,4,101,0,0),(1,4,102,0,0),(1,4,103,0,0),(1,4,104,0,0),(1,4,105,0,0),(1,4,106,0,0),(1,4,107,0,0),(1,4,108,0,0),(1,4,109,0,0),(1,2,110,0,0),(1,2,111,0,0),(1,2,112,0,0),(1,2,113,0,0),(1,2,114,0,0),(1,2,115,0,0),(1,2,116,0,0),(1,2,117,0,0),(1,2,118,0,0),(1,2,119,0,0),(1,2,120,0,0),(1,2,121,0,0),(1,2,122,0,0),(1,2,123,0,0),(1,2,124,0,0),(1,2,125,0,0),(1,26,126,0,0),(1,26,127,0,0),(1,26,128,0,0),(1,26,129,0,0),(1,26,130,0,0),(1,26,131,0,0),(1,26,132,0,0),(1,26,133,0,0),(1,26,134,0,0),(1,26,135,0,0),(1,26,136,0,0),(1,26,137,0,0),(1,26,138,0,0),(1,26,139,0,0),(1,26,140,0,0),(1,26,141,0,0),(1,26,142,0,0),(1,26,143,0,0),(1,26,144,0,0),(1,26,145,0,0),(1,26,146,0,0),(1,26,147,0,0),(1,26,148,0,0),(1,26,149,0,0),(1,26,150,0,0),(1,4,151,0,0),(1,6,152,0,0),(1,7,153,0,0),(1,26,154,0,0),(1,13,155,0,0),(1,13,156,0,0),(1,13,157,0,0),(1,13,158,0,0),(1,13,159,0,0),(1,13,160,0,0),(1,13,161,0,0),(1,13,162,0,0),(1,13,163,0,0),(1,13,164,0,0),(1,13,165,0,0),(1,13,166,0,0),(1,13,167,0,0),(1,13,168,0,0),(1,13,169,0,0),(1,13,170,0,0),(1,13,171,0,0),(1,13,172,0,0),(1,14,173,0,0),(1,14,174,0,0),(1,14,175,0,0),(1,14,176,0,0),(1,14,177,0,0),(1,14,178,0,0),(1,14,179,0,0),(1,14,180,0,0),(1,14,181,0,0),(1,14,182,0,0),(1,14,183,0,0),(1,14,184,0,0),(1,14,185,0,0),(1,14,186,0,0),(1,14,187,0,0),(1,14,188,0,0),(1,14,189,0,0),(1,14,190,0,0),(1,14,191,0,0),(1,14,192,0,0),(1,14,193,0,0),(1,14,194,0,0),(1,14,195,0,0),(1,14,196,0,0),(1,14,197,0,0),(1,14,198,0,0),(1,14,199,0,0),(1,14,200,0,0),(1,14,201,0,0),(1,14,202,0,0),(1,14,203,0,0),(1,8,204,0,0),(1,8,205,0,0),(1,8,206,0,0),(1,8,207,0,0),(1,8,208,0,0),(1,8,209,0,0),(1,8,210,0,0),(1,8,211,0,0),(1,8,212,0,0),(1,8,213,0,0),(1,8,214,0,0),(1,8,215,0,0),(1,8,216,0,0),(1,8,217,0,0),(1,8,218,0,0),(1,10,219,0,0),(1,10,220,0,0),(1,10,221,0,0),(1,10,222,0,0),(1,10,223,0,0),(1,10,224,0,0),(1,10,225,0,0),(1,10,226,0,0),(1,10,227,0,0),(1,10,228,0,0),(1,10,229,0,0),(1,10,230,0,0),(1,9,231,0,0),(1,9,232,0,0),(1,9,233,0,0),(1,9,234,0,0),(1,9,235,0,0),(1,9,236,0,0),(1,9,237,0,0),(1,9,238,0,0),(1,9,239,0,0),(1,9,240,0,0),(1,9,241,0,0),(1,9,242,0,0),(1,9,243,0,0),(1,9,244,0,0),(1,9,245,0,0),(1,9,246,0,0),(1,9,247,0,0),(1,9,248,0,0),(1,9,249,0,0),(1,9,250,0,0),(1,9,251,0,0),(1,9,252,0,0),(1,9,253,0,0),(1,9,254,0,0),(1,16,255,0,0),(1,16,256,0,0),(1,16,257,0,0),(1,16,258,0,0),(1,16,259,0,0),(1,16,260,0,0),(1,16,261,0,0),(1,16,262,0,0),(1,16,263,0,0),(1,16,264,0,0),(1,16,265,0,0),(1,16,266,0,0),(1,16,267,0,0),(1,16,268,0,0),(1,16,269,0,0),(1,16,270,0,0),(1,16,271,0,0),(1,16,272,0,0),(1,16,273,0,0),(1,16,274,0,0),(1,16,275,0,0),(1,16,276,0,0),(1,16,277,0,0),(1,15,278,0,0),(1,15,279,0,0),(1,15,280,0,0),(1,15,281,0,0),(1,15,282,0,0),(1,15,283,0,0),(1,15,284,0,0),(1,15,285,0,0),(1,15,286,0,0),(1,15,287,0,0),(1,18,288,0,0),(1,18,289,0,0),(1,18,290,0,0),(1,18,291,0,0),(1,18,292,0,0),(1,18,293,0,0),(1,18,294,0,0),(1,18,295,0,0),(1,18,296,0,0),(1,18,297,0,0),(1,18,298,0,0),(1,18,299,0,0),(1,18,300,0,0),(1,18,301,0,0),(1,18,302,0,0),(1,18,303,0,0),(1,18,304,0,0),(1,19,305,0,0),(1,19,306,0,0),(1,19,307,0,0),(1,19,308,0,0),(1,19,309,0,0),(1,19,310,0,0),(1,19,311,0,0),(1,19,312,0,0),(1,20,313,0,0),(1,20,314,0,0),(1,20,315,0,0),(1,20,316,0,0),(1,20,317,0,0),(1,20,318,0,0),(1,20,319,0,0),(1,20,320,0,0),(1,20,321,0,0),(1,20,322,0,0),(1,20,323,0,0),(1,20,324,0,0),(1,20,325,0,0),(1,20,326,0,0),(1,20,327,0,0),(1,20,328,0,0),(1,20,329,0,0),(1,20,330,0,0),(1,20,331,0,0),(1,20,332,0,0),(1,20,333,0,0),(1,20,334,0,0),(1,20,335,0,0),(1,20,336,0,0),(1,20,337,0,0),(1,20,338,0,0),(1,20,339,0,0),(1,20,340,0,0),(1,20,341,0,0),(1,20,342,0,0),(1,20,343,0,0),(1,20,344,0,0),(1,20,345,0,0),(1,20,346,0,0),(1,20,347,0,0),(1,20,348,0,0),(1,20,349,0,0),(1,21,350,0,0),(1,21,351,0,0),(1,21,352,0,0),(1,21,353,0,0),(1,21,354,0,0),(1,21,355,0,0),(1,21,356,0,0),(1,21,357,0,0),(1,21,358,0,0),(1,21,359,0,0),(1,21,360,0,0),(1,21,361,0,0),(1,21,362,0,0),(1,21,363,0,0),(1,21,364,0,0),(1,21,365,0,0),(1,21,366,0,0),(1,21,367,0,0),(1,21,368,0,0),(1,21,369,0,0),(1,21,370,0,0),(1,21,371,0,0),(1,21,372,0,0),(1,21,373,0,0),(1,21,374,0,0),(1,21,375,0,0),(1,21,376,0,0),(1,21,377,0,0),(1,21,378,0,0),(1,21,379,0,0),(1,21,380,0,0),(1,21,381,0,0),(1,21,382,0,0),(1,21,383,0,0),(1,21,384,0,0),(1,21,385,0,0),(1,21,386,0,0),(1,21,387,0,0),(1,22,388,0,0),(1,22,389,0,0),(1,22,390,0,0),(1,22,391,0,0),(1,22,392,0,0),(1,22,393,0,0),(1,22,394,0,0),(1,22,395,0,0),(1,22,396,0,0),(1,22,397,0,0),(1,22,398,0,0),(1,22,399,0,0),(1,22,400,0,0),(1,22,401,0,0),(1,22,402,0,0),(1,22,403,0,0),(1,22,404,0,0),(1,22,405,0,0),(1,22,406,0,0),(1,22,407,0,0),(1,22,408,0,0),(1,22,409,0,0),(1,22,410,0,0),(1,22,411,0,0),(1,22,412,0,0),(1,22,413,0,0),(1,22,414,0,0),(1,22,415,0,0),(1,22,416,0,0),(1,22,417,0,0),(1,22,418,0,0),(1,22,419,0,0),(1,22,420,0,0),(1,22,421,0,0),(1,22,422,0,0),(1,22,423,0,0),(1,22,424,0,0),(1,22,425,0,0),(1,22,426,0,0),(1,22,427,0,0),(1,22,428,0,0),(1,22,429,0,0),(1,22,430,0,0),(1,22,431,0,0),(1,22,432,0,0),(1,22,433,0,0),(1,22,434,0,0),(1,23,435,0,0),(1,23,436,0,0),(1,23,437,0,0),(1,23,438,0,0),(1,23,439,0,0),(1,23,440,0,0),(1,23,441,0,0),(1,23,442,0,0),(1,23,443,0,0),(1,23,444,0,0),(1,23,445,0,0),(1,23,446,0,0),(1,23,447,0,0),(1,23,448,0,0),(1,23,449,0,0),(1,23,450,0,0),(1,23,451,0,0),(1,23,452,0,0),(1,23,453,0,0),(1,23,454,0,0),(1,23,455,0,0),(1,23,456,0,0),(1,23,457,0,0),(1,23,458,0,0),(1,23,459,0,0),(1,23,460,0,0),(1,23,461,0,0),(1,23,462,0,0),(1,23,463,0,0),(1,23,464,0,0),(1,23,465,0,0),(1,23,466,0,0),(1,23,467,0,0),(1,23,468,0,0),(1,23,469,0,0),(1,23,470,0,0),(1,23,471,0,0),(1,23,472,0,0),(1,23,473,0,0),(1,29,474,0,0),(1,29,478,0,0),(1,29,479,0,0),(1,29,481,0,0),(1,29,488,0,0),(1,29,489,0,0),(1,29,490,0,0),(1,29,491,0,0),(1,29,493,0,0),(1,29,494,0,0),(1,29,495,0,0),(1,29,496,0,0),(1,29,497,0,0),(1,29,502,0,0),(1,29,503,0,0),(1,29,504,0,0),(1,29,505,0,0),(1,29,513,0,0),(1,10,518,0,0),(1,10,519,0,0),(1,10,520,0,0),(1,10,521,0,0),(1,10,522,0,0),(1,10,523,0,0),(1,33,524,0,0),(1,33,525,0,0),(1,33,526,0,0),(1,33,527,0,0),(1,33,528,0,0),(1,33,529,0,0),(1,33,530,0,0),(1,33,531,0,0),(1,33,532,0,0),(1,33,533,0,0),(1,33,534,0,0),(1,33,535,0,0),(1,33,536,0,0),(1,33,537,0,0),(1,33,538,0,0),(1,33,539,0,0),(1,29,540,0,0),(1,34,541,0,0),(1,34,542,0,0),(1,34,543,0,0),(1,34,544,0,0),(1,34,545,0,0),(1,34,546,0,0),(1,34,547,0,0),(1,34,548,0,0),(1,34,549,0,0),(1,34,550,0,0),(1,34,551,0,0),(1,34,552,0,0),(1,34,553,0,0),(1,34,554,0,0),(1,34,555,0,0),(1,34,556,0,0),(1,34,557,0,0),(1,34,558,0,0),(1,34,559,0,0),(1,36,560,0,0),(1,36,561,0,0),(1,36,562,0,0),(1,36,563,0,0),(1,36,564,0,0),(1,36,565,0,0),(1,36,566,0,0),(1,36,567,0,0),(1,36,568,0,0),(1,36,569,0,0),(1,36,570,0,0),(1,36,571,0,0),(1,36,572,0,0),(1,36,573,0,0),(1,36,574,0,0),(1,36,575,0,0),(1,36,576,0,0),(1,36,577,0,0),(1,36,578,0,0),(1,40,579,0,0),(1,40,580,0,0),(1,40,581,0,0),(1,40,582,0,0),(1,40,583,0,0),(1,40,584,0,0),(1,40,585,0,0),(1,40,586,0,0),(1,40,587,0,0),(1,40,588,0,0),(1,41,589,0,0),(1,41,590,0,0),(1,41,591,0,0),(1,41,592,0,0),(1,41,593,0,0),(1,41,594,0,0),(1,41,595,0,0),(1,41,596,0,0),(1,41,597,0,0),(1,41,598,0,0),(1,41,599,0,0),(1,41,600,0,0),(1,41,601,0,0),(1,41,602,0,0),(1,41,603,0,0),(1,42,604,0,0),(1,42,605,0,0),(1,42,606,0,0),(1,42,607,0,0),(1,42,608,0,0),(1,42,609,0,0),(1,42,610,0,0),(1,42,611,0,0),(1,42,612,0,0),(1,42,613,0,0),(1,42,614,0,0),(1,42,615,0,0),(1,42,616,0,0),(1,42,617,0,0),(1,42,618,0,0),(1,42,619,0,0),(1,42,620,0,0),(1,43,621,0,0),(1,43,622,0,0),(1,43,623,0,0),(1,43,624,0,0),(1,43,625,0,0),(1,43,626,0,0),(1,43,627,0,0),(1,43,628,0,0),(1,43,629,0,0),(1,43,630,0,0),(1,43,631,0,0),(1,43,632,0,0),(1,43,633,0,0),(1,43,634,0,0),(1,43,635,0,0),(1,43,636,0,0),(1,43,637,0,0),(1,43,638,0,0),(1,45,639,0,0),(1,45,640,0,0),(1,45,641,0,0),(1,45,642,0,0),(1,45,643,0,0),(1,45,644,0,0),(1,45,645,0,0),(1,47,646,0,0),(1,47,647,0,0),(1,47,648,0,0),(1,47,649,0,0),(1,47,650,0,0),(1,2,651,0,0),(1,29,652,0,0),(1,23,653,0,0),(1,23,654,0,0),(1,23,655,0,0),(1,23,656,0,0),(1,23,657,0,0),(1,23,658,0,0),(1,23,659,0,0),(1,23,660,0,0),(1,23,661,0,0),(1,22,662,0,0),(1,22,663,0,0),(1,22,664,0,0),(1,22,665,0,0),(1,22,666,0,0),(1,22,667,0,0),(1,22,668,0,0),(1,22,669,0,0),(1,22,670,0,0),(1,21,671,0,0),(1,21,672,0,0),(1,21,673,0,0),(1,21,674,0,0),(1,21,675,0,0),(1,21,676,0,0),(1,21,677,0,0),(1,21,678,0,0),(1,21,679,0,0),(1,20,680,0,0),(1,20,681,0,0),(1,20,682,0,0),(1,20,683,0,0),(1,20,684,0,0),(1,20,685,0,0),(1,20,686,0,0),(1,20,687,0,0),(1,20,688,0,0),(1,29,689,0,0),(1,41,690,0,0),(1,45,691,0,0),(1,29,692,0,0),(1,29,693,0,0),(1,29,694,0,0),(1,23,695,0,0),(1,22,696,0,0),(1,21,697,0,0),(1,20,698,0,0),(1,29,699,0,0),(1,6,700,0,0),(1,4,701,0,0),(1,2,702,0,0),(1,29,703,0,0),(1,23,704,0,0),(1,23,705,0,0),(1,21,706,0,0),(1,21,707,0,0),(1,18,708,0,0),(1,7,709,0,0),(1,45,710,0,0),(1,45,711,0,0),(1,23,712,0,0),(1,20,713,0,0),(1,21,714,0,0),(1,22,715,0,0),(1,29,716,0,0),(1,2,717,0,0),(1,13,718,0,0),(1,29,719,0,0),(1,13,720,0,0),(1,29,721,0,0),(1,29,722,0,0),(1,29,723,0,0),(1,9,729,0,0),(1,29,750,0,0),(2,6,1,0,0),(2,6,2,0,0),(2,6,3,0,0),(2,6,4,0,0),(2,6,5,0,0),(2,6,6,0,0),(2,6,7,0,0),(2,6,8,0,0),(2,6,9,0,0),(2,6,10,0,0),(2,6,11,0,0),(2,6,12,0,0),(2,6,13,0,0),(2,6,14,0,0),(2,6,15,0,0),(2,6,16,0,0),(2,6,17,0,0),(2,6,18,0,0),(2,6,19,0,0),(2,6,20,0,0),(2,6,21,0,1),(2,6,22,0,1),(2,6,23,0,0),(2,6,24,0,0),(2,6,25,0,0),(2,6,26,0,0),(2,6,27,0,0),(2,6,28,0,0),(2,6,29,0,0),(2,6,30,0,0),(2,6,31,0,0),(2,6,32,0,0),(2,6,33,0,0),(2,6,34,0,0),(2,6,35,0,0),(2,6,36,0,0),(2,7,37,0,0),(2,7,38,0,0),(2,7,39,0,0),(2,7,40,0,0),(2,7,41,0,0),(2,7,42,0,0),(2,7,43,0,0),(2,7,44,0,0),(2,7,45,0,0),(2,7,46,0,0),(2,7,47,0,0),(2,7,48,0,0),(2,7,49,0,0),(2,7,50,0,0),(2,7,51,0,0),(2,7,52,0,0),(2,7,53,0,0),(2,7,54,0,0),(2,7,55,0,0),(2,7,56,0,1),(2,7,57,0,1),(2,7,58,0,0),(2,7,59,0,0),(2,7,60,0,0),(2,7,61,0,0),(2,7,62,0,0),(2,7,63,0,0),(2,7,64,0,0),(2,7,65,0,0),(2,4,66,0,0),(2,4,67,0,0),(2,4,68,0,0),(2,4,69,0,0),(2,4,70,0,0),(2,4,71,0,0),(2,4,72,0,0),(2,4,73,0,0),(2,4,74,0,0),(2,4,75,0,0),(2,4,76,0,0),(2,4,77,0,0),(2,4,78,0,0),(2,4,79,0,0),(2,4,80,0,0),(2,4,81,0,0),(2,4,82,0,0),(2,4,83,0,0),(2,4,84,0,0),(2,4,85,0,0),(2,4,86,0,0),(2,4,87,0,0),(2,4,88,0,0),(2,4,89,0,0),(2,4,90,0,1),(2,4,91,0,1),(2,4,92,0,0),(2,4,93,0,0),(2,4,94,0,0),(2,4,95,0,0),(2,4,96,0,0),(2,4,97,0,0),(2,4,98,0,0),(2,4,99,0,0),(2,4,100,0,0),(2,4,101,0,0),(2,4,102,0,0),(2,4,103,0,0),(2,4,104,0,0),(2,4,105,0,0),(2,4,106,0,0),(2,4,107,0,0),(2,4,108,0,0),(2,4,109,0,0),(2,2,110,0,0),(2,2,111,0,0),(2,2,112,0,0),(2,2,113,0,0),(2,2,114,0,0),(2,2,115,0,0),(2,2,116,0,0),(2,2,117,0,0),(2,2,118,0,0),(2,2,119,0,0),(2,2,120,0,0),(2,2,121,0,0),(2,2,122,0,1),(2,2,123,0,1),(2,2,124,0,0),(2,2,125,0,0),(2,26,126,0,0),(2,26,127,0,0),(2,26,128,0,0),(2,26,129,0,0),(2,26,130,0,0),(2,26,131,0,0),(2,26,132,0,0),(2,26,133,0,0),(2,26,134,0,0),(2,26,135,0,0),(2,26,136,0,0),(2,26,137,0,1),(2,26,138,0,1),(2,26,139,0,0),(2,26,140,0,0),(2,26,141,0,0),(2,26,142,0,0),(2,26,143,0,0),(2,26,144,0,0),(2,26,145,0,0),(2,26,146,0,0),(2,26,147,0,0),(2,26,148,0,0),(2,26,149,0,0),(2,26,150,0,0),(2,4,151,0,0),(2,6,152,0,0),(2,7,153,0,0),(2,26,154,0,0),(2,13,155,0,0),(2,13,156,0,0),(2,13,157,0,0),(2,13,158,0,0),(2,13,159,0,0),(2,13,160,0,0),(2,13,161,0,0),(2,13,162,0,0),(2,13,163,0,0),(2,13,164,0,0),(2,13,165,0,0),(2,13,166,0,1),(2,13,167,0,1),(2,13,168,0,0),(2,13,169,0,0),(2,13,170,0,0),(2,13,171,0,0),(2,13,172,0,0),(2,14,173,0,0),(2,14,174,0,0),(2,14,175,0,0),(2,14,176,0,0),(2,14,177,0,0),(2,14,178,0,0),(2,14,179,0,0),(2,14,180,0,0),(2,14,181,0,0),(2,14,182,0,0),(2,14,183,0,0),(2,14,184,0,0),(2,14,185,0,0),(2,14,186,0,0),(2,14,187,0,0),(2,14,188,0,0),(2,14,189,0,0),(2,14,190,0,1),(2,14,191,0,1),(2,14,192,0,0),(2,14,193,0,0),(2,14,194,0,0),(2,14,195,0,0),(2,14,196,0,0),(2,14,197,0,0),(2,14,198,0,0),(2,14,199,0,0),(2,14,200,0,0),(2,14,201,0,0),(2,14,202,0,0),(2,14,203,0,0),(2,8,204,0,0),(2,8,205,0,1),(2,8,206,0,1),(2,8,207,0,0),(2,8,208,0,0),(2,8,209,0,0),(2,8,210,0,1),(2,8,211,0,1),(2,8,212,0,0),(2,8,213,0,0),(2,8,214,0,0),(2,8,215,0,1),(2,8,216,0,0),(2,8,217,0,0),(2,8,218,0,0),(2,10,219,0,0),(2,10,220,0,0),(2,10,221,0,0),(2,10,222,0,0),(2,10,223,0,0),(2,10,224,0,0),(2,10,225,0,0),(2,10,226,0,0),(2,10,227,0,0),(2,10,228,0,1),(2,10,229,0,0),(2,10,230,0,0),(2,9,231,0,0),(2,9,232,0,0),(2,9,233,0,0),(2,9,234,0,0),(2,9,235,0,0),(2,9,236,0,0),(2,9,237,0,0),(2,9,238,0,0),(2,9,239,0,0),(2,9,240,0,0),(2,9,241,0,0),(2,9,242,0,0),(2,9,243,0,1),(2,9,244,0,1),(2,9,245,0,0),(2,9,246,0,0),(2,9,247,0,0),(2,9,248,0,0),(2,9,249,0,0),(2,9,250,0,0),(2,9,251,0,0),(2,9,252,0,0),(2,9,253,0,0),(2,9,254,0,0),(2,16,255,0,0),(2,16,256,0,0),(2,16,257,0,0),(2,16,258,0,0),(2,16,259,0,0),(2,16,260,0,0),(2,16,261,0,0),(2,16,262,0,0),(2,16,263,0,0),(2,16,264,0,0),(2,16,265,0,0),(2,16,266,0,0),(2,16,267,0,0),(2,16,268,0,0),(2,16,269,0,1),(2,16,270,0,1),(2,16,271,0,0),(2,16,272,0,0),(2,16,273,0,0),(2,16,274,0,0),(2,16,275,0,0),(2,16,276,0,0),(2,16,277,0,0),(2,15,278,0,0),(2,15,279,0,0),(2,15,280,0,0),(2,15,281,0,0),(2,15,282,0,0),(2,15,283,0,0),(2,15,284,0,0),(2,15,285,0,1),(2,15,286,0,1),(2,15,287,0,0),(2,18,288,0,0),(2,18,289,0,0),(2,18,290,0,0),(2,18,291,0,0),(2,18,292,0,0),(2,18,293,0,0),(2,18,294,0,0),(2,18,295,0,1),(2,18,296,0,1),(2,18,297,0,0),(2,18,298,0,0),(2,18,299,0,0),(2,18,300,0,0),(2,18,301,0,0),(2,18,302,0,0),(2,18,303,0,0),(2,18,304,0,0),(2,19,305,0,0),(2,19,306,0,0),(2,19,307,0,0),(2,19,308,0,1),(2,19,309,0,1),(2,19,310,0,0),(2,19,311,0,0),(2,19,312,0,0),(2,20,313,0,0),(2,20,314,0,0),(2,20,315,0,0),(2,20,316,0,0),(2,20,317,0,0),(2,20,318,0,0),(2,20,319,0,0),(2,20,320,0,0),(2,20,321,0,0),(2,20,322,0,0),(2,20,323,0,0),(2,20,324,0,0),(2,20,325,0,0),(2,20,326,0,0),(2,20,327,0,0),(2,20,328,0,0),(2,20,329,0,0),(2,20,330,0,0),(2,20,331,0,1),(2,20,332,0,1),(2,20,333,0,0),(2,20,334,0,0),(2,20,335,0,0),(2,20,336,0,0),(2,20,337,0,0),(2,20,338,0,0),(2,20,339,0,0),(2,20,340,0,0),(2,20,341,0,0),(2,20,342,0,0),(2,20,343,0,0),(2,20,344,0,0),(2,20,345,0,0),(2,20,346,0,0),(2,20,347,0,0),(2,20,348,0,0),(2,20,349,0,0),(2,21,350,0,0),(2,21,351,0,0),(2,21,352,0,0),(2,21,353,0,0),(2,21,354,0,0),(2,21,355,0,0),(2,21,356,0,0),(2,21,357,0,0),(2,21,358,0,0),(2,21,359,0,0),(2,21,360,0,0),(2,21,361,0,0),(2,21,362,0,0),(2,21,363,0,0),(2,21,364,0,0),(2,21,365,0,0),(2,21,366,0,0),(2,21,367,0,0),(2,21,368,0,0),(2,21,369,0,1),(2,21,370,0,1),(2,21,371,0,0),(2,21,372,0,0),(2,21,373,0,0),(2,21,374,0,0),(2,21,375,0,0),(2,21,376,0,0),(2,21,377,0,0),(2,21,378,0,0),(2,21,379,0,0),(2,21,380,0,0),(2,21,381,0,0),(2,21,382,0,0),(2,21,383,0,0),(2,21,384,0,0),(2,21,385,0,0),(2,21,386,0,0),(2,21,387,0,0),(2,22,388,0,0),(2,22,389,0,0),(2,22,390,0,0),(2,22,391,0,0),(2,22,392,0,0),(2,22,393,0,0),(2,22,394,0,0),(2,22,395,0,0),(2,22,396,0,0),(2,22,397,0,0),(2,22,398,0,0),(2,22,399,0,0),(2,22,400,0,0),(2,22,401,0,0),(2,22,402,0,0),(2,22,403,0,0),(2,22,404,0,0),(2,22,405,0,0),(2,22,406,0,0),(2,22,407,0,0),(2,22,408,0,0),(2,22,409,0,0),(2,22,410,0,1),(2,22,411,0,1),(2,22,412,0,0),(2,22,413,0,0),(2,22,414,0,0),(2,22,415,0,0),(2,22,416,0,0),(2,22,417,0,0),(2,22,418,0,0),(2,22,419,0,0),(2,22,420,0,0),(2,22,421,0,0),(2,22,422,0,0),(2,22,423,0,0),(2,22,424,0,0),(2,22,425,0,0),(2,22,426,0,0),(2,22,427,0,0),(2,22,428,0,0),(2,22,429,0,0),(2,22,430,0,0),(2,22,431,0,0),(2,22,432,0,0),(2,22,433,0,0),(2,22,434,0,0),(2,23,435,0,0),(2,23,436,0,0),(2,23,437,0,0),(2,23,438,0,0),(2,23,439,0,0),(2,23,440,0,0),(2,23,441,0,0),(2,23,442,0,0),(2,23,443,0,0),(2,23,444,0,0),(2,23,445,0,0),(2,23,446,0,0),(2,23,447,0,0),(2,23,448,0,0),(2,23,449,0,0),(2,23,450,0,0),(2,23,451,0,0),(2,23,452,0,0),(2,23,453,0,0),(2,23,454,0,1),(2,23,455,0,1),(2,23,456,0,0),(2,23,457,0,0),(2,23,458,0,0),(2,23,459,0,0),(2,23,460,0,0),(2,23,461,0,0),(2,23,462,0,0),(2,23,463,0,0),(2,23,464,0,0),(2,23,465,0,0),(2,23,466,0,0),(2,23,467,0,0),(2,23,468,0,0),(2,23,469,0,0),(2,23,470,0,0),(2,23,471,0,0),(2,23,472,0,0),(2,23,473,0,0),(2,29,474,0,0),(2,29,478,0,0),(2,29,479,0,0),(2,29,481,0,0),(2,29,488,0,0),(2,29,489,0,0),(2,29,490,0,0),(2,29,491,0,0),(2,29,493,0,0),(2,29,494,0,0),(2,29,495,0,0),(2,29,496,0,0),(2,29,497,0,0),(2,29,502,0,0),(2,29,503,0,0),(2,29,504,0,0),(2,29,505,0,0),(2,29,513,0,0),(2,10,518,0,0),(2,10,519,0,0),(2,10,520,0,0),(2,10,521,0,0),(2,10,522,0,0),(2,10,523,0,0),(2,33,524,0,0),(2,33,525,0,0),(2,33,526,0,0),(2,33,527,0,0),(2,33,528,0,0),(2,33,529,0,0),(2,33,530,0,0),(2,33,531,0,0),(2,33,532,0,0),(2,33,533,0,0),(2,33,534,0,0),(2,33,535,0,0),(2,33,536,0,0),(2,33,537,0,0),(2,33,538,0,1),(2,33,539,0,1),(2,29,540,0,0),(2,34,541,0,0),(2,34,542,0,0),(2,34,543,0,0),(2,34,544,0,0),(2,34,545,0,0),(2,34,546,0,0),(2,34,547,0,0),(2,34,548,0,0),(2,34,549,0,1),(2,34,550,0,1),(2,34,551,0,0),(2,34,552,0,0),(2,34,553,0,0),(2,34,554,0,0),(2,34,555,0,0),(2,34,556,0,0),(2,34,557,0,0),(2,34,558,0,0),(2,34,559,0,0),(2,36,560,0,0),(2,36,561,0,1),(2,36,562,0,1),(2,36,563,0,0),(2,36,564,0,1),(2,36,565,0,0),(2,36,566,0,0),(2,36,567,0,0),(2,36,568,0,0),(2,36,569,0,0),(2,36,570,0,0),(2,36,571,0,1),(2,36,572,0,1),(2,36,573,0,0),(2,36,574,0,0),(2,36,575,0,0),(2,36,576,0,1),(2,36,577,0,0),(2,36,578,0,0),(2,40,579,0,0),(2,40,580,0,0),(2,40,581,0,0),(2,40,582,0,0),(2,40,583,0,0),(2,40,584,0,0),(2,40,585,0,1),(2,40,586,0,1),(2,40,587,0,0),(2,40,588,0,0),(2,41,589,0,0),(2,41,590,0,0),(2,41,591,0,0),(2,41,592,0,0),(2,41,593,0,0),(2,41,594,0,0),(2,41,595,0,0),(2,41,596,0,0),(2,41,597,0,0),(2,41,598,0,0),(2,41,599,0,0),(2,41,600,0,1),(2,41,601,0,1),(2,41,602,0,0),(2,41,603,0,0),(2,42,604,0,0),(2,42,605,0,0),(2,42,606,0,0),(2,42,607,0,0),(2,42,608,0,0),(2,42,609,0,0),(2,42,610,0,0),(2,42,611,0,0),(2,42,612,0,0),(2,42,613,0,0),(2,42,614,0,0),(2,42,615,0,0),(2,42,616,0,0),(2,42,617,0,1),(2,42,618,0,1),(2,42,619,0,0),(2,42,620,0,0),(2,43,621,0,0),(2,43,622,0,0),(2,43,623,0,0),(2,43,624,0,0),(2,43,625,0,0),(2,43,626,0,0),(2,43,627,0,0),(2,43,628,0,0),(2,43,629,0,0),(2,43,630,0,0),(2,43,631,0,0),(2,43,632,0,0),(2,43,633,0,0),(2,43,634,0,0),(2,43,635,0,1),(2,43,636,0,1),(2,43,637,0,0),(2,43,638,0,0),(2,45,639,0,0),(2,45,640,0,0),(2,45,641,0,1),(2,45,642,0,1),(2,45,643,0,0),(2,45,644,0,1),(2,45,645,0,0),(2,47,646,0,0),(2,47,647,0,1),(2,47,648,0,1),(2,47,649,0,0),(2,47,650,0,0),(2,2,651,0,0),(2,29,652,0,0),(2,23,653,0,1),(2,23,654,0,1),(2,23,655,0,1),(2,23,656,0,1),(2,23,657,0,1),(2,23,658,0,1),(2,23,659,0,1),(2,23,660,0,1),(2,23,661,0,1),(2,22,662,0,1),(2,22,663,0,1),(2,22,664,0,1),(2,22,665,0,1),(2,22,666,0,1),(2,22,667,0,1),(2,22,668,0,1),(2,22,669,0,1),(2,22,670,0,1),(2,21,671,0,1),(2,21,672,0,1),(2,21,673,0,1),(2,21,674,0,1),(2,21,675,0,1),(2,21,676,0,1),(2,21,677,0,1),(2,21,678,0,1),(2,21,679,0,1),(2,20,680,0,1),(2,20,681,0,1),(2,20,682,0,1),(2,20,683,0,1),(2,20,684,0,1),(2,20,685,0,1),(2,20,686,0,1),(2,20,687,0,1),(2,20,688,0,1),(2,29,689,0,0),(2,41,690,0,0),(2,45,691,0,0),(2,29,692,0,0),(2,29,693,0,0),(2,29,694,0,0),(2,23,695,0,0),(2,22,696,0,0),(2,21,697,0,0),(2,20,698,0,0),(2,29,699,0,0),(2,6,700,0,1),(2,4,701,0,1),(2,2,702,0,1),(2,29,703,0,0),(2,23,704,0,0),(2,23,705,0,0),(2,21,706,0,0),(2,21,707,0,0),(2,18,708,0,0),(2,7,709,0,0),(2,45,710,0,0),(2,45,711,0,0),(2,23,712,0,1),(2,20,713,0,1),(2,21,714,0,1),(2,22,715,0,1),(2,29,716,0,0),(2,2,717,0,0),(2,13,718,0,0),(2,29,719,0,0),(2,13,720,0,0),(2,29,721,0,0),(2,29,722,0,0),(2,29,723,0,0),(2,9,729,0,1),(2,29,750,0,0),(3,6,1,0,0),(3,6,2,0,0),(3,6,3,0,0),(3,6,4,0,0),(3,6,5,0,0),(3,6,6,0,0),(3,6,7,0,0),(3,6,8,0,0),(3,6,9,0,0),(3,6,10,0,0),(3,6,11,0,0),(3,6,12,0,0),(3,6,13,0,0),(3,6,14,0,0),(3,6,15,0,0),(3,6,16,0,0),(3,6,17,0,0),(3,6,18,0,0),(3,6,19,0,0),(3,6,20,0,0),(3,6,21,0,0),(3,6,22,0,0),(3,6,23,0,0),(3,6,24,0,0),(3,6,25,0,0),(3,6,26,0,0),(3,6,27,0,0),(3,6,28,0,0),(3,6,29,0,0),(3,6,30,0,0),(3,6,31,0,0),(3,6,32,0,0),(3,6,33,0,0),(3,6,34,0,0),(3,6,35,0,0),(3,6,36,0,0),(3,7,37,0,0),(3,7,38,0,0),(3,7,39,0,0),(3,7,40,0,0),(3,7,41,0,0),(3,7,42,0,0),(3,7,43,0,0),(3,7,44,0,0),(3,7,45,0,0),(3,7,46,0,0),(3,7,47,0,0),(3,7,48,0,0),(3,7,49,0,0),(3,7,50,0,0),(3,7,51,0,0),(3,7,52,0,0),(3,7,53,0,0),(3,7,54,0,0),(3,7,55,0,0),(3,7,56,0,0),(3,7,57,0,0),(3,7,58,0,0),(3,7,59,0,0),(3,7,60,0,0),(3,7,61,0,0),(3,7,62,0,0),(3,7,63,0,0),(3,7,64,0,0),(3,7,65,0,0),(3,4,66,0,0),(3,4,67,0,0),(3,4,68,0,0),(3,4,69,0,0),(3,4,70,0,0),(3,4,71,0,0),(3,4,72,0,0),(3,4,73,0,0),(3,4,74,0,0),(3,4,75,0,0),(3,4,76,0,0),(3,4,77,0,0),(3,4,78,0,0),(3,4,79,0,0),(3,4,80,0,0),(3,4,81,0,0),(3,4,82,0,0),(3,4,83,0,0),(3,4,84,0,0),(3,4,85,0,0),(3,4,86,0,0),(3,4,87,0,0),(3,4,88,0,0),(3,4,89,0,0),(3,4,90,0,0),(3,4,91,0,0),(3,4,92,0,0),(3,4,93,0,0),(3,4,94,0,0),(3,4,95,0,0),(3,4,96,0,0),(3,4,97,0,0),(3,4,98,0,0),(3,4,99,0,0),(3,4,100,0,0),(3,4,101,0,0),(3,4,102,0,0),(3,4,103,0,0),(3,4,104,0,0),(3,4,105,0,0),(3,4,106,0,0),(3,4,107,0,0),(3,4,108,0,0),(3,4,109,0,0),(3,2,110,0,0),(3,2,111,0,0),(3,2,112,0,0),(3,2,113,0,0),(3,2,114,0,0),(3,2,115,0,0),(3,2,116,0,0),(3,2,117,0,0),(3,2,118,0,0),(3,2,119,0,0),(3,2,120,0,0),(3,2,121,0,0),(3,2,122,0,0),(3,2,123,0,0),(3,2,124,0,0),(3,2,125,0,0),(3,26,126,0,0),(3,26,127,0,0),(3,26,128,0,0),(3,26,129,0,0),(3,26,130,0,0),(3,26,131,0,0),(3,26,132,0,0),(3,26,133,0,0),(3,26,134,0,0),(3,26,135,0,0),(3,26,136,0,0),(3,26,137,0,0),(3,26,138,0,0),(3,26,139,0,0),(3,26,140,0,0),(3,26,141,0,0),(3,26,142,0,0),(3,26,143,0,0),(3,26,144,0,0),(3,26,145,0,0),(3,26,146,0,0),(3,26,147,0,0),(3,26,148,0,0),(3,26,149,0,0),(3,26,150,0,0),(3,4,151,0,0),(3,6,152,0,0),(3,7,153,0,0),(3,26,154,0,0),(3,13,155,0,0),(3,13,156,0,0),(3,13,157,0,0),(3,13,158,0,0),(3,13,159,0,0),(3,13,160,0,0),(3,13,161,0,0),(3,13,162,0,0),(3,13,163,0,0),(3,13,164,0,0),(3,13,165,0,0),(3,13,166,0,0),(3,13,167,0,0),(3,13,168,0,0),(3,13,169,0,0),(3,13,170,0,0),(3,13,171,0,0),(3,13,172,0,0),(3,14,173,0,0),(3,14,174,0,0),(3,14,175,0,0),(3,14,176,0,0),(3,14,177,0,0),(3,14,178,0,0),(3,14,179,0,0),(3,14,180,0,0),(3,14,181,0,0),(3,14,182,0,0),(3,14,183,0,0),(3,14,184,0,0),(3,14,185,0,0),(3,14,186,0,0),(3,14,187,0,0),(3,14,188,0,0),(3,14,189,0,0),(3,14,190,0,0),(3,14,191,0,0),(3,14,192,0,0),(3,14,193,0,0),(3,14,194,0,0),(3,14,195,0,0),(3,14,196,0,0),(3,14,197,0,0),(3,14,198,0,0),(3,14,199,0,0),(3,14,200,0,0),(3,14,201,0,0),(3,14,202,0,0),(3,14,203,0,0),(3,8,204,0,0),(3,8,205,0,0),(3,8,206,0,0),(3,8,207,0,0),(3,8,208,0,0),(3,8,209,0,0),(3,8,210,0,0),(3,8,211,0,0),(3,8,212,0,0),(3,8,213,0,0),(3,8,214,0,0),(3,8,215,0,0),(3,8,216,0,0),(3,8,217,0,0),(3,8,218,0,0),(3,10,219,0,0),(3,10,220,0,0),(3,10,221,0,0),(3,10,222,0,0),(3,10,223,0,0),(3,10,224,0,0),(3,10,225,0,0),(3,10,226,0,0),(3,10,227,0,0),(3,10,228,0,0),(3,10,229,0,0),(3,10,230,0,0),(3,9,231,0,0),(3,9,232,0,0),(3,9,233,0,0),(3,9,234,0,0),(3,9,235,0,0),(3,9,236,0,0),(3,9,237,0,0),(3,9,238,0,0),(3,9,239,0,0),(3,9,240,0,0),(3,9,241,0,0),(3,9,242,0,0),(3,9,243,0,0),(3,9,244,0,0),(3,9,245,0,0),(3,9,246,0,0),(3,9,247,0,0),(3,9,248,0,0),(3,9,249,0,0),(3,9,250,0,0),(3,9,251,0,0),(3,9,252,0,0),(3,9,253,0,0),(3,9,254,0,0),(3,16,255,0,0),(3,16,256,0,0),(3,16,257,0,0),(3,16,258,0,0),(3,16,259,0,0),(3,16,260,0,0),(3,16,261,0,0),(3,16,262,0,0),(3,16,263,0,0),(3,16,264,0,0),(3,16,265,0,0),(3,16,266,0,0),(3,16,267,0,0),(3,16,268,0,0),(3,16,269,0,0),(3,16,270,0,0),(3,16,271,0,0),(3,16,272,0,0),(3,16,273,0,0),(3,16,274,0,0),(3,16,275,0,0),(3,16,276,0,0),(3,16,277,0,0),(3,15,278,0,0),(3,15,279,0,0),(3,15,280,0,0),(3,15,281,0,0),(3,15,282,0,0),(3,15,283,0,0),(3,15,284,0,0),(3,15,285,0,0),(3,15,286,0,0),(3,15,287,0,0),(3,18,288,0,0),(3,18,289,0,0),(3,18,290,0,0),(3,18,291,0,0),(3,18,292,0,0),(3,18,293,0,0),(3,18,294,0,0),(3,18,295,0,0),(3,18,296,0,0),(3,18,297,0,0),(3,18,298,0,0),(3,18,299,0,0),(3,18,300,0,0),(3,18,301,0,0),(3,18,302,0,0),(3,18,303,0,0),(3,18,304,0,0),(3,19,305,0,0),(3,19,306,0,0),(3,19,307,0,0),(3,19,308,0,0),(3,19,309,0,0),(3,19,310,0,0),(3,19,311,0,0),(3,19,312,0,0),(3,20,313,0,0),(3,20,314,0,0),(3,20,315,0,0),(3,20,316,0,0),(3,20,317,0,0),(3,20,318,0,0),(3,20,319,0,0),(3,20,320,0,0),(3,20,321,0,0),(3,20,322,0,0),(3,20,323,0,0),(3,20,324,0,0),(3,20,325,0,0),(3,20,326,0,0),(3,20,327,0,0),(3,20,328,0,0),(3,20,329,0,0),(3,20,330,0,0),(3,20,331,0,0),(3,20,332,0,0),(3,20,333,0,0),(3,20,334,0,0),(3,20,335,0,0),(3,20,336,0,0),(3,20,337,0,0),(3,20,338,0,0),(3,20,339,0,0),(3,20,340,0,0),(3,20,341,0,0),(3,20,342,0,0),(3,20,343,0,0),(3,20,344,0,0),(3,20,345,0,0),(3,20,346,0,0),(3,20,347,0,0),(3,20,348,0,0),(3,20,349,0,0),(3,21,350,0,0),(3,21,351,0,0),(3,21,352,0,0),(3,21,353,0,0),(3,21,354,0,0),(3,21,355,0,0),(3,21,356,0,0),(3,21,357,0,0),(3,21,358,0,0),(3,21,359,0,0),(3,21,360,0,0),(3,21,361,0,0),(3,21,362,0,0),(3,21,363,0,0),(3,21,364,0,0),(3,21,365,0,0),(3,21,366,0,0),(3,21,367,0,0),(3,21,368,0,0),(3,21,369,0,0),(3,21,370,0,0),(3,21,371,0,0),(3,21,372,0,0),(3,21,373,0,0),(3,21,374,0,0),(3,21,375,0,0),(3,21,376,0,0),(3,21,377,0,0),(3,21,378,0,0),(3,21,379,0,0),(3,21,380,0,0),(3,21,381,0,0),(3,21,382,0,0),(3,21,383,0,0),(3,21,384,0,0),(3,21,385,0,0),(3,21,386,0,0),(3,21,387,0,0),(3,22,388,0,0),(3,22,389,0,0),(3,22,390,0,0),(3,22,391,0,0),(3,22,392,0,0),(3,22,393,0,0),(3,22,394,0,0),(3,22,395,0,0),(3,22,396,0,0),(3,22,397,0,0),(3,22,398,0,0),(3,22,399,0,0),(3,22,400,0,0),(3,22,401,0,0),(3,22,402,0,0),(3,22,403,0,0),(3,22,404,0,0),(3,22,405,0,0),(3,22,406,0,0),(3,22,407,0,0),(3,22,408,0,0),(3,22,409,0,0),(3,22,410,0,0),(3,22,411,0,0),(3,22,412,0,0),(3,22,413,0,0),(3,22,414,0,0),(3,22,415,0,0),(3,22,416,0,0),(3,22,417,0,0),(3,22,418,0,0),(3,22,419,0,0),(3,22,420,0,0),(3,22,421,0,0),(3,22,422,0,0),(3,22,423,0,0),(3,22,424,0,0),(3,22,425,0,0),(3,22,426,0,0),(3,22,427,0,0),(3,22,428,0,0),(3,22,429,0,0),(3,22,430,0,0),(3,22,431,0,0),(3,22,432,0,0),(3,22,433,0,0),(3,22,434,0,0),(3,23,435,0,0),(3,23,436,0,0),(3,23,437,0,0),(3,23,438,0,0),(3,23,439,0,0),(3,23,440,0,0),(3,23,441,0,0),(3,23,442,0,0),(3,23,443,0,0),(3,23,444,0,0),(3,23,445,0,0),(3,23,446,0,0),(3,23,447,0,0),(3,23,448,0,0),(3,23,449,0,0),(3,23,450,0,0),(3,23,451,0,0),(3,23,452,0,0),(3,23,453,0,0),(3,23,454,0,0),(3,23,455,0,0),(3,23,456,0,0),(3,23,457,0,0),(3,23,458,0,0),(3,23,459,0,0),(3,23,460,0,0),(3,23,461,0,0),(3,23,462,0,0),(3,23,463,0,0),(3,23,464,0,0),(3,23,465,0,0),(3,23,466,0,0),(3,23,467,0,0),(3,23,468,0,0),(3,23,469,0,0),(3,23,470,0,0),(3,23,471,0,0),(3,23,472,0,0),(3,23,473,0,0),(3,29,474,0,0),(3,29,478,0,0),(3,29,479,0,0),(3,29,481,0,0),(3,29,488,0,0),(3,29,489,0,0),(3,29,490,0,0),(3,29,491,0,0),(3,29,493,0,0),(3,29,494,0,0),(3,29,495,0,0),(3,29,496,0,0),(3,29,497,0,0),(3,29,502,0,0),(3,29,503,0,0),(3,29,504,0,0),(3,29,505,0,0),(3,29,513,0,0),(3,10,518,0,0),(3,10,519,0,0),(3,10,520,0,0),(3,10,521,0,0),(3,10,522,0,0),(3,10,523,0,0),(3,33,524,0,0),(3,33,525,0,0),(3,33,526,0,0),(3,33,527,0,0),(3,33,528,0,0),(3,33,529,0,0),(3,33,530,0,0),(3,33,531,0,0),(3,33,532,0,0),(3,33,533,0,0),(3,33,534,0,0),(3,33,535,0,0),(3,33,536,0,0),(3,33,537,0,0),(3,33,538,0,0),(3,33,539,0,0),(3,29,540,0,0),(3,34,541,0,0),(3,34,542,0,0),(3,34,543,0,0),(3,34,544,0,0),(3,34,545,0,0),(3,34,546,0,0),(3,34,547,0,0),(3,34,548,0,0),(3,34,549,0,0),(3,34,550,0,0),(3,34,551,0,0),(3,34,552,0,0),(3,34,553,0,0),(3,34,554,0,0),(3,34,555,0,0),(3,34,556,0,0),(3,34,557,0,0),(3,34,558,0,0),(3,34,559,0,0),(3,36,560,0,0),(3,36,561,0,0),(3,36,562,0,0),(3,36,563,0,0),(3,36,564,0,0),(3,36,565,0,0),(3,36,566,0,0),(3,36,567,0,0),(3,36,568,0,0),(3,36,569,0,0),(3,36,570,0,0),(3,36,571,0,0),(3,36,572,0,0),(3,36,573,0,0),(3,36,574,0,0),(3,36,575,0,0),(3,36,576,0,0),(3,36,577,0,0),(3,36,578,0,0),(3,40,579,0,0),(3,40,580,0,0),(3,40,581,0,0),(3,40,582,0,0),(3,40,583,0,0),(3,40,584,0,0),(3,40,585,0,0),(3,40,586,0,0),(3,40,587,0,0),(3,40,588,0,0),(3,41,589,0,0),(3,41,590,0,0),(3,41,591,0,0),(3,41,592,0,0),(3,41,593,0,0),(3,41,594,0,0),(3,41,595,0,0),(3,41,596,0,0),(3,41,597,0,0),(3,41,598,0,0),(3,41,599,0,0),(3,41,600,0,0),(3,41,601,0,0),(3,41,602,0,0),(3,41,603,0,0),(3,42,604,0,0),(3,42,605,0,0),(3,42,606,0,0),(3,42,607,0,0),(3,42,608,0,0),(3,42,609,0,0),(3,42,610,0,0),(3,42,611,0,0),(3,42,612,0,0),(3,42,613,0,0),(3,42,614,0,0),(3,42,615,0,0),(3,42,616,0,0),(3,42,617,0,0),(3,42,618,0,0),(3,42,619,0,0),(3,42,620,0,0),(3,43,621,0,0),(3,43,622,0,0),(3,43,623,0,0),(3,43,624,0,0),(3,43,625,0,0),(3,43,626,0,0),(3,43,627,0,0),(3,43,628,0,0),(3,43,629,0,0),(3,43,630,0,0),(3,43,631,0,0),(3,43,632,0,0),(3,43,633,0,0),(3,43,634,0,0),(3,43,635,0,0),(3,43,636,0,0),(3,43,637,0,0),(3,43,638,0,0),(3,45,639,0,0),(3,45,640,0,0),(3,45,641,0,0),(3,45,642,0,0),(3,45,643,0,0),(3,45,644,0,0),(3,45,645,0,0),(3,47,646,0,0),(3,47,647,0,0),(3,47,648,0,0),(3,47,649,0,0),(3,47,650,0,0),(3,2,651,0,0),(3,29,652,0,0),(3,23,653,0,0),(3,23,654,0,0),(3,23,655,0,0),(3,23,656,0,0),(3,23,657,0,0),(3,23,658,0,0),(3,23,659,0,0),(3,23,660,0,0),(3,23,661,0,0),(3,22,662,0,0),(3,22,663,0,0),(3,22,664,0,0),(3,22,665,0,0),(3,22,666,0,0),(3,22,667,0,0),(3,22,668,0,0),(3,22,669,0,0),(3,22,670,0,0),(3,21,671,0,0),(3,21,672,0,0),(3,21,673,0,0),(3,21,674,0,0),(3,21,675,0,0),(3,21,676,0,0),(3,21,677,0,0),(3,21,678,0,0),(3,21,679,0,0),(3,20,680,0,0),(3,20,681,0,0),(3,20,682,0,0),(3,20,683,0,0),(3,20,684,0,0),(3,20,685,0,0),(3,20,686,0,0),(3,20,687,0,0),(3,20,688,0,0),(3,29,689,0,0),(3,41,690,0,0),(3,45,691,0,0),(3,29,692,0,0),(3,29,693,0,0),(3,29,694,0,0),(3,23,695,0,0),(3,22,696,0,0),(3,21,697,0,0),(3,20,698,0,0),(3,29,699,0,0),(3,6,700,0,0),(3,4,701,0,0),(3,2,702,0,0),(3,29,703,0,0),(3,23,704,0,0),(3,23,705,0,0),(3,21,706,0,0),(3,21,707,0,0),(3,18,708,0,0),(3,7,709,0,0),(3,45,710,0,0),(3,45,711,0,0),(3,23,712,0,0),(3,20,713,0,0),(3,21,714,0,0),(3,22,715,0,0),(3,29,716,0,0),(3,2,717,0,0),(3,13,718,0,0),(3,29,719,0,0),(3,13,720,0,0),(3,29,721,0,0),(3,29,722,0,0),(3,29,723,0,0),(3,9,729,0,0),(3,29,750,0,0),(4,6,1,0,0),(4,6,2,0,0),(4,6,3,0,0),(4,6,4,0,0),(4,6,5,0,0),(4,6,6,0,0),(4,6,7,0,0),(4,6,8,0,0),(4,6,9,0,0),(4,6,10,0,0),(4,6,11,0,0),(4,6,12,0,0),(4,6,13,0,0),(4,6,14,0,0),(4,6,15,0,0),(4,6,16,0,0),(4,6,17,0,0),(4,6,18,0,0),(4,6,19,0,0),(4,6,20,0,0),(4,6,21,0,0),(4,6,22,0,0),(4,6,23,0,0),(4,6,24,0,0),(4,6,25,0,0),(4,6,26,0,0),(4,6,27,0,0),(4,6,28,0,0),(4,6,29,0,0),(4,6,30,0,0),(4,6,31,0,0),(4,6,32,0,0),(4,6,33,0,0),(4,6,34,0,0),(4,6,35,0,0),(4,6,36,0,0),(4,7,37,0,0),(4,7,38,0,0),(4,7,39,0,0),(4,7,40,0,0),(4,7,41,0,0),(4,7,42,0,0),(4,7,43,0,0),(4,7,44,0,0),(4,7,45,0,0),(4,7,46,0,0),(4,7,47,0,0),(4,7,48,0,0),(4,7,49,0,0),(4,7,50,0,0),(4,7,51,0,0),(4,7,52,0,0),(4,7,53,0,0),(4,7,54,0,0),(4,7,55,0,0),(4,7,56,0,0),(4,7,57,0,0),(4,7,58,0,0),(4,7,59,0,0),(4,7,60,0,0),(4,7,61,0,0),(4,7,62,0,0),(4,7,63,0,0),(4,7,64,0,0),(4,7,65,0,0),(4,4,66,0,0),(4,4,67,0,0),(4,4,68,0,0),(4,4,69,0,0),(4,4,70,0,0),(4,4,71,0,0),(4,4,72,0,0),(4,4,73,0,0),(4,4,74,0,0),(4,4,75,0,0),(4,4,76,0,0),(4,4,77,0,0),(4,4,78,0,0),(4,4,79,0,0),(4,4,80,0,0),(4,4,81,0,0),(4,4,82,0,0),(4,4,83,0,0),(4,4,84,0,0),(4,4,85,0,0),(4,4,86,0,0),(4,4,87,0,0),(4,4,88,0,0),(4,4,89,0,0),(4,4,90,0,0),(4,4,91,0,0),(4,4,92,0,0),(4,4,93,0,0),(4,4,94,0,0),(4,4,95,0,0),(4,4,96,0,0),(4,4,97,0,0),(4,4,98,0,0),(4,4,99,0,0),(4,4,100,0,0),(4,4,101,0,0),(4,4,102,0,0),(4,4,103,0,0),(4,4,104,0,0),(4,4,105,0,0),(4,4,106,0,0),(4,4,107,0,0),(4,4,108,0,0),(4,4,109,0,0),(4,2,110,0,0),(4,2,111,0,0),(4,2,112,0,0),(4,2,113,0,0),(4,2,114,0,0),(4,2,115,0,0),(4,2,116,0,0),(4,2,117,0,0),(4,2,118,0,0),(4,2,119,0,0),(4,2,120,0,0),(4,2,121,0,0),(4,2,122,0,0),(4,2,123,0,0),(4,2,124,0,0),(4,2,125,0,0),(4,26,126,0,0),(4,26,127,0,0),(4,26,128,0,0),(4,26,129,0,0),(4,26,130,0,0),(4,26,131,0,0),(4,26,132,0,0),(4,26,133,0,0),(4,26,134,0,0),(4,26,135,0,0),(4,26,136,0,0),(4,26,137,0,0),(4,26,138,0,0),(4,26,139,0,0),(4,26,140,0,0),(4,26,141,0,0),(4,26,142,0,0),(4,26,143,0,0),(4,26,144,0,0),(4,26,145,0,0),(4,26,146,0,0),(4,26,147,0,0),(4,26,148,0,0),(4,26,149,0,0),(4,26,150,0,0),(4,4,151,0,0),(4,6,152,0,0),(4,7,153,0,0),(4,26,154,0,0),(4,13,155,0,0),(4,13,156,0,0),(4,13,157,0,0),(4,13,158,0,0),(4,13,159,0,0),(4,13,160,0,0),(4,13,161,0,0),(4,13,162,0,0),(4,13,163,0,0),(4,13,164,0,0),(4,13,165,0,0),(4,13,166,0,0),(4,13,167,0,0),(4,13,168,0,0),(4,13,169,0,0),(4,13,170,0,0),(4,13,171,0,0),(4,13,172,0,0),(4,14,173,0,0),(4,14,174,0,0),(4,14,175,0,0),(4,14,176,0,0),(4,14,177,0,0),(4,14,178,0,0),(4,14,179,0,0),(4,14,180,0,0),(4,14,181,0,0),(4,14,182,0,0),(4,14,183,0,0),(4,14,184,0,0),(4,14,185,0,0),(4,14,186,0,0),(4,14,187,0,0),(4,14,188,0,0),(4,14,189,0,0),(4,14,190,0,0),(4,14,191,0,0),(4,14,192,0,0),(4,14,193,0,0),(4,14,194,0,0),(4,14,195,0,0),(4,14,196,0,0),(4,14,197,0,0),(4,14,198,0,0),(4,14,199,0,0),(4,14,200,0,0),(4,14,201,0,0),(4,14,202,0,0),(4,14,203,0,0),(4,8,204,0,0),(4,8,205,0,0),(4,8,206,0,0),(4,8,207,0,0),(4,8,208,0,0),(4,8,209,0,0),(4,8,210,0,0),(4,8,211,0,0),(4,8,212,0,0),(4,8,213,0,0),(4,8,214,0,0),(4,8,215,0,0),(4,8,216,0,0),(4,8,217,0,0),(4,8,218,0,0),(4,10,219,0,0),(4,10,220,0,0),(4,10,221,0,0),(4,10,222,0,0),(4,10,223,0,0),(4,10,224,0,0),(4,10,225,0,0),(4,10,226,0,0),(4,10,227,0,0),(4,10,228,0,0),(4,10,229,0,0),(4,10,230,0,0),(4,9,231,0,0),(4,9,232,0,0),(4,9,233,0,0),(4,9,234,0,0),(4,9,235,0,0),(4,9,236,0,0),(4,9,237,0,0),(4,9,238,0,0),(4,9,239,0,0),(4,9,240,0,0),(4,9,241,0,0),(4,9,242,0,0),(4,9,243,0,0),(4,9,244,0,0),(4,9,245,0,0),(4,9,246,0,0),(4,9,247,0,0),(4,9,248,0,0),(4,9,249,0,0),(4,9,250,0,0),(4,9,251,0,0),(4,9,252,0,0),(4,9,253,0,0),(4,9,254,0,0),(4,16,255,0,0),(4,16,256,0,0),(4,16,257,0,0),(4,16,258,0,0),(4,16,259,0,0),(4,16,260,0,0),(4,16,261,0,0),(4,16,262,0,0),(4,16,263,0,0),(4,16,264,0,0),(4,16,265,0,0),(4,16,266,0,0),(4,16,267,0,0),(4,16,268,0,0),(4,16,269,0,0),(4,16,270,0,0),(4,16,271,0,0),(4,16,272,0,0),(4,16,273,0,0),(4,16,274,0,0),(4,16,275,0,0),(4,16,276,0,0),(4,16,277,0,0),(4,15,278,0,0),(4,15,279,0,0),(4,15,280,0,0),(4,15,281,0,0),(4,15,282,0,0),(4,15,283,0,0),(4,15,284,0,0),(4,15,285,0,0),(4,15,286,0,0),(4,15,287,0,0),(4,18,288,0,0),(4,18,289,0,0),(4,18,290,0,0),(4,18,291,0,0),(4,18,292,0,0),(4,18,293,0,0),(4,18,294,0,0),(4,18,295,0,0),(4,18,296,0,0),(4,18,297,0,0),(4,18,298,0,0),(4,18,299,0,0),(4,18,300,0,0),(4,18,301,0,0),(4,18,302,0,0),(4,18,303,0,0),(4,18,304,0,0),(4,19,305,0,0),(4,19,306,0,0),(4,19,307,0,0),(4,19,308,0,0),(4,19,309,0,0),(4,19,310,0,0),(4,19,311,0,0),(4,19,312,0,0),(4,20,313,0,0),(4,20,314,0,0),(4,20,315,0,0),(4,20,316,0,0),(4,20,317,0,0),(4,20,318,0,0),(4,20,319,0,0),(4,20,320,0,0),(4,20,321,0,0),(4,20,322,0,0),(4,20,323,0,0),(4,20,324,0,0),(4,20,325,0,0),(4,20,326,0,0),(4,20,327,0,0),(4,20,328,0,0),(4,20,329,0,0),(4,20,330,0,0),(4,20,331,0,0),(4,20,332,0,0),(4,20,333,0,0),(4,20,334,0,0),(4,20,335,0,0),(4,20,336,0,0),(4,20,337,0,0),(4,20,338,0,0),(4,20,339,0,0),(4,20,340,0,0),(4,20,341,0,0),(4,20,342,0,0),(4,20,343,0,0),(4,20,344,0,0),(4,20,345,0,0),(4,20,346,0,0),(4,20,347,0,0),(4,20,348,0,0),(4,20,349,0,0),(4,21,350,0,0),(4,21,351,0,0),(4,21,352,0,0),(4,21,353,0,0),(4,21,354,0,0),(4,21,355,0,0),(4,21,356,0,0),(4,21,357,0,0),(4,21,358,0,0),(4,21,359,0,0),(4,21,360,0,0),(4,21,361,0,0),(4,21,362,0,0),(4,21,363,0,0),(4,21,364,0,0),(4,21,365,0,0),(4,21,366,0,0),(4,21,367,0,0),(4,21,368,0,0),(4,21,369,0,0),(4,21,370,0,0),(4,21,371,0,0),(4,21,372,0,0),(4,21,373,0,0),(4,21,374,0,0),(4,21,375,0,0),(4,21,376,0,0),(4,21,377,0,0),(4,21,378,0,0),(4,21,379,0,0),(4,21,380,0,0),(4,21,381,0,0),(4,21,382,0,0),(4,21,383,0,0),(4,21,384,0,0),(4,21,385,0,0),(4,21,386,0,0),(4,21,387,0,0),(4,22,388,0,0),(4,22,389,0,0),(4,22,390,0,0),(4,22,391,0,0),(4,22,392,0,0),(4,22,393,0,0),(4,22,394,0,0),(4,22,395,0,0),(4,22,396,0,0),(4,22,397,0,0),(4,22,398,0,0),(4,22,399,0,0),(4,22,400,0,0),(4,22,401,0,0),(4,22,402,0,0),(4,22,403,0,0),(4,22,404,0,0),(4,22,405,0,0),(4,22,406,0,0),(4,22,407,0,0),(4,22,408,0,0),(4,22,409,0,0),(4,22,410,0,0),(4,22,411,0,0),(4,22,412,0,0),(4,22,413,0,0),(4,22,414,0,0),(4,22,415,0,0),(4,22,416,0,0),(4,22,417,0,0),(4,22,418,0,0),(4,22,419,0,0),(4,22,420,0,0),(4,22,421,0,0),(4,22,422,0,0),(4,22,423,0,0),(4,22,424,0,0),(4,22,425,0,0),(4,22,426,0,0),(4,22,427,0,0),(4,22,428,0,0),(4,22,429,0,0),(4,22,430,0,0),(4,22,431,0,0),(4,22,432,0,0),(4,22,433,0,0),(4,22,434,0,0),(4,23,435,0,0),(4,23,436,0,0),(4,23,437,0,0),(4,23,438,0,0),(4,23,439,0,0),(4,23,440,0,0),(4,23,441,0,0),(4,23,442,0,0),(4,23,443,0,0),(4,23,444,0,0),(4,23,445,0,0),(4,23,446,0,0),(4,23,447,0,0),(4,23,448,0,0),(4,23,449,0,0),(4,23,450,0,0),(4,23,451,0,0),(4,23,452,0,0),(4,23,453,0,0),(4,23,454,0,0),(4,23,455,0,0),(4,23,456,0,0),(4,23,457,0,0),(4,23,458,0,0),(4,23,459,0,0),(4,23,460,0,0),(4,23,461,0,0),(4,23,462,0,0),(4,23,463,0,0),(4,23,464,0,0),(4,23,465,0,0),(4,23,466,0,0),(4,23,467,0,0),(4,23,468,0,0),(4,23,469,0,0),(4,23,470,0,0),(4,23,471,0,0),(4,23,472,0,0),(4,23,473,0,0),(4,29,474,0,0),(4,29,478,0,0),(4,29,479,0,0),(4,29,481,0,0),(4,29,488,0,0),(4,29,489,0,0),(4,29,490,0,0),(4,29,491,0,0),(4,29,493,0,0),(4,29,494,0,0),(4,29,495,0,0),(4,29,496,0,0),(4,29,497,0,0),(4,29,502,0,0),(4,29,503,0,0),(4,29,504,0,0),(4,29,505,0,0),(4,29,513,0,0),(4,10,518,0,0),(4,10,519,0,0),(4,10,520,0,0),(4,10,521,0,0),(4,10,522,0,0),(4,10,523,0,0),(4,33,524,0,0),(4,33,525,0,0),(4,33,526,0,0),(4,33,527,0,0),(4,33,528,0,0),(4,33,529,0,0),(4,33,530,0,0),(4,33,531,0,0),(4,33,532,0,0),(4,33,533,0,0),(4,33,534,0,0),(4,33,535,0,0),(4,33,536,0,0),(4,33,537,0,0),(4,33,538,0,0),(4,33,539,0,0),(4,29,540,0,0),(4,34,541,0,0),(4,34,542,0,0),(4,34,543,0,0),(4,34,544,0,0),(4,34,545,0,0),(4,34,546,0,0),(4,34,547,0,0),(4,34,548,0,0),(4,34,549,0,0),(4,34,550,0,0),(4,34,551,0,0),(4,34,552,0,0),(4,34,553,0,0),(4,34,554,0,0),(4,34,555,0,0),(4,34,556,0,0),(4,34,557,0,0),(4,34,558,0,0),(4,34,559,0,0),(4,36,560,0,0),(4,36,561,0,0),(4,36,562,0,0),(4,36,563,0,0),(4,36,564,0,0),(4,36,565,0,0),(4,36,566,0,0),(4,36,567,0,0),(4,36,568,0,0),(4,36,569,0,0),(4,36,570,0,0),(4,36,571,0,0),(4,36,572,0,0),(4,36,573,0,0),(4,36,574,0,0),(4,36,575,0,0),(4,36,576,0,0),(4,36,577,0,0),(4,36,578,0,0),(4,40,579,0,0),(4,40,580,0,0),(4,40,581,0,0),(4,40,582,0,0),(4,40,583,0,0),(4,40,584,0,0),(4,40,585,0,0),(4,40,586,0,0),(4,40,587,0,0),(4,40,588,0,0),(4,41,589,0,0),(4,41,590,0,0),(4,41,591,0,0),(4,41,592,0,0),(4,41,593,0,0),(4,41,594,0,0),(4,41,595,0,0),(4,41,596,0,0),(4,41,597,0,0),(4,41,598,0,0),(4,41,599,0,0),(4,41,600,0,0),(4,41,601,0,0),(4,41,602,0,0),(4,41,603,0,0),(4,42,604,0,0),(4,42,605,0,0),(4,42,606,0,0),(4,42,607,0,0),(4,42,608,0,0),(4,42,609,0,0),(4,42,610,0,0),(4,42,611,0,0),(4,42,612,0,0),(4,42,613,0,0),(4,42,614,0,0),(4,42,615,0,0),(4,42,616,0,0),(4,42,617,0,0),(4,42,618,0,0),(4,42,619,0,0),(4,42,620,0,0),(4,43,621,0,0),(4,43,622,0,0),(4,43,623,0,0),(4,43,624,0,0),(4,43,625,0,0),(4,43,626,0,0),(4,43,627,0,0),(4,43,628,0,0),(4,43,629,0,0),(4,43,630,0,0),(4,43,631,0,0),(4,43,632,0,0),(4,43,633,0,0),(4,43,634,0,0),(4,43,635,0,0),(4,43,636,0,0),(4,43,637,0,0),(4,43,638,0,0),(4,45,639,0,0),(4,45,640,0,0),(4,45,641,0,0),(4,45,642,0,0),(4,45,643,0,0),(4,45,644,0,0),(4,45,645,0,0),(4,47,646,0,0),(4,47,647,0,0),(4,47,648,0,0),(4,47,649,0,0),(4,47,650,0,0),(4,2,651,0,0),(4,29,652,0,0),(4,23,653,0,0),(4,23,654,0,0),(4,23,655,0,0),(4,23,656,0,0),(4,23,657,0,0),(4,23,658,0,0),(4,23,659,0,0),(4,23,660,0,0),(4,23,661,0,0),(4,22,662,0,0),(4,22,663,0,0),(4,22,664,0,0),(4,22,665,0,0),(4,22,666,0,0),(4,22,667,0,0),(4,22,668,0,0),(4,22,669,0,0),(4,22,670,0,0),(4,21,671,0,0),(4,21,672,0,0),(4,21,673,0,0),(4,21,674,0,0),(4,21,675,0,0),(4,21,676,0,0),(4,21,677,0,0),(4,21,678,0,0),(4,21,679,0,0),(4,20,680,0,0),(4,20,681,0,0),(4,20,682,0,0),(4,20,683,0,0),(4,20,684,0,0),(4,20,685,0,0),(4,20,686,0,0),(4,20,687,0,0),(4,20,688,0,0),(4,29,689,0,0),(4,41,690,0,0),(4,45,691,0,0),(4,29,692,0,0),(4,29,693,0,0),(4,29,694,0,0),(4,23,695,0,0),(4,22,696,0,0),(4,21,697,0,0),(4,20,698,0,0),(4,29,699,0,0),(4,6,700,0,0),(4,4,701,0,0),(4,2,702,0,0),(4,29,703,0,0),(4,23,704,0,0),(4,23,705,0,0),(4,21,706,0,0),(4,21,707,0,0),(4,18,708,0,0),(4,7,709,0,0),(4,45,710,0,0),(4,45,711,0,0),(4,23,712,0,0),(4,20,713,0,0),(4,21,714,0,0),(4,22,715,0,0),(4,29,716,0,0),(4,2,717,0,0),(4,13,718,0,0),(4,29,719,0,0),(4,13,720,0,0),(4,29,721,0,0),(4,29,722,0,0),(4,29,723,0,0),(4,9,729,0,0),(4,29,750,0,0),(5,6,1,0,0),(5,6,2,0,0),(5,6,3,0,0),(5,6,4,0,0),(5,6,5,0,0),(5,6,6,0,0),(5,6,7,0,0),(5,6,8,0,0),(5,6,9,0,0),(5,6,10,0,0),(5,6,11,0,0),(5,6,12,0,0),(5,6,13,0,0),(5,6,14,0,0),(5,6,15,0,0),(5,6,16,0,0),(5,6,17,0,0),(5,6,18,0,0),(5,6,19,0,0),(5,6,20,0,0),(5,6,21,0,1),(5,6,22,0,1),(5,6,23,0,0),(5,6,24,0,0),(5,6,25,0,0),(5,6,26,0,0),(5,6,27,0,0),(5,6,28,0,0),(5,6,29,0,0),(5,6,30,0,0),(5,6,31,0,0),(5,6,32,0,0),(5,6,33,0,0),(5,6,34,0,0),(5,6,35,0,0),(5,6,36,0,0),(5,7,37,0,0),(5,7,38,0,0),(5,7,39,0,0),(5,7,40,0,0),(5,7,41,0,0),(5,7,42,0,0),(5,7,43,0,0),(5,7,44,0,0),(5,7,45,0,0),(5,7,46,0,0),(5,7,47,0,0),(5,7,48,0,0),(5,7,49,0,0),(5,7,50,0,0),(5,7,51,0,0),(5,7,52,0,0),(5,7,53,0,0),(5,7,54,0,0),(5,7,55,0,0),(5,7,56,0,1),(5,7,57,0,1),(5,7,58,0,0),(5,7,59,0,0),(5,7,60,0,0),(5,7,61,0,0),(5,7,62,0,0),(5,7,63,0,0),(5,7,64,0,0),(5,7,65,0,0),(5,4,66,0,0),(5,4,67,0,0),(5,4,68,0,0),(5,4,69,0,0),(5,4,70,0,0),(5,4,71,0,0),(5,4,72,0,0),(5,4,73,0,0),(5,4,74,0,0),(5,4,75,0,0),(5,4,76,0,0),(5,4,77,0,0),(5,4,78,0,0),(5,4,79,0,0),(5,4,80,0,0),(5,4,81,0,0),(5,4,82,0,0),(5,4,83,0,0),(5,4,84,0,0),(5,4,85,0,0),(5,4,86,0,0),(5,4,87,0,0),(5,4,88,0,0),(5,4,89,0,0),(5,4,90,0,1),(5,4,91,0,1),(5,4,92,0,0),(5,4,93,0,0),(5,4,94,0,0),(5,4,95,0,0),(5,4,96,0,0),(5,4,97,0,0),(5,4,98,0,0),(5,4,99,0,0),(5,4,100,0,0),(5,4,101,0,0),(5,4,102,0,0),(5,4,103,0,0),(5,4,104,0,0),(5,4,105,0,0),(5,4,106,0,0),(5,4,107,0,0),(5,4,108,0,0),(5,4,109,0,0),(5,2,110,0,0),(5,2,111,0,0),(5,2,112,0,0),(5,2,113,0,0),(5,2,114,0,0),(5,2,115,0,0),(5,2,116,0,0),(5,2,117,0,0),(5,2,118,0,0),(5,2,119,0,0),(5,2,120,0,0),(5,2,121,0,0),(5,2,122,0,1),(5,2,123,0,1),(5,2,124,0,0),(5,2,125,0,0),(5,26,126,0,0),(5,26,127,0,0),(5,26,128,0,0),(5,26,129,0,0),(5,26,130,0,0),(5,26,131,0,0),(5,26,132,0,0),(5,26,133,0,0),(5,26,134,0,0),(5,26,135,0,0),(5,26,136,0,0),(5,26,137,0,1),(5,26,138,0,1),(5,26,139,0,0),(5,26,140,0,0),(5,26,141,0,0),(5,26,142,0,0),(5,26,143,0,0),(5,26,144,0,0),(5,26,145,0,0),(5,26,146,0,0),(5,26,147,0,0),(5,26,148,0,0),(5,26,149,0,0),(5,26,150,0,0),(5,13,155,0,0),(5,13,156,0,0),(5,13,157,0,0),(5,13,158,0,0),(5,13,159,0,0),(5,13,160,0,0),(5,13,161,0,0),(5,13,162,0,0),(5,13,163,0,0),(5,13,164,0,0),(5,13,165,0,0),(5,13,166,0,1),(5,13,167,0,1),(5,13,168,0,0),(5,13,169,0,0),(5,13,170,0,0),(5,13,171,0,0),(5,14,173,0,0),(5,14,174,0,0),(5,14,175,0,0),(5,14,176,0,0),(5,14,177,0,0),(5,14,178,0,0),(5,14,179,0,0),(5,14,180,0,0),(5,14,181,0,0),(5,14,182,0,0),(5,14,183,0,0),(5,14,184,0,0),(5,14,185,0,0),(5,14,186,0,0),(5,14,187,0,0),(5,14,188,0,0),(5,14,189,0,0),(5,14,190,0,1),(5,14,191,0,1),(5,14,192,0,0),(5,14,193,0,0),(5,14,194,0,0),(5,14,195,0,0),(5,14,196,0,0),(5,14,197,0,0),(5,14,198,0,0),(5,14,199,0,0),(5,14,200,0,0),(5,14,201,0,0),(5,14,202,0,0),(5,14,203,0,0),(5,8,204,0,0),(5,8,205,0,1),(5,8,206,0,1),(5,8,207,0,0),(5,8,208,0,0),(5,8,209,0,0),(5,8,210,0,1),(5,8,211,0,1),(5,8,212,0,0),(5,8,213,0,0),(5,8,214,0,0),(5,8,215,0,1),(5,8,216,0,0),(5,8,217,0,0),(5,8,218,0,0),(5,10,219,0,0),(5,10,220,0,0),(5,10,221,0,0),(5,10,222,0,0),(5,10,223,0,0),(5,10,224,0,0),(5,10,225,0,0),(5,10,226,0,0),(5,10,227,0,0),(5,10,228,0,1),(5,10,229,0,0),(5,10,230,0,0),(5,9,231,0,0),(5,9,232,0,0),(5,9,233,0,0),(5,9,234,0,0),(5,9,235,0,0),(5,9,236,0,0),(5,9,237,0,0),(5,9,238,0,0),(5,9,239,0,0),(5,9,240,0,0),(5,9,241,0,0),(5,9,242,0,0),(5,9,243,0,1),(5,9,244,0,1),(5,9,245,0,0),(5,9,246,0,0),(5,9,247,0,0),(5,9,248,0,0),(5,9,249,0,0),(5,9,250,0,0),(5,9,251,0,0),(5,9,252,0,0),(5,9,253,0,0),(5,9,254,0,0),(5,16,255,0,0),(5,16,256,0,0),(5,16,257,0,0),(5,16,258,0,0),(5,16,259,0,0),(5,16,260,0,0),(5,16,261,0,0),(5,16,262,0,0),(5,16,263,0,0),(5,16,264,0,0),(5,16,265,0,0),(5,16,266,0,0),(5,16,267,0,0),(5,16,268,0,0),(5,16,269,0,1),(5,16,270,0,1),(5,16,271,0,0),(5,16,272,0,0),(5,16,273,0,0),(5,16,274,0,0),(5,16,275,0,0),(5,16,276,0,0),(5,16,277,0,0),(5,15,278,0,0),(5,15,279,0,0),(5,15,280,0,0),(5,15,281,0,0),(5,15,282,0,0),(5,15,283,0,0),(5,15,285,0,1),(5,15,286,0,1),(5,15,287,0,0),(5,18,288,0,0),(5,18,289,0,0),(5,18,290,0,0),(5,18,291,0,0),(5,18,292,0,0),(5,18,293,0,0),(5,18,294,0,0),(5,18,295,0,1),(5,18,296,0,1),(5,18,297,0,0),(5,18,298,0,0),(5,18,299,0,0),(5,18,300,0,0),(5,18,301,0,0),(5,18,302,0,0),(5,18,303,0,0),(5,18,304,0,0),(5,19,305,0,0),(5,19,306,0,0),(5,19,307,0,0),(5,19,308,0,1),(5,19,309,0,1),(5,19,310,0,0),(5,19,311,0,0),(5,19,312,0,0),(5,20,313,0,0),(5,20,314,0,0),(5,20,315,0,0),(5,20,316,0,0),(5,20,317,0,0),(5,20,318,0,0),(5,20,319,0,0),(5,20,320,0,0),(5,20,321,0,0),(5,20,322,0,0),(5,20,323,0,0),(5,20,324,0,0),(5,20,325,0,0),(5,20,326,0,0),(5,20,327,0,0),(5,20,328,0,0),(5,20,329,0,0),(5,20,330,0,0),(5,20,331,0,1),(5,20,332,0,1),(5,20,333,0,0),(5,20,334,0,0),(5,20,335,0,0),(5,20,336,0,0),(5,20,337,0,0),(5,20,338,0,0),(5,20,339,0,0),(5,20,340,0,0),(5,20,341,0,0),(5,20,342,0,0),(5,20,343,0,0),(5,20,344,0,0),(5,20,345,0,0),(5,20,346,0,0),(5,20,347,0,0),(5,20,348,0,0),(5,20,349,0,0),(5,21,350,0,0),(5,21,351,0,0),(5,21,352,0,0),(5,21,353,0,0),(5,21,354,0,0),(5,21,355,0,0),(5,21,356,0,0),(5,21,357,0,0),(5,21,358,0,0),(5,21,359,0,0),(5,21,360,0,0),(5,21,361,0,0),(5,21,362,0,0),(5,21,363,0,0),(5,21,364,0,0),(5,21,365,0,0),(5,21,366,0,0),(5,21,367,0,0),(5,21,368,0,0),(5,21,369,0,1),(5,21,370,0,1),(5,21,371,0,0),(5,21,372,0,0),(5,21,373,0,0),(5,21,374,0,0),(5,21,375,0,0),(5,21,376,0,0),(5,21,377,0,0),(5,21,378,0,0),(5,21,379,0,0),(5,21,380,0,0),(5,21,381,0,0),(5,21,382,0,0),(5,21,383,0,0),(5,21,384,0,0),(5,21,385,0,0),(5,21,386,0,0),(5,21,387,0,0),(5,22,388,0,0),(5,22,389,0,0),(5,22,390,0,0),(5,22,391,0,0),(5,22,392,0,0),(5,22,393,0,0),(5,22,394,0,0),(5,22,395,0,0),(5,22,396,0,0),(5,22,397,0,0),(5,22,398,0,0),(5,22,399,0,0),(5,22,400,0,0),(5,22,401,0,0),(5,22,402,0,0),(5,22,403,0,0),(5,22,404,0,0),(5,22,405,0,0),(5,22,406,0,0),(5,22,407,0,0),(5,22,408,0,0),(5,22,409,0,0),(5,22,410,0,1),(5,22,411,0,1),(5,22,412,0,0),(5,22,413,0,0),(5,22,414,0,0),(5,22,415,0,0),(5,22,416,0,0),(5,22,417,0,0),(5,22,418,0,0),(5,22,419,0,0),(5,22,420,0,0),(5,22,421,0,0),(5,22,422,0,0),(5,22,423,0,0),(5,22,424,0,0),(5,22,425,0,0),(5,22,426,0,0),(5,22,427,0,0),(5,22,428,0,0),(5,22,429,0,0),(5,22,430,0,0),(5,22,431,0,0),(5,22,432,0,0),(5,22,433,0,0),(5,22,434,0,0),(5,23,435,0,0),(5,23,436,0,0),(5,23,437,0,0),(5,23,438,0,0),(5,23,439,0,0),(5,23,440,0,0),(5,23,441,0,0),(5,23,442,0,0),(5,23,443,0,0),(5,23,444,0,0),(5,23,445,0,0),(5,23,446,0,0),(5,23,447,0,0),(5,23,448,0,0),(5,23,449,0,0),(5,23,450,0,0),(5,23,451,0,0),(5,23,452,0,0),(5,23,453,0,0),(5,23,454,0,1),(5,23,455,0,1),(5,23,456,0,0),(5,23,457,0,0),(5,23,458,0,0),(5,23,459,0,0),(5,23,460,0,0),(5,23,461,0,0),(5,23,462,0,0),(5,23,463,0,0),(5,23,464,0,0),(5,23,465,0,0),(5,23,466,0,0),(5,23,467,0,0),(5,23,468,0,0),(5,23,469,0,0),(5,23,470,0,0),(5,23,471,0,0),(5,23,472,0,0),(5,23,473,0,0),(5,29,474,0,0),(5,29,478,0,0),(5,29,479,0,0),(5,29,481,0,0),(5,29,488,0,0),(5,29,489,0,0),(5,29,490,0,0),(5,29,491,0,0),(5,29,493,0,0),(5,29,494,0,0),(5,29,495,0,0),(5,29,496,0,0),(5,29,497,0,0),(5,29,502,0,0),(5,29,503,0,0),(5,29,504,0,0),(5,29,505,0,0),(5,10,518,0,0),(5,10,519,0,0),(5,10,520,0,0),(5,10,521,0,0),(5,10,522,0,0),(5,10,523,0,0),(5,33,524,0,0),(5,33,525,0,0),(5,33,526,0,0),(5,33,527,0,0),(5,33,528,0,0),(5,33,529,0,0),(5,33,530,0,0),(5,33,531,0,0),(5,33,532,0,0),(5,33,533,0,0),(5,33,534,0,0),(5,33,535,0,0),(5,33,536,0,0),(5,33,537,0,0),(5,33,538,0,1),(5,33,539,0,1),(5,29,540,0,0),(5,34,541,0,0),(5,34,542,0,0),(5,34,543,0,0),(5,34,544,0,0),(5,34,545,0,0),(5,34,546,0,0),(5,34,547,0,0),(5,34,548,0,0),(5,34,549,0,1),(5,34,550,0,1),(5,34,551,0,0),(5,34,552,0,0),(5,34,553,0,0),(5,34,554,0,0),(5,34,555,0,0),(5,34,556,0,0),(5,34,557,0,0),(5,34,558,0,0),(5,34,559,0,0),(5,36,560,0,0),(5,36,561,0,1),(5,36,562,0,1),(5,36,563,0,0),(5,36,564,0,1),(5,36,565,0,0),(5,36,566,0,0),(5,36,567,0,0),(5,36,568,0,0),(5,36,569,0,0),(5,36,570,0,0),(5,36,571,0,1),(5,36,572,0,1),(5,36,573,0,0),(5,36,574,0,0),(5,36,575,0,0),(5,36,576,0,1),(5,36,577,0,0),(5,36,578,0,0),(5,40,579,0,0),(5,40,580,0,0),(5,40,581,0,0),(5,40,582,0,0),(5,40,583,0,0),(5,40,584,0,0),(5,40,585,0,1),(5,40,586,0,1),(5,40,587,0,0),(5,40,588,0,0),(5,41,589,0,0),(5,41,590,0,0),(5,41,591,0,0),(5,41,592,0,0),(5,41,593,0,0),(5,41,594,0,0),(5,41,595,0,0),(5,41,596,0,0),(5,41,597,0,0),(5,41,598,0,0),(5,41,599,0,0),(5,41,600,0,1),(5,41,601,0,1),(5,41,602,0,0),(5,41,603,0,0),(5,42,604,0,0),(5,42,605,0,0),(5,42,606,0,0),(5,42,607,0,0),(5,42,608,0,0),(5,42,609,0,0),(5,42,610,0,0),(5,42,611,0,0),(5,42,612,0,0),(5,42,613,0,0),(5,42,614,0,0),(5,42,615,0,0),(5,42,616,0,0),(5,42,617,0,1),(5,42,618,0,1),(5,42,619,0,0),(5,42,620,0,0),(5,43,621,0,0),(5,43,622,0,0),(5,43,623,0,0),(5,43,624,0,0),(5,43,625,0,0),(5,43,626,0,0),(5,43,627,0,0),(5,43,628,0,0),(5,43,629,0,0),(5,43,630,0,0),(5,43,631,0,0),(5,43,632,0,0),(5,43,633,0,0),(5,43,634,0,0),(5,43,635,0,1),(5,43,636,0,1),(5,43,637,0,0),(5,43,638,0,0),(5,45,639,0,0),(5,45,640,0,0),(5,45,641,0,1),(5,45,642,0,1),(5,45,643,0,0),(5,45,644,0,1),(5,45,645,0,0),(5,47,646,0,0),(5,47,647,0,1),(5,47,648,0,1),(5,47,649,0,0),(5,47,650,0,0),(5,2,651,0,0),(5,23,653,0,1),(5,23,654,0,1),(5,23,655,0,1),(5,23,656,0,1),(5,23,657,0,1),(5,23,658,0,1),(5,23,659,0,1),(5,23,660,0,1),(5,23,661,0,1),(5,22,662,0,1),(5,22,663,0,1),(5,22,664,0,1),(5,22,665,0,1),(5,22,666,0,1),(5,22,667,0,1),(5,22,668,0,1),(5,22,669,0,1),(5,22,670,0,1),(5,21,671,0,1),(5,21,672,0,1),(5,21,673,0,1),(5,21,674,0,1),(5,21,675,0,1),(5,21,676,0,1),(5,21,677,0,1),(5,21,678,0,1),(5,21,679,0,1),(5,20,680,0,1),(5,20,681,0,1),(5,20,682,0,1),(5,20,683,0,1),(5,20,684,0,1),(5,20,685,0,1),(5,20,686,0,1),(5,20,687,0,1),(5,20,688,0,1),(5,41,690,0,0),(5,45,691,0,0),(5,23,695,0,0),(5,22,696,0,0),(5,21,697,0,0),(5,20,698,0,0),(5,6,700,0,1),(5,4,701,0,1),(5,2,702,0,1),(5,23,704,0,0),(5,23,705,0,0),(5,21,706,0,0),(5,21,707,0,0),(5,18,708,0,0),(5,7,709,0,0),(5,45,710,0,0),(5,45,711,0,0),(5,23,712,0,1),(5,20,713,0,1),(5,21,714,0,1),(5,22,715,0,1),(5,2,717,0,0),(5,13,718,0,0),(5,13,720,0,0),(5,9,729,0,1),(5,29,750,0,0),(6,6,1,0,0),(6,6,2,0,0),(6,6,3,0,0),(6,6,4,0,0),(6,6,5,0,0),(6,6,6,0,0),(6,6,7,0,0),(6,6,8,0,0),(6,6,9,0,0),(6,6,10,0,0),(6,6,11,0,0),(6,6,12,0,0),(6,6,13,0,0),(6,6,14,0,0),(6,6,15,0,0),(6,6,16,0,0),(6,6,17,0,0),(6,6,18,0,0),(6,6,19,0,0),(6,6,20,0,0),(6,6,21,0,1),(6,6,22,0,1),(6,6,23,0,0),(6,6,24,0,0),(6,6,25,0,0),(6,6,26,0,0),(6,6,27,0,0),(6,6,28,0,0),(6,6,29,0,0),(6,6,30,0,0),(6,6,31,0,0),(6,6,32,0,0),(6,6,33,0,0),(6,6,34,0,0),(6,6,35,0,0),(6,6,36,0,0),(6,7,37,0,0),(6,7,38,0,0),(6,7,39,0,0),(6,7,40,0,0),(6,7,41,0,0),(6,7,42,0,0),(6,7,43,0,0),(6,7,44,0,0),(6,7,45,0,0),(6,7,46,0,0),(6,7,47,0,0),(6,7,48,0,0),(6,7,49,0,0),(6,7,50,0,0),(6,7,51,0,0),(6,7,52,0,0),(6,7,53,0,0),(6,7,54,0,0),(6,7,55,0,0),(6,7,56,0,1),(6,7,57,0,1),(6,7,58,0,0),(6,7,59,0,0),(6,7,60,0,0),(6,7,61,0,0),(6,7,62,0,0),(6,7,63,0,0),(6,7,64,0,0),(6,7,65,0,0),(6,4,66,0,0),(6,4,67,0,0),(6,4,68,0,0),(6,4,69,0,0),(6,4,70,0,0),(6,4,71,0,0),(6,4,72,0,0),(6,4,73,0,0),(6,4,74,0,0),(6,4,75,0,0),(6,4,76,0,0),(6,4,77,0,0),(6,4,78,0,0),(6,4,79,0,0),(6,4,80,0,0),(6,4,81,0,0),(6,4,82,0,0),(6,4,83,0,0),(6,4,84,0,0),(6,4,85,0,0),(6,4,86,0,0),(6,4,87,0,0),(6,4,88,0,0),(6,4,89,0,0),(6,4,90,0,1),(6,4,91,0,1),(6,4,92,0,0),(6,4,93,0,0),(6,4,94,0,0),(6,4,95,0,0),(6,4,96,0,0),(6,4,97,0,0),(6,4,98,0,0),(6,4,99,0,0),(6,4,100,0,0),(6,4,101,0,0),(6,4,102,0,0),(6,4,103,0,0),(6,4,104,0,0),(6,4,105,0,0),(6,4,106,0,0),(6,4,107,0,0),(6,4,108,0,0),(6,4,109,0,0),(6,2,110,0,0),(6,2,111,0,0),(6,2,112,0,0),(6,2,113,0,0),(6,2,114,0,0),(6,2,115,0,0),(6,2,116,0,0),(6,2,117,0,0),(6,2,118,0,0),(6,2,119,0,0),(6,2,120,0,0),(6,2,121,0,0),(6,2,122,0,1),(6,2,123,0,1),(6,2,124,0,0),(6,2,125,0,0),(6,26,126,0,0),(6,26,127,0,0),(6,26,128,0,0),(6,26,129,0,0),(6,26,130,0,0),(6,26,131,0,0),(6,26,132,0,0),(6,26,133,0,0),(6,26,134,0,0),(6,26,135,0,0),(6,26,136,0,0),(6,26,137,0,1),(6,26,138,0,1),(6,26,139,0,0),(6,26,140,0,0),(6,26,141,0,0),(6,26,142,0,0),(6,26,143,0,0),(6,26,144,0,0),(6,26,145,0,0),(6,26,146,0,0),(6,26,147,0,0),(6,26,148,0,0),(6,26,149,0,0),(6,26,150,0,0),(6,13,155,0,0),(6,13,156,0,0),(6,13,157,0,0),(6,13,158,0,0),(6,13,159,0,0),(6,13,160,0,0),(6,13,161,0,0),(6,13,162,0,0),(6,13,163,0,0),(6,13,164,0,0),(6,13,165,0,0),(6,13,166,0,1),(6,13,167,0,1),(6,13,168,0,0),(6,13,169,0,0),(6,13,170,0,0),(6,13,171,0,0),(6,14,173,0,0),(6,14,174,0,0),(6,14,175,0,0),(6,14,176,0,0),(6,14,177,0,0),(6,14,178,0,0),(6,14,179,0,0),(6,14,180,0,0),(6,14,181,0,0),(6,14,182,0,0),(6,14,183,0,0),(6,14,184,0,0),(6,14,185,0,0),(6,14,186,0,0),(6,14,187,0,0),(6,14,188,0,0),(6,14,189,0,0),(6,14,190,0,1),(6,14,191,0,1),(6,14,192,0,0),(6,14,193,0,0),(6,14,194,0,0),(6,14,195,0,0),(6,14,196,0,0),(6,14,197,0,0),(6,14,198,0,0),(6,14,199,0,0),(6,14,200,0,0),(6,14,201,0,0),(6,14,202,0,0),(6,14,203,0,0),(6,8,204,0,0),(6,8,205,0,1),(6,8,206,0,1),(6,8,207,0,0),(6,8,208,0,0),(6,8,209,0,0),(6,8,210,0,1),(6,8,211,0,1),(6,8,212,0,0),(6,8,213,0,0),(6,8,214,0,0),(6,8,215,0,1),(6,8,216,0,0),(6,8,217,0,0),(6,8,218,0,0),(6,10,219,0,0),(6,10,220,0,0),(6,10,221,0,0),(6,10,222,0,0),(6,10,223,0,0),(6,10,224,0,0),(6,10,225,0,0),(6,10,226,0,0),(6,10,227,0,0),(6,10,228,0,1),(6,10,229,0,0),(6,10,230,0,0),(6,9,231,0,0),(6,9,232,0,0),(6,9,233,0,0),(6,9,234,0,0),(6,9,235,0,0),(6,9,236,0,0),(6,9,237,0,0),(6,9,238,0,0),(6,9,239,0,0),(6,9,240,0,0),(6,9,241,0,0),(6,9,242,0,0),(6,9,243,0,1),(6,9,244,0,1),(6,9,245,0,0),(6,9,246,0,0),(6,9,247,0,0),(6,9,248,0,0),(6,9,249,0,0),(6,9,250,0,0),(6,9,251,0,0),(6,9,252,0,0),(6,9,253,0,0),(6,9,254,0,0),(6,16,255,0,0),(6,16,256,0,0),(6,16,257,0,0),(6,16,258,0,0),(6,16,259,0,0),(6,16,260,0,0),(6,16,261,0,0),(6,16,262,0,0),(6,16,263,0,0),(6,16,264,0,0),(6,16,265,0,0),(6,16,266,0,0),(6,16,267,0,0),(6,16,268,0,0),(6,16,269,0,1),(6,16,270,0,1),(6,16,271,0,0),(6,16,272,0,0),(6,16,273,0,0),(6,16,274,0,0),(6,16,275,0,0),(6,16,276,0,0),(6,16,277,0,0),(6,15,278,0,0),(6,15,279,0,0),(6,15,280,0,0),(6,15,281,0,0),(6,15,282,0,0),(6,15,283,0,0),(6,15,285,0,1),(6,15,286,0,1),(6,15,287,0,0),(6,18,288,0,0),(6,18,289,0,0),(6,18,290,0,0),(6,18,291,0,0),(6,18,292,0,0),(6,18,293,0,0),(6,18,294,0,0),(6,18,295,0,1),(6,18,296,0,1),(6,18,297,0,0),(6,18,298,0,0),(6,18,299,0,0),(6,18,300,0,0),(6,18,301,0,0),(6,18,302,0,0),(6,18,303,0,0),(6,18,304,0,0),(6,19,305,0,0),(6,19,306,0,0),(6,19,307,0,0),(6,19,308,0,1),(6,19,309,0,1),(6,19,310,0,0),(6,19,311,0,0),(6,19,312,0,0),(6,20,313,0,0),(6,20,314,0,0),(6,20,315,0,0),(6,20,316,0,0),(6,20,317,0,0),(6,20,318,0,0),(6,20,319,0,0),(6,20,320,0,0),(6,20,321,0,0),(6,20,322,0,0),(6,20,323,0,0),(6,20,324,0,0),(6,20,325,0,0),(6,20,326,0,0),(6,20,327,0,0),(6,20,328,0,0),(6,20,329,0,0),(6,20,330,0,0),(6,20,331,0,1),(6,20,332,0,1),(6,20,333,0,0),(6,20,334,0,0),(6,20,335,0,0),(6,20,336,0,0),(6,20,337,0,0),(6,20,338,0,0),(6,20,339,0,0),(6,20,340,0,0),(6,20,341,0,0),(6,20,342,0,0),(6,20,343,0,0),(6,20,344,0,0),(6,20,345,0,0),(6,20,346,0,0),(6,20,347,0,0),(6,20,348,0,0),(6,20,349,0,0),(6,21,350,0,0),(6,21,351,0,0),(6,21,352,0,0),(6,21,353,0,0),(6,21,354,0,0),(6,21,355,0,0),(6,21,356,0,0),(6,21,357,0,0),(6,21,358,0,0),(6,21,359,0,0),(6,21,360,0,0),(6,21,361,0,0),(6,21,362,0,0),(6,21,363,0,0),(6,21,364,0,0),(6,21,365,0,0),(6,21,366,0,0),(6,21,367,0,0),(6,21,368,0,0),(6,21,369,0,1),(6,21,370,0,1),(6,21,371,0,0),(6,21,372,0,0),(6,21,373,0,0),(6,21,374,0,0),(6,21,375,0,0),(6,21,376,0,0),(6,21,377,0,0),(6,21,378,0,0),(6,21,379,0,0),(6,21,380,0,0),(6,21,381,0,0),(6,21,382,0,0),(6,21,383,0,0),(6,21,384,0,0),(6,21,385,0,0),(6,21,386,0,0),(6,21,387,0,0),(6,22,388,0,0),(6,22,389,0,0),(6,22,390,0,0),(6,22,391,0,0),(6,22,392,0,0),(6,22,393,0,0),(6,22,394,0,0),(6,22,395,0,0),(6,22,396,0,0),(6,22,397,0,0),(6,22,398,0,0),(6,22,399,0,0),(6,22,400,0,0),(6,22,401,0,0),(6,22,402,0,0),(6,22,403,0,0),(6,22,404,0,0),(6,22,405,0,0),(6,22,406,0,0),(6,22,407,0,0),(6,22,408,0,0),(6,22,409,0,0),(6,22,410,0,1),(6,22,411,0,1),(6,22,412,0,0),(6,22,413,0,0),(6,22,414,0,0),(6,22,415,0,0),(6,22,416,0,0),(6,22,417,0,0),(6,22,418,0,0),(6,22,419,0,0),(6,22,420,0,0),(6,22,421,0,0),(6,22,422,0,0),(6,22,423,0,0),(6,22,424,0,0),(6,22,425,0,0),(6,22,426,0,0),(6,22,427,0,0),(6,22,428,0,0),(6,22,429,0,0),(6,22,430,0,0),(6,22,431,0,0),(6,22,432,0,0),(6,22,433,0,0),(6,22,434,0,0),(6,23,435,0,0),(6,23,436,0,0),(6,23,437,0,0),(6,23,438,0,0),(6,23,439,0,0),(6,23,440,0,0),(6,23,441,0,0),(6,23,442,0,0),(6,23,443,0,0),(6,23,444,0,0),(6,23,445,0,0),(6,23,446,0,0),(6,23,447,0,0),(6,23,448,0,0),(6,23,449,0,0),(6,23,450,0,0),(6,23,451,0,0),(6,23,452,0,0),(6,23,453,0,0),(6,23,454,0,1),(6,23,455,0,1),(6,23,456,0,0),(6,23,457,0,0),(6,23,458,0,0),(6,23,459,0,0),(6,23,460,0,0),(6,23,461,0,0),(6,23,462,0,0),(6,23,463,0,0),(6,23,464,0,0),(6,23,465,0,0),(6,23,466,0,0),(6,23,467,0,0),(6,23,468,0,0),(6,23,469,0,0),(6,23,470,0,0),(6,23,471,0,0),(6,23,472,0,0),(6,23,473,0,0),(6,29,474,0,0),(6,29,478,0,0),(6,29,479,0,0),(6,29,481,0,0),(6,29,488,0,0),(6,29,489,0,0),(6,29,490,0,0),(6,29,491,0,0),(6,29,493,0,0),(6,29,494,0,0),(6,29,495,0,0),(6,29,496,0,0),(6,29,497,0,0),(6,29,502,0,0),(6,29,503,0,0),(6,29,504,0,0),(6,29,505,0,0),(6,10,518,0,0),(6,10,519,0,0),(6,10,520,0,0),(6,10,521,0,0),(6,10,522,0,0),(6,10,523,0,0),(6,33,524,0,0),(6,33,525,0,0),(6,33,526,0,0),(6,33,527,0,0),(6,33,528,0,0),(6,33,529,0,0),(6,33,530,0,0),(6,33,531,0,0),(6,33,532,0,0),(6,33,533,0,0),(6,33,534,0,0),(6,33,535,0,0),(6,33,536,0,0),(6,33,537,0,0),(6,33,538,0,1),(6,33,539,0,1),(6,29,540,0,0),(6,34,541,0,0),(6,34,542,0,0),(6,34,543,0,0),(6,34,544,0,0),(6,34,545,0,0),(6,34,546,0,0),(6,34,547,0,0),(6,34,548,0,0),(6,34,549,0,1),(6,34,550,0,1),(6,34,551,0,0),(6,34,552,0,0),(6,34,553,0,0),(6,34,554,0,0),(6,34,555,0,0),(6,34,556,0,0),(6,34,557,0,0),(6,34,558,0,0),(6,34,559,0,0),(6,36,560,0,0),(6,36,561,0,1),(6,36,562,0,1),(6,36,563,0,0),(6,36,564,0,1),(6,36,565,0,0),(6,36,566,0,0),(6,36,567,0,0),(6,36,568,0,0),(6,36,569,0,0),(6,36,570,0,0),(6,36,571,0,1),(6,36,572,0,1),(6,36,573,0,0),(6,36,574,0,0),(6,36,575,0,0),(6,36,576,0,1),(6,36,577,0,0),(6,36,578,0,0),(6,40,579,0,0),(6,40,580,0,0),(6,40,581,0,0),(6,40,582,0,0),(6,40,583,0,0),(6,40,584,0,0),(6,40,585,0,1),(6,40,586,0,1),(6,40,587,0,0),(6,40,588,0,0),(6,41,589,0,0),(6,41,590,0,0),(6,41,591,0,0),(6,41,592,0,0),(6,41,593,0,0),(6,41,594,0,0),(6,41,595,0,0),(6,41,596,0,0),(6,41,597,0,0),(6,41,598,0,0),(6,41,599,0,0),(6,41,600,0,1),(6,41,601,0,1),(6,41,602,0,0),(6,41,603,0,0),(6,42,604,0,0),(6,42,605,0,0),(6,42,606,0,0),(6,42,607,0,0),(6,42,608,0,0),(6,42,609,0,0),(6,42,610,0,0),(6,42,611,0,0),(6,42,612,0,0),(6,42,613,0,0),(6,42,614,0,0),(6,42,615,0,0),(6,42,616,0,0),(6,42,617,0,1),(6,42,618,0,1),(6,42,619,0,0),(6,42,620,0,0),(6,43,621,0,0),(6,43,622,0,0),(6,43,623,0,0),(6,43,624,0,0),(6,43,625,0,0),(6,43,626,0,0),(6,43,627,0,0),(6,43,628,0,0),(6,43,629,0,0),(6,43,630,0,0),(6,43,631,0,0),(6,43,632,0,0),(6,43,633,0,0),(6,43,634,0,0),(6,43,635,0,1),(6,43,636,0,1),(6,43,637,0,0),(6,43,638,0,0),(6,45,639,0,0),(6,45,640,0,0),(6,45,641,0,1),(6,45,642,0,1),(6,45,643,0,0),(6,45,644,0,1),(6,45,645,0,0),(6,47,646,0,0),(6,47,647,0,1),(6,47,648,0,1),(6,47,649,0,0),(6,47,650,0,0),(6,2,651,0,0),(6,23,653,0,1),(6,23,654,0,1),(6,23,655,0,1),(6,23,656,0,1),(6,23,657,0,1),(6,23,658,0,1),(6,23,659,0,1),(6,23,660,0,1),(6,23,661,0,1),(6,22,662,0,1),(6,22,663,0,1),(6,22,664,0,1),(6,22,665,0,1),(6,22,666,0,1),(6,22,667,0,1),(6,22,668,0,1),(6,22,669,0,1),(6,22,670,0,1),(6,21,671,0,1),(6,21,672,0,1),(6,21,673,0,1),(6,21,674,0,1),(6,21,675,0,1),(6,21,676,0,1),(6,21,677,0,1),(6,21,678,0,1),(6,21,679,0,1),(6,20,680,0,1),(6,20,681,0,1),(6,20,682,0,1),(6,20,683,0,1),(6,20,684,0,1),(6,20,685,0,1),(6,20,686,0,1),(6,20,687,0,1),(6,20,688,0,1),(6,41,690,0,0),(6,45,691,0,0),(6,23,695,0,0),(6,22,696,0,0),(6,21,697,0,0),(6,20,698,0,0),(6,6,700,0,1),(6,4,701,0,1),(6,2,702,0,1),(6,23,704,0,0),(6,23,705,0,0),(6,21,706,0,0),(6,21,707,0,0),(6,18,708,0,0),(6,7,709,0,0),(6,45,710,0,0),(6,45,711,0,0),(6,23,712,0,1),(6,20,713,0,1),(6,21,714,0,1),(6,22,715,0,1),(6,2,717,0,0),(6,13,718,0,0),(6,13,720,0,0),(6,9,729,0,1),(6,29,750,0,0),(7,6,1,0,0),(7,6,2,0,0),(7,6,3,0,0),(7,6,4,0,0),(7,6,5,0,0),(7,6,6,0,0),(7,6,7,0,0),(7,6,8,0,0),(7,6,9,0,0),(7,6,10,0,0),(7,6,11,0,0),(7,6,12,0,0),(7,6,13,0,0),(7,6,14,0,0),(7,6,15,0,0),(7,6,16,0,0),(7,6,17,0,0),(7,6,18,0,0),(7,6,19,0,0),(7,6,20,0,0),(7,6,21,0,1),(7,6,22,0,1),(7,6,23,0,0),(7,6,24,0,0),(7,6,25,0,0),(7,6,26,0,0),(7,6,27,0,0),(7,6,28,0,0),(7,6,29,0,0),(7,6,30,0,0),(7,6,31,0,0),(7,6,32,0,0),(7,6,33,0,0),(7,6,34,0,0),(7,6,35,0,0),(7,6,36,0,0),(7,7,37,0,0),(7,7,38,0,0),(7,7,39,0,0),(7,7,40,0,0),(7,7,41,0,0),(7,7,42,0,0),(7,7,43,0,0),(7,7,44,0,0),(7,7,45,0,0),(7,7,46,0,0),(7,7,47,0,0),(7,7,48,0,0),(7,7,49,0,0),(7,7,50,0,0),(7,7,51,0,0),(7,7,52,0,0),(7,7,53,0,0),(7,7,54,0,0),(7,7,55,0,0),(7,7,56,0,1),(7,7,57,0,1),(7,7,58,0,0),(7,7,59,0,0),(7,7,60,0,0),(7,7,61,0,0),(7,7,62,0,0),(7,7,63,0,0),(7,7,64,0,0),(7,7,65,0,0),(7,4,66,0,0),(7,4,67,0,0),(7,4,68,0,0),(7,4,69,0,0),(7,4,70,0,0),(7,4,71,0,0),(7,4,72,0,0),(7,4,73,0,0),(7,4,74,0,0),(7,4,75,0,0),(7,4,76,0,0),(7,4,77,0,0),(7,4,78,0,0),(7,4,79,0,0),(7,4,80,0,0),(7,4,81,0,0),(7,4,82,0,0),(7,4,83,0,0),(7,4,84,0,0),(7,4,85,0,0),(7,4,86,0,0),(7,4,87,0,0),(7,4,88,0,0),(7,4,89,0,0),(7,4,90,0,1),(7,4,91,0,1),(7,4,92,0,0),(7,4,93,0,0),(7,4,94,0,0),(7,4,95,0,0),(7,4,96,0,0),(7,4,97,0,0),(7,4,98,0,0),(7,4,99,0,0),(7,4,100,0,0),(7,4,101,0,0),(7,4,102,0,0),(7,4,103,0,0),(7,4,104,0,0),(7,4,105,0,0),(7,4,106,0,0),(7,4,107,0,0),(7,4,108,0,0),(7,4,109,0,0),(7,2,110,0,0),(7,2,111,0,0),(7,2,112,0,0),(7,2,113,0,0),(7,2,114,0,0),(7,2,115,0,0),(7,2,116,0,0),(7,2,117,0,0),(7,2,118,0,0),(7,2,119,0,0),(7,2,120,0,0),(7,2,121,0,0),(7,2,122,0,1),(7,2,123,0,1),(7,2,124,0,0),(7,2,125,0,0),(7,26,126,0,0),(7,26,127,0,0),(7,26,128,0,0),(7,26,129,0,0),(7,26,130,0,0),(7,26,131,0,0),(7,26,132,0,0),(7,26,133,0,0),(7,26,134,0,0),(7,26,135,0,0),(7,26,136,0,0),(7,26,137,0,1),(7,26,138,0,1),(7,26,139,0,0),(7,26,140,0,0),(7,26,141,0,0),(7,26,142,0,0),(7,26,143,0,0),(7,26,144,0,0),(7,26,145,0,0),(7,26,146,0,0),(7,26,147,0,0),(7,26,148,0,0),(7,26,149,0,0),(7,26,150,0,0),(7,13,155,0,0),(7,13,156,0,0),(7,13,157,0,0),(7,13,158,0,0),(7,13,159,0,0),(7,13,160,0,0),(7,13,161,0,0),(7,13,162,0,0),(7,13,163,0,0),(7,13,164,0,0),(7,13,165,0,0),(7,13,166,0,1),(7,13,167,0,1),(7,13,168,0,0),(7,13,169,0,0),(7,13,170,0,0),(7,13,171,0,0),(7,14,173,0,0),(7,14,174,0,0),(7,14,175,0,0),(7,14,176,0,0),(7,14,177,0,0),(7,14,178,0,0),(7,14,179,0,0),(7,14,180,0,0),(7,14,181,0,0),(7,14,182,0,0),(7,14,183,0,0),(7,14,184,0,0),(7,14,185,0,0),(7,14,186,0,0),(7,14,187,0,0),(7,14,188,0,0),(7,14,189,0,0),(7,14,190,0,1),(7,14,191,0,1),(7,14,192,0,0),(7,14,193,0,0),(7,14,194,0,0),(7,14,195,0,0),(7,14,196,0,0),(7,14,197,0,0),(7,14,198,0,0),(7,14,199,0,0),(7,14,200,0,0),(7,14,201,0,0),(7,14,202,0,0),(7,14,203,0,0),(7,8,204,0,0),(7,8,205,0,1),(7,8,206,0,1),(7,8,207,0,0),(7,8,208,0,0),(7,8,209,0,0),(7,8,210,0,1),(7,8,211,0,1),(7,8,212,0,0),(7,8,213,0,0),(7,8,214,0,0),(7,8,215,0,1),(7,8,216,0,0),(7,8,217,0,0),(7,8,218,0,0),(7,10,219,0,0),(7,10,220,0,0),(7,10,221,0,0),(7,10,222,0,0),(7,10,223,0,0),(7,10,224,0,0),(7,10,225,0,0),(7,10,226,0,0),(7,10,227,0,0),(7,10,228,0,1),(7,10,229,0,0),(7,10,230,0,0),(7,9,231,0,0),(7,9,232,0,0),(7,9,233,0,0),(7,9,234,0,0),(7,9,235,0,0),(7,9,236,0,0),(7,9,237,0,0),(7,9,238,0,0),(7,9,239,0,0),(7,9,240,0,0),(7,9,241,0,0),(7,9,242,0,0),(7,9,243,0,1),(7,9,244,0,1),(7,9,245,0,0),(7,9,246,0,0),(7,9,247,0,0),(7,9,248,0,0),(7,9,249,0,0),(7,9,250,0,0),(7,9,251,0,0),(7,9,252,0,0),(7,9,253,0,0),(7,9,254,0,0),(7,16,255,0,0),(7,16,256,0,0),(7,16,257,0,0),(7,16,258,0,0),(7,16,259,0,0),(7,16,260,0,0),(7,16,261,0,0),(7,16,262,0,0),(7,16,263,0,0),(7,16,264,0,0),(7,16,265,0,0),(7,16,266,0,0),(7,16,267,0,0),(7,16,268,0,0),(7,16,269,0,1),(7,16,270,0,1),(7,16,271,0,0),(7,16,272,0,0),(7,16,273,0,0),(7,16,274,0,0),(7,16,275,0,0),(7,16,276,0,0),(7,16,277,0,0),(7,15,278,0,0),(7,15,279,0,0),(7,15,280,0,0),(7,15,281,0,0),(7,15,282,0,0),(7,15,283,0,0),(7,15,285,0,1),(7,15,286,0,1),(7,15,287,0,0),(7,18,288,0,0),(7,18,289,0,0),(7,18,290,0,0),(7,18,291,0,0),(7,18,292,0,0),(7,18,293,0,0),(7,18,294,0,0),(7,18,295,0,1),(7,18,296,0,1),(7,18,297,0,0),(7,18,298,0,0),(7,18,299,0,0),(7,18,300,0,0),(7,18,301,0,0),(7,18,302,0,0),(7,18,303,0,0),(7,18,304,0,0),(7,19,305,0,0),(7,19,306,0,0),(7,19,307,0,0),(7,19,308,0,1),(7,19,309,0,1),(7,19,310,0,0),(7,19,311,0,0),(7,19,312,0,0),(7,20,313,0,0),(7,20,314,0,0),(7,20,315,0,0),(7,20,316,0,0),(7,20,317,0,0),(7,20,318,0,0),(7,20,319,0,0),(7,20,320,0,0),(7,20,321,0,0),(7,20,322,0,0),(7,20,323,0,0),(7,20,324,0,0),(7,20,325,0,0),(7,20,326,0,0),(7,20,327,0,0),(7,20,328,0,0),(7,20,329,0,0),(7,20,330,0,0),(7,20,331,0,1),(7,20,332,0,1),(7,20,333,0,0),(7,20,334,0,0),(7,20,335,0,0),(7,20,336,0,0),(7,20,337,0,0),(7,20,338,0,0),(7,20,339,0,0),(7,20,340,0,0),(7,20,341,0,0),(7,20,342,0,0),(7,20,343,0,0),(7,20,344,0,0),(7,20,345,0,0),(7,20,346,0,0),(7,20,347,0,0),(7,20,348,0,0),(7,20,349,0,0),(7,21,350,0,0),(7,21,351,0,0),(7,21,352,0,0),(7,21,353,0,0),(7,21,354,0,0),(7,21,355,0,0),(7,21,356,0,0),(7,21,357,0,0),(7,21,358,0,0),(7,21,359,0,0),(7,21,360,0,0),(7,21,361,0,0),(7,21,362,0,0),(7,21,363,0,0),(7,21,364,0,0),(7,21,365,0,0),(7,21,366,0,0),(7,21,367,0,0),(7,21,368,0,0),(7,21,369,0,1),(7,21,370,0,1),(7,21,371,0,0),(7,21,372,0,0),(7,21,373,0,0),(7,21,374,0,0),(7,21,375,0,0),(7,21,376,0,0),(7,21,377,0,0),(7,21,378,0,0),(7,21,379,0,0),(7,21,380,0,0),(7,21,381,0,0),(7,21,382,0,0),(7,21,383,0,0),(7,21,384,0,0),(7,21,385,0,0),(7,21,386,0,0),(7,21,387,0,0),(7,22,388,0,0),(7,22,389,0,0),(7,22,390,0,0),(7,22,391,0,0),(7,22,392,0,0),(7,22,393,0,0),(7,22,394,0,0),(7,22,395,0,0),(7,22,396,0,0),(7,22,397,0,0),(7,22,398,0,0),(7,22,399,0,0),(7,22,400,0,0),(7,22,401,0,0),(7,22,402,0,0),(7,22,403,0,0),(7,22,404,0,0),(7,22,405,0,0),(7,22,406,0,0),(7,22,407,0,0),(7,22,408,0,0),(7,22,409,0,0),(7,22,410,0,1),(7,22,411,0,1),(7,22,412,0,0),(7,22,413,0,0),(7,22,414,0,0),(7,22,415,0,0),(7,22,416,0,0),(7,22,417,0,0),(7,22,418,0,0),(7,22,419,0,0),(7,22,420,0,0),(7,22,421,0,0),(7,22,422,0,0),(7,22,423,0,0),(7,22,424,0,0),(7,22,425,0,0),(7,22,426,0,0),(7,22,427,0,0),(7,22,428,0,0),(7,22,429,0,0),(7,22,430,0,0),(7,22,431,0,0),(7,22,432,0,0),(7,22,433,0,0),(7,22,434,0,0),(7,23,435,0,0),(7,23,436,0,0),(7,23,437,0,0),(7,23,438,0,0),(7,23,439,0,0),(7,23,440,0,0),(7,23,441,0,0),(7,23,442,0,0),(7,23,443,0,0),(7,23,444,0,0),(7,23,445,0,0),(7,23,446,0,0),(7,23,447,0,0),(7,23,448,0,0),(7,23,449,0,0),(7,23,450,0,0),(7,23,451,0,0),(7,23,452,0,0),(7,23,453,0,0),(7,23,454,0,1),(7,23,455,0,1),(7,23,456,0,0),(7,23,457,0,0),(7,23,458,0,0),(7,23,459,0,0),(7,23,460,0,0),(7,23,461,0,0),(7,23,462,0,0),(7,23,463,0,0),(7,23,464,0,0),(7,23,465,0,0),(7,23,466,0,0),(7,23,467,0,0),(7,23,468,0,0),(7,23,469,0,0),(7,23,470,0,0),(7,23,471,0,0),(7,23,472,0,0),(7,23,473,0,0),(7,29,474,0,0),(7,29,478,0,0),(7,29,479,0,0),(7,29,481,0,0),(7,29,488,0,0),(7,29,489,0,0),(7,29,490,0,0),(7,29,491,0,0),(7,29,493,0,0),(7,29,494,0,0),(7,29,495,0,0),(7,29,496,0,0),(7,29,497,0,0),(7,29,502,0,0),(7,29,503,0,0),(7,29,504,0,0),(7,29,505,0,0),(7,10,518,0,0),(7,10,519,0,0),(7,10,520,0,0),(7,10,521,0,0),(7,10,522,0,0),(7,10,523,0,0),(7,33,524,0,0),(7,33,525,0,0),(7,33,526,0,0),(7,33,527,0,0),(7,33,528,0,0),(7,33,529,0,0),(7,33,530,0,0),(7,33,531,0,0),(7,33,532,0,0),(7,33,533,0,0),(7,33,534,0,0),(7,33,535,0,0),(7,33,536,0,0),(7,33,537,0,0),(7,33,538,0,1),(7,33,539,0,1),(7,29,540,0,0),(7,34,541,0,0),(7,34,542,0,0),(7,34,543,0,0),(7,34,544,0,0),(7,34,545,0,0),(7,34,546,0,0),(7,34,547,0,0),(7,34,548,0,0),(7,34,549,0,1),(7,34,550,0,1),(7,34,551,0,0),(7,34,552,0,0),(7,34,553,0,0),(7,34,554,0,0),(7,34,555,0,0),(7,34,556,0,0),(7,34,557,0,0),(7,34,558,0,0),(7,34,559,0,0),(7,36,560,0,0),(7,36,561,0,1),(7,36,562,0,1),(7,36,563,0,0),(7,36,564,0,1),(7,36,565,0,0),(7,36,566,0,0),(7,36,567,0,0),(7,36,568,0,0),(7,36,569,0,0),(7,36,570,0,0),(7,36,571,0,1),(7,36,572,0,1),(7,36,573,0,0),(7,36,574,0,0),(7,36,575,0,0),(7,36,576,0,1),(7,36,577,0,0),(7,36,578,0,0),(7,40,579,0,0),(7,40,580,0,0),(7,40,581,0,0),(7,40,582,0,0),(7,40,583,0,0),(7,40,584,0,0),(7,40,585,0,1),(7,40,586,0,1),(7,40,587,0,0),(7,40,588,0,0),(7,41,589,0,0),(7,41,590,0,0),(7,41,591,0,0),(7,41,592,0,0),(7,41,593,0,0),(7,41,594,0,0),(7,41,595,0,0),(7,41,596,0,0),(7,41,597,0,0),(7,41,598,0,0),(7,41,599,0,0),(7,41,600,0,1),(7,41,601,0,1),(7,41,602,0,0),(7,41,603,0,0),(7,42,604,0,0),(7,42,605,0,0),(7,42,606,0,0),(7,42,607,0,0),(7,42,608,0,0),(7,42,609,0,0),(7,42,610,0,0),(7,42,611,0,0),(7,42,612,0,0),(7,42,613,0,0),(7,42,614,0,0),(7,42,615,0,0),(7,42,616,0,0),(7,42,617,0,1),(7,42,618,0,1),(7,42,619,0,0),(7,42,620,0,0),(7,43,621,0,0),(7,43,622,0,0),(7,43,623,0,0),(7,43,624,0,0),(7,43,625,0,0),(7,43,626,0,0),(7,43,627,0,0),(7,43,628,0,0),(7,43,629,0,0),(7,43,630,0,0),(7,43,631,0,0),(7,43,632,0,0),(7,43,633,0,0),(7,43,634,0,0),(7,43,635,0,1),(7,43,636,0,1),(7,43,637,0,0),(7,43,638,0,0),(7,45,639,0,0),(7,45,640,0,0),(7,45,641,0,1),(7,45,642,0,1),(7,45,643,0,0),(7,45,644,0,1),(7,45,645,0,0),(7,47,646,0,0),(7,47,647,0,1),(7,47,648,0,1),(7,47,649,0,0),(7,47,650,0,0),(7,2,651,0,0),(7,23,653,0,1),(7,23,654,0,1),(7,23,655,0,1),(7,23,656,0,1),(7,23,657,0,1),(7,23,658,0,1),(7,23,659,0,1),(7,23,660,0,1),(7,23,661,0,1),(7,22,662,0,1),(7,22,663,0,1),(7,22,664,0,1),(7,22,665,0,1),(7,22,666,0,1),(7,22,667,0,1),(7,22,668,0,1),(7,22,669,0,1),(7,22,670,0,1),(7,21,671,0,1),(7,21,672,0,1),(7,21,673,0,1),(7,21,674,0,1),(7,21,675,0,1),(7,21,676,0,1),(7,21,677,0,1),(7,21,678,0,1),(7,21,679,0,1),(7,20,680,0,1),(7,20,681,0,1),(7,20,682,0,1),(7,20,683,0,1),(7,20,684,0,1),(7,20,685,0,1),(7,20,686,0,1),(7,20,687,0,1),(7,20,688,0,1),(7,41,690,0,0),(7,45,691,0,0),(7,23,695,0,0),(7,22,696,0,0),(7,21,697,0,0),(7,20,698,0,0),(7,6,700,0,1),(7,4,701,0,1),(7,2,702,0,1),(7,23,704,0,0),(7,23,705,0,0),(7,21,706,0,0),(7,21,707,0,0),(7,18,708,0,0),(7,7,709,0,0),(7,45,710,0,0),(7,45,711,0,0),(7,23,712,0,1),(7,20,713,0,1),(7,21,714,0,1),(7,22,715,0,1),(7,2,717,0,0),(7,13,718,0,0),(7,13,720,0,0),(7,9,729,0,1),(7,29,750,0,0),(8,6,1,0,0),(8,6,2,0,0),(8,6,3,0,0),(8,6,4,0,0),(8,6,5,0,0),(8,6,6,0,0),(8,6,7,0,0),(8,6,8,0,0),(8,6,9,0,0),(8,6,10,0,0),(8,6,11,0,0),(8,6,12,0,0),(8,6,13,0,0),(8,6,14,0,0),(8,6,15,0,0),(8,6,16,0,0),(8,6,17,0,0),(8,6,18,0,0),(8,6,19,0,0),(8,6,20,0,0),(8,6,21,0,1),(8,6,22,0,1),(8,6,23,0,0),(8,6,24,0,0),(8,6,25,0,0),(8,6,26,0,0),(8,6,27,0,0),(8,6,28,0,0),(8,6,29,0,0),(8,6,30,0,0),(8,6,31,0,0),(8,6,32,0,0),(8,6,33,0,0),(8,6,34,0,0),(8,6,35,0,0),(8,6,36,0,0),(8,7,37,0,0),(8,7,38,0,0),(8,7,39,0,0),(8,7,40,0,0),(8,7,41,0,0),(8,7,42,0,0),(8,7,43,0,0),(8,7,44,0,0),(8,7,45,0,0),(8,7,46,0,0),(8,7,47,0,0),(8,7,48,0,0),(8,7,49,0,0),(8,7,50,0,0),(8,7,51,0,0),(8,7,52,0,0),(8,7,53,0,0),(8,7,54,0,0),(8,7,55,0,0),(8,7,56,0,1),(8,7,57,0,1),(8,7,58,0,0),(8,7,59,0,0),(8,7,60,0,0),(8,7,61,0,0),(8,7,62,0,0),(8,7,63,0,0),(8,7,64,0,0),(8,7,65,0,0),(8,4,66,0,0),(8,4,67,0,0),(8,4,68,0,0),(8,4,69,0,0),(8,4,70,0,0),(8,4,71,0,0),(8,4,72,0,0),(8,4,73,0,0),(8,4,74,0,0),(8,4,75,0,0),(8,4,76,0,0),(8,4,77,0,0),(8,4,78,0,0),(8,4,79,0,0),(8,4,80,0,0),(8,4,81,0,0),(8,4,82,0,0),(8,4,83,0,0),(8,4,84,0,0),(8,4,85,0,0),(8,4,86,0,0),(8,4,87,0,0),(8,4,88,0,0),(8,4,89,0,0),(8,4,90,0,1),(8,4,91,0,1),(8,4,92,0,0),(8,4,93,0,0),(8,4,94,0,0),(8,4,95,0,0),(8,4,96,0,0),(8,4,97,0,0),(8,4,98,0,0),(8,4,99,0,0),(8,4,100,0,0),(8,4,101,0,0),(8,4,102,0,0),(8,4,103,0,0),(8,4,104,0,0),(8,4,105,0,0),(8,4,106,0,0),(8,4,107,0,0),(8,4,108,0,0),(8,4,109,0,0),(8,2,110,0,0),(8,2,111,0,0),(8,2,112,0,0),(8,2,113,0,0),(8,2,114,0,0),(8,2,115,0,0),(8,2,116,0,0),(8,2,117,0,0),(8,2,118,0,0),(8,2,119,0,0),(8,2,120,0,0),(8,2,121,0,0),(8,2,122,0,1),(8,2,123,0,1),(8,2,124,0,0),(8,2,125,0,0),(8,26,126,0,0),(8,26,127,0,0),(8,26,128,0,0),(8,26,129,0,0),(8,26,130,0,0),(8,26,131,0,0),(8,26,132,0,0),(8,26,133,0,0),(8,26,134,0,0),(8,26,135,0,0),(8,26,136,0,0),(8,26,137,0,1),(8,26,138,0,1),(8,26,139,0,0),(8,26,140,0,0),(8,26,141,0,0),(8,26,142,0,0),(8,26,143,0,0),(8,26,144,0,0),(8,26,145,0,0),(8,26,146,0,0),(8,26,147,0,0),(8,26,148,0,0),(8,26,149,0,0),(8,26,150,0,0),(8,13,155,0,0),(8,13,156,0,0),(8,13,157,0,0),(8,13,158,0,0),(8,13,159,0,0),(8,13,160,0,0),(8,13,161,0,0),(8,13,162,0,0),(8,13,163,0,0),(8,13,164,0,0),(8,13,165,0,0),(8,13,166,0,1),(8,13,167,0,1),(8,13,168,0,0),(8,13,169,0,0),(8,13,170,0,0),(8,13,171,0,0),(8,14,173,0,0),(8,14,174,0,0),(8,14,175,0,0),(8,14,176,0,0),(8,14,177,0,0),(8,14,178,0,0),(8,14,179,0,0),(8,14,180,0,0),(8,14,181,0,0),(8,14,182,0,0),(8,14,183,0,0),(8,14,184,0,0),(8,14,185,0,0),(8,14,186,0,0),(8,14,187,0,0),(8,14,188,0,0),(8,14,189,0,0),(8,14,190,0,1),(8,14,191,0,1),(8,14,192,0,0),(8,14,193,0,0),(8,14,194,0,0),(8,14,195,0,0),(8,14,196,0,0),(8,14,197,0,0),(8,14,198,0,0),(8,14,199,0,0),(8,14,200,0,0),(8,14,201,0,0),(8,14,202,0,0),(8,14,203,0,0),(8,8,204,0,0),(8,8,205,0,1),(8,8,206,0,1),(8,8,207,0,0),(8,8,208,0,0),(8,8,209,0,0),(8,8,210,0,1),(8,8,211,0,1),(8,8,212,0,0),(8,8,213,0,0),(8,8,214,0,0),(8,8,215,0,1),(8,8,216,0,0),(8,8,217,0,0),(8,8,218,0,0),(8,10,219,0,0),(8,10,220,0,0),(8,10,221,0,0),(8,10,222,0,0),(8,10,223,0,0),(8,10,224,0,0),(8,10,225,0,0),(8,10,226,0,0),(8,10,227,0,0),(8,10,228,0,1),(8,10,229,0,0),(8,10,230,0,0),(8,9,231,0,0),(8,9,232,0,0),(8,9,233,0,0),(8,9,234,0,0),(8,9,235,0,0),(8,9,236,0,0),(8,9,237,0,0),(8,9,238,0,0),(8,9,239,0,0),(8,9,240,0,0),(8,9,241,0,0),(8,9,242,0,0),(8,9,243,0,1),(8,9,244,0,1),(8,9,245,0,0),(8,9,246,0,0),(8,9,247,0,0),(8,9,248,0,0),(8,9,249,0,0),(8,9,250,0,0),(8,9,251,0,0),(8,9,252,0,0),(8,9,253,0,0),(8,9,254,0,0),(8,16,255,0,0),(8,16,256,0,0),(8,16,257,0,0),(8,16,258,0,0),(8,16,259,0,0),(8,16,260,0,0),(8,16,261,0,0),(8,16,262,0,0),(8,16,263,0,0),(8,16,264,0,0),(8,16,265,0,0),(8,16,266,0,0),(8,16,267,0,0),(8,16,268,0,0),(8,16,269,0,1),(8,16,270,0,1),(8,16,271,0,0),(8,16,272,0,0),(8,16,273,0,0),(8,16,274,0,0),(8,16,275,0,0),(8,16,276,0,0),(8,16,277,0,0),(8,15,278,0,0),(8,15,279,0,0),(8,15,280,0,0),(8,15,281,0,0),(8,15,282,0,0),(8,15,283,0,0),(8,15,285,0,1),(8,15,286,0,1),(8,15,287,0,0),(8,18,288,0,0),(8,18,289,0,0),(8,18,290,0,0),(8,18,291,0,0),(8,18,292,0,0),(8,18,293,0,0),(8,18,294,0,0),(8,18,295,0,1),(8,18,296,0,1),(8,18,297,0,0),(8,18,298,0,0),(8,18,299,0,0),(8,18,300,0,0),(8,18,301,0,0),(8,18,302,0,0),(8,18,303,0,0),(8,18,304,0,0),(8,19,305,0,0),(8,19,306,0,0),(8,19,307,0,0),(8,19,308,0,1),(8,19,309,0,1),(8,19,310,0,0),(8,19,311,0,0),(8,19,312,0,0),(8,20,313,0,0),(8,20,314,0,0),(8,20,315,0,0),(8,20,316,0,0),(8,20,317,0,0),(8,20,318,0,0),(8,20,319,0,0),(8,20,320,0,0),(8,20,321,0,0),(8,20,322,0,0),(8,20,323,0,0),(8,20,324,0,0),(8,20,325,0,0),(8,20,326,0,0),(8,20,327,0,0),(8,20,328,0,0),(8,20,329,0,0),(8,20,330,0,0),(8,20,331,0,1),(8,20,332,0,1),(8,20,333,0,0),(8,20,334,0,0),(8,20,335,0,0),(8,20,336,0,0),(8,20,337,0,0),(8,20,338,0,0),(8,20,339,0,0),(8,20,340,0,0),(8,20,341,0,0),(8,20,342,0,0),(8,20,343,0,0),(8,20,344,0,0),(8,20,345,0,0),(8,20,346,0,0),(8,20,347,0,0),(8,20,348,0,0),(8,20,349,0,0),(8,21,350,0,0),(8,21,351,0,0),(8,21,352,0,0),(8,21,353,0,0),(8,21,354,0,0),(8,21,355,0,0),(8,21,356,0,0),(8,21,357,0,0),(8,21,358,0,0),(8,21,359,0,0),(8,21,360,0,0),(8,21,361,0,0),(8,21,362,0,0),(8,21,363,0,0),(8,21,364,0,0),(8,21,365,0,0),(8,21,366,0,0),(8,21,367,0,0),(8,21,368,0,0),(8,21,369,0,1),(8,21,370,0,1),(8,21,371,0,0),(8,21,372,0,0),(8,21,373,0,0),(8,21,374,0,0),(8,21,375,0,0),(8,21,376,0,0),(8,21,377,0,0),(8,21,378,0,0),(8,21,379,0,0),(8,21,380,0,0),(8,21,381,0,0),(8,21,382,0,0),(8,21,383,0,0),(8,21,384,0,0),(8,21,385,0,0),(8,21,386,0,0),(8,21,387,0,0),(8,22,388,0,0),(8,22,389,0,0),(8,22,390,0,0),(8,22,391,0,0),(8,22,392,0,0),(8,22,393,0,0),(8,22,394,0,0),(8,22,395,0,0),(8,22,396,0,0),(8,22,397,0,0),(8,22,398,0,0),(8,22,399,0,0),(8,22,400,0,0),(8,22,401,0,0),(8,22,402,0,0),(8,22,403,0,0),(8,22,404,0,0),(8,22,405,0,0),(8,22,406,0,0),(8,22,407,0,0),(8,22,408,0,0),(8,22,409,0,0),(8,22,410,0,1),(8,22,411,0,1),(8,22,412,0,0),(8,22,413,0,0),(8,22,414,0,0),(8,22,415,0,0),(8,22,416,0,0),(8,22,417,0,0),(8,22,418,0,0),(8,22,419,0,0),(8,22,420,0,0),(8,22,421,0,0),(8,22,422,0,0),(8,22,423,0,0),(8,22,424,0,0),(8,22,425,0,0),(8,22,426,0,0),(8,22,427,0,0),(8,22,428,0,0),(8,22,429,0,0),(8,22,430,0,0),(8,22,431,0,0),(8,22,432,0,0),(8,22,433,0,0),(8,22,434,0,0),(8,23,435,0,0),(8,23,436,0,0),(8,23,437,0,0),(8,23,438,0,0),(8,23,439,0,0),(8,23,440,0,0),(8,23,441,0,0),(8,23,442,0,0),(8,23,443,0,0),(8,23,444,0,0),(8,23,445,0,0),(8,23,446,0,0),(8,23,447,0,0),(8,23,448,0,0),(8,23,449,0,0),(8,23,450,0,0),(8,23,451,0,0),(8,23,452,0,0),(8,23,453,0,0),(8,23,454,0,1),(8,23,455,0,1),(8,23,456,0,0),(8,23,457,0,0),(8,23,458,0,0),(8,23,459,0,0),(8,23,460,0,0),(8,23,461,0,0),(8,23,462,0,0),(8,23,463,0,0),(8,23,464,0,0),(8,23,465,0,0),(8,23,466,0,0),(8,23,467,0,0),(8,23,468,0,0),(8,23,469,0,0),(8,23,470,0,0),(8,23,471,0,0),(8,23,472,0,0),(8,23,473,0,0),(8,29,474,0,0),(8,29,478,0,0),(8,29,479,0,0),(8,29,481,0,0),(8,29,488,0,0),(8,29,489,0,0),(8,29,490,0,0),(8,29,491,0,0),(8,29,493,0,0),(8,29,494,0,0),(8,29,495,0,0),(8,29,496,0,0),(8,29,497,0,0),(8,29,502,0,0),(8,29,503,0,0),(8,29,504,0,0),(8,29,505,0,0),(8,10,518,0,0),(8,10,519,0,0),(8,10,520,0,0),(8,10,521,0,0),(8,10,522,0,0),(8,10,523,0,0),(8,33,524,0,0),(8,33,525,0,0),(8,33,526,0,0),(8,33,527,0,0),(8,33,528,0,0),(8,33,529,0,0),(8,33,530,0,0),(8,33,531,0,0),(8,33,532,0,0),(8,33,533,0,0),(8,33,534,0,0),(8,33,535,0,0),(8,33,536,0,0),(8,33,537,0,0),(8,33,538,0,1),(8,33,539,0,1),(8,29,540,0,0),(8,34,541,0,0),(8,34,542,0,0),(8,34,543,0,0),(8,34,544,0,0),(8,34,545,0,0),(8,34,546,0,0),(8,34,547,0,0),(8,34,548,0,0),(8,34,549,0,1),(8,34,550,0,1),(8,34,551,0,0),(8,34,552,0,0),(8,34,553,0,0),(8,34,554,0,0),(8,34,555,0,0),(8,34,556,0,0),(8,34,557,0,0),(8,34,558,0,0),(8,34,559,0,0),(8,36,560,0,0),(8,36,561,0,1),(8,36,562,0,1),(8,36,563,0,0),(8,36,564,0,1),(8,36,565,0,0),(8,36,566,0,0),(8,36,567,0,0),(8,36,568,0,0),(8,36,569,0,0),(8,36,570,0,0),(8,36,571,0,1),(8,36,572,0,1),(8,36,573,0,0),(8,36,574,0,0),(8,36,575,0,0),(8,36,576,0,1),(8,36,577,0,0),(8,36,578,0,0),(8,40,579,0,0),(8,40,580,0,0),(8,40,581,0,0),(8,40,582,0,0),(8,40,583,0,0),(8,40,584,0,0),(8,40,585,0,1),(8,40,586,0,1),(8,40,587,0,0),(8,40,588,0,0),(8,41,589,0,0),(8,41,590,0,0),(8,41,591,0,0),(8,41,592,0,0),(8,41,593,0,0),(8,41,594,0,0),(8,41,595,0,0),(8,41,596,0,0),(8,41,597,0,0),(8,41,598,0,0),(8,41,599,0,0),(8,41,600,0,1),(8,41,601,0,1),(8,41,602,0,0),(8,41,603,0,0),(8,42,604,0,0),(8,42,605,0,0),(8,42,606,0,0),(8,42,607,0,0),(8,42,608,0,0),(8,42,609,0,0),(8,42,610,0,0),(8,42,611,0,0),(8,42,612,0,0),(8,42,613,0,0),(8,42,614,0,0),(8,42,615,0,0),(8,42,616,0,0),(8,42,617,0,1),(8,42,618,0,1),(8,42,619,0,0),(8,42,620,0,0),(8,43,621,0,0),(8,43,622,0,0),(8,43,623,0,0),(8,43,624,0,0),(8,43,625,0,0),(8,43,626,0,0),(8,43,627,0,0),(8,43,628,0,0),(8,43,629,0,0),(8,43,630,0,0),(8,43,631,0,0),(8,43,632,0,0),(8,43,633,0,0),(8,43,634,0,0),(8,43,635,0,1),(8,43,636,0,1),(8,43,637,0,0),(8,43,638,0,0),(8,45,639,0,0),(8,45,640,0,0),(8,45,641,0,1),(8,45,642,0,1),(8,45,643,0,0),(8,45,644,0,1),(8,45,645,0,0),(8,47,646,0,0),(8,47,647,0,1),(8,47,648,0,1),(8,47,649,0,0),(8,47,650,0,0),(8,2,651,0,0),(8,23,653,0,1),(8,23,654,0,1),(8,23,655,0,1),(8,23,656,0,1),(8,23,657,0,1),(8,23,658,0,1),(8,23,659,0,1),(8,23,660,0,1),(8,23,661,0,1),(8,22,662,0,1),(8,22,663,0,1),(8,22,664,0,1),(8,22,665,0,1),(8,22,666,0,1),(8,22,667,0,1),(8,22,668,0,1),(8,22,669,0,1),(8,22,670,0,1),(8,21,671,0,1),(8,21,672,0,1),(8,21,673,0,1),(8,21,674,0,1),(8,21,675,0,1),(8,21,676,0,1),(8,21,677,0,1),(8,21,678,0,1),(8,21,679,0,1),(8,20,680,0,1),(8,20,681,0,1),(8,20,682,0,1),(8,20,683,0,1),(8,20,684,0,1),(8,20,685,0,1),(8,20,686,0,1),(8,20,687,0,1),(8,20,688,0,1),(8,41,690,0,0),(8,45,691,0,0),(8,23,695,0,0),(8,22,696,0,0),(8,21,697,0,0),(8,20,698,0,0),(8,6,700,0,1),(8,4,701,0,1),(8,2,702,0,1),(8,23,704,0,0),(8,23,705,0,0),(8,21,706,0,0),(8,21,707,0,0),(8,18,708,0,0),(8,7,709,0,0),(8,45,710,0,0),(8,45,711,0,0),(8,23,712,0,1),(8,20,713,0,1),(8,21,714,0,1),(8,22,715,0,1),(8,2,717,0,0),(8,13,718,0,0),(8,13,720,0,0),(8,9,729,0,1),(8,29,750,0,0),(9,6,1,0,0),(9,6,2,0,0),(9,6,3,0,0),(9,6,4,0,0),(9,6,5,0,0),(9,6,6,0,0),(9,6,7,0,0),(9,6,8,0,0),(9,6,9,0,0),(9,6,10,0,0),(9,6,11,0,0),(9,6,12,0,0),(9,6,13,0,0),(9,6,14,0,0),(9,6,15,0,0),(9,6,16,0,0),(9,6,17,0,0),(9,6,18,0,0),(9,6,19,0,0),(9,6,20,0,0),(9,6,21,0,1),(9,6,22,0,1),(9,6,23,0,0),(9,6,24,0,0),(9,6,25,0,0),(9,6,26,0,0),(9,6,27,0,0),(9,6,28,0,0),(9,6,29,0,0),(9,6,30,0,0),(9,6,31,0,0),(9,6,32,0,0),(9,6,33,0,0),(9,6,34,0,0),(9,6,35,0,0),(9,6,36,0,0),(9,7,37,0,0),(9,7,38,0,0),(9,7,39,0,0),(9,7,40,0,0),(9,7,41,0,0),(9,7,42,0,0),(9,7,43,0,0),(9,7,44,0,0),(9,7,45,0,0),(9,7,46,0,0),(9,7,47,0,0),(9,7,48,0,0),(9,7,49,0,0),(9,7,50,0,0),(9,7,51,0,0),(9,7,52,0,0),(9,7,53,0,0),(9,7,54,0,0),(9,7,55,0,0),(9,7,56,0,1),(9,7,57,0,1),(9,7,58,0,0),(9,7,59,0,0),(9,7,60,0,0),(9,7,61,0,0),(9,7,62,0,0),(9,7,63,0,0),(9,7,64,0,0),(9,7,65,0,0),(9,4,66,0,0),(9,4,67,0,0),(9,4,68,0,0),(9,4,69,0,0),(9,4,70,0,0),(9,4,71,0,0),(9,4,72,0,0),(9,4,73,0,0),(9,4,74,0,0),(9,4,75,0,0),(9,4,76,0,0),(9,4,77,0,0),(9,4,78,0,0),(9,4,79,0,0),(9,4,80,0,0),(9,4,81,0,0),(9,4,82,0,0),(9,4,83,0,0),(9,4,84,0,0),(9,4,85,0,0),(9,4,86,0,0),(9,4,87,0,0),(9,4,88,0,0),(9,4,89,0,0),(9,4,90,0,1),(9,4,91,0,1),(9,4,92,0,0),(9,4,93,0,0),(9,4,94,0,0),(9,4,95,0,0),(9,4,96,0,0),(9,4,97,0,0),(9,4,98,0,0),(9,4,99,0,0),(9,4,100,0,0),(9,4,101,0,0),(9,4,102,0,0),(9,4,103,0,0),(9,4,104,0,0),(9,4,105,0,0),(9,4,106,0,0),(9,4,107,0,0),(9,4,108,0,0),(9,4,109,0,0),(9,2,110,0,0),(9,2,111,0,0),(9,2,112,0,0),(9,2,113,0,0),(9,2,114,0,0),(9,2,115,0,0),(9,2,116,0,0),(9,2,117,0,0),(9,2,118,0,0),(9,2,119,0,0),(9,2,120,0,0),(9,2,121,0,0),(9,2,122,0,1),(9,2,123,0,1),(9,2,124,0,0),(9,2,125,0,0),(9,26,126,0,0),(9,26,127,0,0),(9,26,128,0,0),(9,26,129,0,0),(9,26,130,0,0),(9,26,131,0,0),(9,26,132,0,0),(9,26,133,0,0),(9,26,134,0,0),(9,26,135,0,0),(9,26,136,0,0),(9,26,137,0,1),(9,26,138,0,1),(9,26,139,0,0),(9,26,140,0,0),(9,26,141,0,0),(9,26,142,0,0),(9,26,143,0,0),(9,26,144,0,0),(9,26,145,0,0),(9,26,146,0,0),(9,26,147,0,0),(9,26,148,0,0),(9,26,149,0,0),(9,26,150,0,0),(9,13,155,0,0),(9,13,156,0,0),(9,13,157,0,0),(9,13,158,0,0),(9,13,159,0,0),(9,13,160,0,0),(9,13,161,0,0),(9,13,162,0,0),(9,13,163,0,0),(9,13,164,0,0),(9,13,165,0,0),(9,13,166,0,1),(9,13,167,0,1),(9,13,168,0,0),(9,13,169,0,0),(9,13,170,0,0),(9,13,171,0,0),(9,14,173,0,0),(9,14,174,0,0),(9,14,175,0,0),(9,14,176,0,0),(9,14,177,0,0),(9,14,178,0,0),(9,14,179,0,0),(9,14,180,0,0),(9,14,181,0,0),(9,14,182,0,0),(9,14,183,0,0),(9,14,184,0,0),(9,14,185,0,0),(9,14,186,0,0),(9,14,187,0,0),(9,14,188,0,0),(9,14,189,0,0),(9,14,190,0,1),(9,14,191,0,1),(9,14,192,0,0),(9,14,193,0,0),(9,14,194,0,0),(9,14,195,0,0),(9,14,196,0,0),(9,14,197,0,0),(9,14,198,0,0),(9,14,199,0,0),(9,14,200,0,0),(9,14,201,0,0),(9,14,202,0,0),(9,14,203,0,0),(9,8,204,0,0),(9,8,205,0,1),(9,8,206,0,1),(9,8,207,0,0),(9,8,208,0,0),(9,8,209,0,0),(9,8,210,0,1),(9,8,211,0,1),(9,8,212,0,0),(9,8,213,0,0),(9,8,214,0,0),(9,8,215,0,1),(9,8,216,0,0),(9,8,217,0,0),(9,8,218,0,0),(9,10,219,0,0),(9,10,220,0,0),(9,10,221,0,0),(9,10,222,0,0),(9,10,223,0,0),(9,10,224,0,0),(9,10,225,0,0),(9,10,226,0,0),(9,10,227,0,0),(9,10,228,0,1),(9,10,229,0,0),(9,10,230,0,0),(9,9,231,0,0),(9,9,232,0,0),(9,9,233,0,0),(9,9,234,0,0),(9,9,235,0,0),(9,9,236,0,0),(9,9,237,0,0),(9,9,238,0,0),(9,9,239,0,0),(9,9,240,0,0),(9,9,241,0,0),(9,9,242,0,0),(9,9,243,0,1),(9,9,244,0,1),(9,9,245,0,0),(9,9,246,0,0),(9,9,247,0,0),(9,9,248,0,0),(9,9,249,0,0),(9,9,250,0,0),(9,9,251,0,0),(9,9,252,0,0),(9,9,253,0,0),(9,9,254,0,0),(9,16,255,0,0),(9,16,256,0,0),(9,16,257,0,0),(9,16,258,0,0),(9,16,259,0,0),(9,16,260,0,0),(9,16,261,0,0),(9,16,262,0,0),(9,16,263,0,0),(9,16,264,0,0),(9,16,265,0,0),(9,16,266,0,0),(9,16,267,0,0),(9,16,268,0,0),(9,16,269,0,1),(9,16,270,0,1),(9,16,271,0,0),(9,16,272,0,0),(9,16,273,0,0),(9,16,274,0,0),(9,16,275,0,0),(9,16,276,0,0),(9,16,277,0,0),(9,15,278,0,0),(9,15,279,0,0),(9,15,280,0,0),(9,15,281,0,0),(9,15,282,0,0),(9,15,283,0,0),(9,15,285,0,1),(9,15,286,0,1),(9,15,287,0,0),(9,18,288,0,0),(9,18,289,0,0),(9,18,290,0,0),(9,18,291,0,0),(9,18,292,0,0),(9,18,293,0,0),(9,18,294,0,0),(9,18,295,0,1),(9,18,296,0,1),(9,18,297,0,0),(9,18,298,0,0),(9,18,299,0,0),(9,18,300,0,0),(9,18,301,0,0),(9,18,302,0,0),(9,18,303,0,0),(9,18,304,0,0),(9,19,305,0,0),(9,19,306,0,0),(9,19,307,0,0),(9,19,308,0,1),(9,19,309,0,1),(9,19,310,0,0),(9,19,311,0,0),(9,19,312,0,0),(9,20,313,0,0),(9,20,314,0,0),(9,20,315,0,0),(9,20,316,0,0),(9,20,317,0,0),(9,20,318,0,0),(9,20,319,0,0),(9,20,320,0,0),(9,20,321,0,0),(9,20,322,0,0),(9,20,323,0,0),(9,20,324,0,0),(9,20,325,0,0),(9,20,326,0,0),(9,20,327,0,0),(9,20,328,0,0),(9,20,329,0,0),(9,20,330,0,0),(9,20,331,0,1),(9,20,332,0,1),(9,20,333,0,0),(9,20,334,0,0),(9,20,335,0,0),(9,20,336,0,0),(9,20,337,0,0),(9,20,338,0,0),(9,20,339,0,0),(9,20,340,0,0),(9,20,341,0,0),(9,20,342,0,0),(9,20,343,0,0),(9,20,344,0,0),(9,20,345,0,0),(9,20,346,0,0),(9,20,347,0,0),(9,20,348,0,0),(9,20,349,0,0),(9,21,350,0,0),(9,21,351,0,0),(9,21,352,0,0),(9,21,353,0,0),(9,21,354,0,0),(9,21,355,0,0),(9,21,356,0,0),(9,21,357,0,0),(9,21,358,0,0),(9,21,359,0,0),(9,21,360,0,0),(9,21,361,0,0),(9,21,362,0,0),(9,21,363,0,0),(9,21,364,0,0),(9,21,365,0,0),(9,21,366,0,0),(9,21,367,0,0),(9,21,368,0,0),(9,21,369,0,1),(9,21,370,0,1),(9,21,371,0,0),(9,21,372,0,0),(9,21,373,0,0),(9,21,374,0,0),(9,21,375,0,0),(9,21,376,0,0),(9,21,377,0,0),(9,21,378,0,0),(9,21,379,0,0),(9,21,380,0,0),(9,21,381,0,0),(9,21,382,0,0),(9,21,383,0,0),(9,21,384,0,0),(9,21,385,0,0),(9,21,386,0,0),(9,21,387,0,0),(9,22,388,0,0),(9,22,389,0,0),(9,22,390,0,0),(9,22,391,0,0),(9,22,392,0,0),(9,22,393,0,0),(9,22,394,0,0),(9,22,395,0,0),(9,22,396,0,0),(9,22,397,0,0),(9,22,398,0,0),(9,22,399,0,0),(9,22,400,0,0),(9,22,401,0,0),(9,22,402,0,0),(9,22,403,0,0),(9,22,404,0,0),(9,22,405,0,0),(9,22,406,0,0),(9,22,407,0,0),(9,22,408,0,0),(9,22,409,0,0),(9,22,410,0,1),(9,22,411,0,1),(9,22,412,0,0),(9,22,413,0,0),(9,22,414,0,0),(9,22,415,0,0),(9,22,416,0,0),(9,22,417,0,0),(9,22,418,0,0),(9,22,419,0,0),(9,22,420,0,0),(9,22,421,0,0),(9,22,422,0,0),(9,22,423,0,0),(9,22,424,0,0),(9,22,425,0,0),(9,22,426,0,0),(9,22,427,0,0),(9,22,428,0,0),(9,22,429,0,0),(9,22,430,0,0),(9,22,431,0,0),(9,22,432,0,0),(9,22,433,0,0),(9,22,434,0,0),(9,23,435,0,0),(9,23,436,0,0),(9,23,437,0,0),(9,23,438,0,0),(9,23,439,0,0),(9,23,440,0,0),(9,23,441,0,0),(9,23,442,0,0),(9,23,443,0,0),(9,23,444,0,0),(9,23,445,0,0),(9,23,446,0,0),(9,23,447,0,0),(9,23,448,0,0),(9,23,449,0,0),(9,23,450,0,0),(9,23,451,0,0),(9,23,452,0,0),(9,23,453,0,0),(9,23,454,0,1),(9,23,455,0,1),(9,23,456,0,0),(9,23,457,0,0),(9,23,458,0,0),(9,23,459,0,0),(9,23,460,0,0),(9,23,461,0,0),(9,23,462,0,0),(9,23,463,0,0),(9,23,464,0,0),(9,23,465,0,0),(9,23,466,0,0),(9,23,467,0,0),(9,23,468,0,0),(9,23,469,0,0),(9,23,470,0,0),(9,23,471,0,0),(9,23,472,0,0),(9,23,473,0,0),(9,29,474,0,0),(9,29,478,0,0),(9,29,479,0,0),(9,29,481,0,0),(9,29,488,0,0),(9,29,489,0,0),(9,29,490,0,0),(9,29,491,0,0),(9,29,493,0,0),(9,29,494,0,0),(9,29,495,0,0),(9,29,496,0,0),(9,29,497,0,0),(9,29,502,0,0),(9,29,503,0,0),(9,29,504,0,0),(9,29,505,0,0),(9,10,518,0,0),(9,10,519,0,0),(9,10,520,0,0),(9,10,521,0,0),(9,10,522,0,0),(9,10,523,0,0),(9,33,524,0,0),(9,33,525,0,0),(9,33,526,0,0),(9,33,527,0,0),(9,33,528,0,0),(9,33,529,0,0),(9,33,530,0,0),(9,33,531,0,0),(9,33,532,0,0),(9,33,533,0,0),(9,33,534,0,0),(9,33,535,0,0),(9,33,536,0,0),(9,33,537,0,0),(9,33,538,0,1),(9,33,539,0,1),(9,29,540,0,0),(9,34,541,0,0),(9,34,542,0,0),(9,34,543,0,0),(9,34,544,0,0),(9,34,545,0,0),(9,34,546,0,0),(9,34,547,0,0),(9,34,548,0,0),(9,34,549,0,1),(9,34,550,0,1),(9,34,551,0,0),(9,34,552,0,0),(9,34,553,0,0),(9,34,554,0,0),(9,34,555,0,0),(9,34,556,0,0),(9,34,557,0,0),(9,34,558,0,0),(9,34,559,0,0),(9,36,560,0,0),(9,36,561,0,1),(9,36,562,0,1),(9,36,563,0,0),(9,36,564,0,1),(9,36,565,0,0),(9,36,566,0,0),(9,36,567,0,0),(9,36,568,0,0),(9,36,569,0,0),(9,36,570,0,0),(9,36,571,0,1),(9,36,572,0,1),(9,36,573,0,0),(9,36,574,0,0),(9,36,575,0,0),(9,36,576,0,1),(9,36,577,0,0),(9,36,578,0,0),(9,40,579,0,0),(9,40,580,0,0),(9,40,581,0,0),(9,40,582,0,0),(9,40,583,0,0),(9,40,584,0,0),(9,40,585,0,1),(9,40,586,0,1),(9,40,587,0,0),(9,40,588,0,0),(9,41,589,0,0),(9,41,590,0,0),(9,41,591,0,0),(9,41,592,0,0),(9,41,593,0,0),(9,41,594,0,0),(9,41,595,0,0),(9,41,596,0,0),(9,41,597,0,0),(9,41,598,0,0),(9,41,599,0,0),(9,41,600,0,1),(9,41,601,0,1),(9,41,602,0,0),(9,41,603,0,0),(9,42,604,0,0),(9,42,605,0,0),(9,42,606,0,0),(9,42,607,0,0),(9,42,608,0,0),(9,42,609,0,0),(9,42,610,0,0),(9,42,611,0,0),(9,42,612,0,0),(9,42,613,0,0),(9,42,614,0,0),(9,42,615,0,0),(9,42,616,0,0),(9,42,617,0,1),(9,42,618,0,1),(9,42,619,0,0),(9,42,620,0,0),(9,43,621,0,0),(9,43,622,0,0),(9,43,623,0,0),(9,43,624,0,0),(9,43,625,0,0),(9,43,626,0,0),(9,43,627,0,0),(9,43,628,0,0),(9,43,629,0,0),(9,43,630,0,0),(9,43,631,0,0),(9,43,632,0,0),(9,43,633,0,0),(9,43,634,0,0),(9,43,635,0,1),(9,43,636,0,1),(9,43,637,0,0),(9,43,638,0,0),(9,45,639,0,0),(9,45,640,0,0),(9,45,641,0,1),(9,45,642,0,1),(9,45,643,0,0),(9,45,644,0,1),(9,45,645,0,0),(9,47,646,0,0),(9,47,647,0,1),(9,47,648,0,1),(9,47,649,0,0),(9,47,650,0,0),(9,2,651,0,0),(9,23,653,0,1),(9,23,654,0,1),(9,23,655,0,1),(9,23,656,0,1),(9,23,657,0,1),(9,23,658,0,1),(9,23,659,0,1),(9,23,660,0,1),(9,23,661,0,1),(9,22,662,0,1),(9,22,663,0,1),(9,22,664,0,1),(9,22,665,0,1),(9,22,666,0,1),(9,22,667,0,1),(9,22,668,0,1),(9,22,669,0,1),(9,22,670,0,1),(9,21,671,0,1),(9,21,672,0,1),(9,21,673,0,1),(9,21,674,0,1),(9,21,675,0,1),(9,21,676,0,1),(9,21,677,0,1),(9,21,678,0,1),(9,21,679,0,1),(9,20,680,0,1),(9,20,681,0,1),(9,20,682,0,1),(9,20,683,0,1),(9,20,684,0,1),(9,20,685,0,1),(9,20,686,0,1),(9,20,687,0,1),(9,20,688,0,1),(9,41,690,0,0),(9,45,691,0,0),(9,23,695,0,0),(9,22,696,0,0),(9,21,697,0,0),(9,20,698,0,0),(9,6,700,0,1),(9,4,701,0,1),(9,2,702,0,1),(9,23,704,0,0),(9,23,705,0,0),(9,21,706,0,0),(9,21,707,0,0),(9,18,708,0,0),(9,7,709,0,0),(9,45,710,0,0),(9,45,711,0,0),(9,23,712,0,1),(9,20,713,0,1),(9,21,714,0,1),(9,22,715,0,1),(9,2,717,0,0),(9,13,718,0,0),(9,13,720,0,0),(9,9,729,0,1),(9,29,750,0,0),(10,6,1,0,0),(10,6,2,0,0),(10,6,3,0,0),(10,6,4,0,0),(10,6,5,0,0),(10,6,6,0,0),(10,6,7,0,0),(10,6,8,0,0),(10,6,9,0,0),(10,6,10,0,0),(10,6,11,0,0),(10,6,12,0,0),(10,6,13,0,0),(10,6,14,0,0),(10,6,15,0,0),(10,6,16,0,0),(10,6,17,0,0),(10,6,18,0,0),(10,6,19,0,0),(10,6,20,0,0),(10,6,21,0,1),(10,6,22,0,1),(10,6,23,0,0),(10,6,24,0,0),(10,6,25,0,0),(10,6,26,0,0),(10,6,27,0,0),(10,6,28,0,0),(10,6,29,0,0),(10,6,30,0,0),(10,6,31,0,0),(10,6,32,0,0),(10,6,33,0,0),(10,6,34,0,0),(10,6,35,0,0),(10,6,36,0,0),(10,7,37,0,0),(10,7,38,0,0),(10,7,39,0,0),(10,7,40,0,0),(10,7,41,0,0),(10,7,42,0,0),(10,7,43,0,0),(10,7,44,0,0),(10,7,45,0,0),(10,7,46,0,0),(10,7,47,0,0),(10,7,48,0,0),(10,7,49,0,0),(10,7,50,0,0),(10,7,51,0,0),(10,7,52,0,0),(10,7,53,0,0),(10,7,54,0,0),(10,7,55,0,0),(10,7,56,0,1),(10,7,57,0,1),(10,7,58,0,0),(10,7,59,0,0),(10,7,60,0,0),(10,7,61,0,0),(10,7,62,0,0),(10,7,63,0,0),(10,7,64,0,0),(10,7,65,0,0),(10,4,66,0,0),(10,4,67,0,0),(10,4,68,0,0),(10,4,69,0,0),(10,4,70,0,0),(10,4,71,0,0),(10,4,72,0,0),(10,4,73,0,0),(10,4,74,0,0),(10,4,75,0,0),(10,4,76,0,0),(10,4,77,0,0),(10,4,78,0,0),(10,4,79,0,0),(10,4,80,0,0),(10,4,81,0,0),(10,4,82,0,0),(10,4,83,0,0),(10,4,84,0,0),(10,4,85,0,0),(10,4,86,0,0),(10,4,87,0,0),(10,4,88,0,0),(10,4,89,0,0),(10,4,90,0,1),(10,4,91,0,1),(10,4,92,0,0),(10,4,93,0,0),(10,4,94,0,0),(10,4,95,0,0),(10,4,96,0,0),(10,4,97,0,0),(10,4,98,0,0),(10,4,99,0,0),(10,4,100,0,0),(10,4,101,0,0),(10,4,102,0,0),(10,4,103,0,0),(10,4,104,0,0),(10,4,105,0,0),(10,4,106,0,0),(10,4,107,0,0),(10,4,108,0,0),(10,4,109,0,0),(10,2,110,0,0),(10,2,111,0,0),(10,2,112,0,0),(10,2,113,0,0),(10,2,114,0,0),(10,2,115,0,0),(10,2,116,0,0),(10,2,117,0,0),(10,2,118,0,0),(10,2,119,0,0),(10,2,120,0,0),(10,2,121,0,0),(10,2,122,0,1),(10,2,123,0,1),(10,2,124,0,0),(10,2,125,0,0),(10,26,126,0,0),(10,26,127,0,0),(10,26,128,0,0),(10,26,129,0,0),(10,26,130,0,0),(10,26,131,0,0),(10,26,132,0,0),(10,26,133,0,0),(10,26,134,0,0),(10,26,135,0,0),(10,26,136,0,0),(10,26,137,0,1),(10,26,138,0,1),(10,26,139,0,0),(10,26,140,0,0),(10,26,141,0,0),(10,26,142,0,0),(10,26,143,0,0),(10,26,144,0,0),(10,26,145,0,0),(10,26,146,0,0),(10,26,147,0,0),(10,26,148,0,0),(10,26,149,0,0),(10,26,150,0,0),(10,13,155,0,0),(10,13,156,0,0),(10,13,157,0,0),(10,13,158,0,0),(10,13,159,0,0),(10,13,160,0,0),(10,13,161,0,0),(10,13,162,0,0),(10,13,163,0,0),(10,13,164,0,0),(10,13,165,0,0),(10,13,166,0,1),(10,13,167,0,1),(10,13,168,0,0),(10,13,169,0,0),(10,13,170,0,0),(10,13,171,0,0),(10,14,173,0,0),(10,14,174,0,0),(10,14,175,0,0),(10,14,176,0,0),(10,14,177,0,0),(10,14,178,0,0),(10,14,179,0,0),(10,14,180,0,0),(10,14,181,0,0),(10,14,182,0,0),(10,14,183,0,0),(10,14,184,0,0),(10,14,185,0,0),(10,14,186,0,0),(10,14,187,0,0),(10,14,188,0,0),(10,14,189,0,0),(10,14,190,0,1),(10,14,191,0,1),(10,14,192,0,0),(10,14,193,0,0),(10,14,194,0,0),(10,14,195,0,0),(10,14,196,0,0),(10,14,197,0,0),(10,14,198,0,0),(10,14,199,0,0),(10,14,200,0,0),(10,14,201,0,0),(10,14,202,0,0),(10,14,203,0,0),(10,8,204,0,0),(10,8,205,0,1),(10,8,206,0,1),(10,8,207,0,0),(10,8,208,0,0),(10,8,209,0,0),(10,8,210,0,1),(10,8,211,0,1),(10,8,212,0,0),(10,8,213,0,0),(10,8,214,0,0),(10,8,215,0,1),(10,8,216,0,0),(10,8,217,0,0),(10,8,218,0,0),(10,10,219,0,0),(10,10,220,0,0),(10,10,221,0,0),(10,10,222,0,0),(10,10,223,0,0),(10,10,224,0,0),(10,10,225,0,0),(10,10,226,0,0),(10,10,227,0,0),(10,10,228,0,1),(10,10,229,0,0),(10,10,230,0,0),(10,9,231,0,0),(10,9,232,0,0),(10,9,233,0,0),(10,9,234,0,0),(10,9,235,0,0),(10,9,236,0,0),(10,9,237,0,0),(10,9,238,0,0),(10,9,239,0,0),(10,9,240,0,0),(10,9,241,0,0),(10,9,242,0,0),(10,9,243,0,1),(10,9,244,0,1),(10,9,245,0,0),(10,9,246,0,0),(10,9,247,0,0),(10,9,248,0,0),(10,9,249,0,0),(10,9,250,0,0),(10,9,251,0,0),(10,9,252,0,0),(10,9,253,0,0),(10,9,254,0,0),(10,16,255,0,0),(10,16,256,0,0),(10,16,257,0,0),(10,16,258,0,0),(10,16,259,0,0),(10,16,260,0,0),(10,16,261,0,0),(10,16,262,0,0),(10,16,263,0,0),(10,16,264,0,0),(10,16,265,0,0),(10,16,266,0,0),(10,16,267,0,0),(10,16,268,0,0),(10,16,269,0,1),(10,16,270,0,1),(10,16,271,0,0),(10,16,272,0,0),(10,16,273,0,0),(10,16,274,0,0),(10,16,275,0,0),(10,16,276,0,0),(10,16,277,0,0),(10,15,278,0,0),(10,15,279,0,0),(10,15,280,0,0),(10,15,281,0,0),(10,15,282,0,0),(10,15,283,0,0),(10,15,285,0,1),(10,15,286,0,1),(10,15,287,0,0),(10,18,288,0,0),(10,18,289,0,0),(10,18,290,0,0),(10,18,291,0,0),(10,18,292,0,0),(10,18,293,0,0),(10,18,294,0,0),(10,18,295,0,1),(10,18,296,0,1),(10,18,297,0,0),(10,18,298,0,0),(10,18,299,0,0),(10,18,300,0,0),(10,18,301,0,0),(10,18,302,0,0),(10,18,303,0,0),(10,18,304,0,0),(10,19,305,0,0),(10,19,306,0,0),(10,19,307,0,0),(10,19,308,0,1),(10,19,309,0,1),(10,19,310,0,0),(10,19,311,0,0),(10,19,312,0,0),(10,20,313,0,0),(10,20,314,0,0),(10,20,315,0,0),(10,20,316,0,0),(10,20,317,0,0),(10,20,318,0,0),(10,20,319,0,0),(10,20,320,0,0),(10,20,321,0,0),(10,20,322,0,0),(10,20,323,0,0),(10,20,324,0,0),(10,20,325,0,0),(10,20,326,0,0),(10,20,327,0,0),(10,20,328,0,0),(10,20,329,0,0),(10,20,330,0,0),(10,20,331,0,1),(10,20,332,0,1),(10,20,333,0,0),(10,20,334,0,0),(10,20,335,0,0),(10,20,336,0,0),(10,20,337,0,0),(10,20,338,0,0),(10,20,339,0,0),(10,20,340,0,0),(10,20,341,0,0),(10,20,342,0,0),(10,20,343,0,0),(10,20,344,0,0),(10,20,345,0,0),(10,20,346,0,0),(10,20,347,0,0),(10,20,348,0,0),(10,20,349,0,0),(10,21,350,0,0),(10,21,351,0,0),(10,21,352,0,0),(10,21,353,0,0),(10,21,354,0,0),(10,21,355,0,0),(10,21,356,0,0),(10,21,357,0,0),(10,21,358,0,0),(10,21,359,0,0),(10,21,360,0,0),(10,21,361,0,0),(10,21,362,0,0),(10,21,363,0,0),(10,21,364,0,0),(10,21,365,0,0),(10,21,366,0,0),(10,21,367,0,0),(10,21,368,0,0),(10,21,369,0,1),(10,21,370,0,1),(10,21,371,0,0),(10,21,372,0,0),(10,21,373,0,0),(10,21,374,0,0),(10,21,375,0,0),(10,21,376,0,0),(10,21,377,0,0),(10,21,378,0,0),(10,21,379,0,0),(10,21,380,0,0),(10,21,381,0,0),(10,21,382,0,0),(10,21,383,0,0),(10,21,384,0,0),(10,21,385,0,0),(10,21,386,0,0),(10,21,387,0,0),(10,22,388,0,0),(10,22,389,0,0),(10,22,390,0,0),(10,22,391,0,0),(10,22,392,0,0),(10,22,393,0,0),(10,22,394,0,0),(10,22,395,0,0),(10,22,396,0,0),(10,22,397,0,0),(10,22,398,0,0),(10,22,399,0,0),(10,22,400,0,0),(10,22,401,0,0),(10,22,402,0,0),(10,22,403,0,0),(10,22,404,0,0),(10,22,405,0,0),(10,22,406,0,0),(10,22,407,0,0),(10,22,408,0,0),(10,22,409,0,0),(10,22,410,0,1),(10,22,411,0,1),(10,22,412,0,0),(10,22,413,0,0),(10,22,414,0,0),(10,22,415,0,0),(10,22,416,0,0),(10,22,417,0,0),(10,22,418,0,0),(10,22,419,0,0),(10,22,420,0,0),(10,22,421,0,0),(10,22,422,0,0),(10,22,423,0,0),(10,22,424,0,0),(10,22,425,0,0),(10,22,426,0,0),(10,22,427,0,0),(10,22,428,0,0),(10,22,429,0,0),(10,22,430,0,0),(10,22,431,0,0),(10,22,432,0,0),(10,22,433,0,0),(10,22,434,0,0),(10,23,435,0,0),(10,23,436,0,0),(10,23,437,0,0),(10,23,438,0,0),(10,23,439,0,0),(10,23,440,0,0),(10,23,441,0,0),(10,23,442,0,0),(10,23,443,0,0),(10,23,444,0,0),(10,23,445,0,0),(10,23,446,0,0),(10,23,447,0,0),(10,23,448,0,0),(10,23,449,0,0),(10,23,450,0,0),(10,23,451,0,0),(10,23,452,0,0),(10,23,453,0,0),(10,23,454,0,1),(10,23,455,0,1),(10,23,456,0,0),(10,23,457,0,0),(10,23,458,0,0),(10,23,459,0,0),(10,23,460,0,0),(10,23,461,0,0),(10,23,462,0,0),(10,23,463,0,0),(10,23,464,0,0),(10,23,465,0,0),(10,23,466,0,0),(10,23,467,0,0),(10,23,468,0,0),(10,23,469,0,0),(10,23,470,0,0),(10,23,471,0,0),(10,23,472,0,0),(10,23,473,0,0),(10,29,474,0,0),(10,29,478,0,0),(10,29,479,0,0),(10,29,481,0,0),(10,29,488,0,0),(10,29,489,0,0),(10,29,490,0,0),(10,29,491,0,0),(10,29,493,0,0),(10,29,494,0,0),(10,29,495,0,0),(10,29,496,0,0),(10,29,497,0,0),(10,29,502,0,0),(10,29,503,0,0),(10,29,504,0,0),(10,29,505,0,0),(10,10,518,0,0),(10,10,519,0,0),(10,10,520,0,0),(10,10,521,0,0),(10,10,522,0,0),(10,10,523,0,0),(10,33,524,0,0),(10,33,525,0,0),(10,33,526,0,0),(10,33,527,0,0),(10,33,528,0,0),(10,33,529,0,0),(10,33,530,0,0),(10,33,531,0,0),(10,33,532,0,0),(10,33,533,0,0),(10,33,534,0,0),(10,33,535,0,0),(10,33,536,0,0),(10,33,537,0,0),(10,33,538,0,1),(10,33,539,0,1),(10,29,540,0,0),(10,34,541,0,0),(10,34,542,0,0),(10,34,543,0,0),(10,34,544,0,0),(10,34,545,0,0),(10,34,546,0,0),(10,34,547,0,0),(10,34,548,0,0),(10,34,549,0,1),(10,34,550,0,1),(10,34,551,0,0),(10,34,552,0,0),(10,34,553,0,0),(10,34,554,0,0),(10,34,555,0,0),(10,34,556,0,0),(10,34,557,0,0),(10,34,558,0,0),(10,34,559,0,0),(10,36,560,0,0),(10,36,561,0,1),(10,36,562,0,1),(10,36,563,0,0),(10,36,564,0,1),(10,36,565,0,0),(10,36,566,0,0),(10,36,567,0,0),(10,36,568,0,0),(10,36,569,0,0),(10,36,570,0,0),(10,36,571,0,1),(10,36,572,0,1),(10,36,573,0,0),(10,36,574,0,0),(10,36,575,0,0),(10,36,576,0,1),(10,36,577,0,0),(10,36,578,0,0),(10,40,579,0,0),(10,40,580,0,0),(10,40,581,0,0),(10,40,582,0,0),(10,40,583,0,0),(10,40,584,0,0),(10,40,585,0,1),(10,40,586,0,1),(10,40,587,0,0),(10,40,588,0,0),(10,41,589,0,0),(10,41,590,0,0),(10,41,591,0,0),(10,41,592,0,0),(10,41,593,0,0),(10,41,594,0,0),(10,41,595,0,0),(10,41,596,0,0),(10,41,597,0,0),(10,41,598,0,0),(10,41,599,0,0),(10,41,600,0,1),(10,41,601,0,1),(10,41,602,0,0),(10,41,603,0,0),(10,42,604,0,0),(10,42,605,0,0),(10,42,606,0,0),(10,42,607,0,0),(10,42,608,0,0),(10,42,609,0,0),(10,42,610,0,0),(10,42,611,0,0),(10,42,612,0,0),(10,42,613,0,0),(10,42,614,0,0),(10,42,615,0,0),(10,42,616,0,0),(10,42,617,0,1),(10,42,618,0,1),(10,42,619,0,0),(10,42,620,0,0),(10,43,621,0,0),(10,43,622,0,0),(10,43,623,0,0),(10,43,624,0,0),(10,43,625,0,0),(10,43,626,0,0),(10,43,627,0,0),(10,43,628,0,0),(10,43,629,0,0),(10,43,630,0,0),(10,43,631,0,0),(10,43,632,0,0),(10,43,633,0,0),(10,43,634,0,0),(10,43,635,0,1),(10,43,636,0,1),(10,43,637,0,0),(10,43,638,0,0),(10,45,639,0,0),(10,45,640,0,0),(10,45,641,0,1),(10,45,642,0,1),(10,45,643,0,0),(10,45,644,0,1),(10,45,645,0,0),(10,47,646,0,0),(10,47,647,0,1),(10,47,648,0,1),(10,47,649,0,0),(10,47,650,0,0),(10,2,651,0,0),(10,23,653,0,1),(10,23,654,0,1),(10,23,655,0,1),(10,23,656,0,1),(10,23,657,0,1),(10,23,658,0,1),(10,23,659,0,1),(10,23,660,0,1),(10,23,661,0,1),(10,22,662,0,1),(10,22,663,0,1),(10,22,664,0,1),(10,22,665,0,1),(10,22,666,0,1),(10,22,667,0,1),(10,22,668,0,1),(10,22,669,0,1),(10,22,670,0,1),(10,21,671,0,1),(10,21,672,0,1),(10,21,673,0,1),(10,21,674,0,1),(10,21,675,0,1),(10,21,676,0,1),(10,21,677,0,1),(10,21,678,0,1),(10,21,679,0,1),(10,20,680,0,1),(10,20,681,0,1),(10,20,682,0,1),(10,20,683,0,1),(10,20,684,0,1),(10,20,685,0,1),(10,20,686,0,1),(10,20,687,0,1),(10,20,688,0,1),(10,41,690,0,0),(10,45,691,0,0),(10,23,695,0,0),(10,22,696,0,0),(10,21,697,0,0),(10,20,698,0,0),(10,6,700,0,1),(10,4,701,0,1),(10,2,702,0,1),(10,23,704,0,0),(10,23,705,0,0),(10,21,706,0,0),(10,21,707,0,0),(10,18,708,0,0),(10,7,709,0,0),(10,45,710,0,0),(10,45,711,0,0),(10,23,712,0,1),(10,20,713,0,1),(10,21,714,0,1),(10,22,715,0,1),(10,2,717,0,0),(10,13,718,0,0),(10,13,720,0,0),(10,9,729,0,1),(10,29,750,0,0),(11,6,1,0,0),(11,6,2,0,0),(11,6,3,0,0),(11,6,4,0,0),(11,6,5,0,0),(11,6,6,0,0),(11,6,7,0,0),(11,6,8,0,0),(11,6,9,0,0),(11,6,10,0,0),(11,6,11,0,0),(11,6,12,0,0),(11,6,13,0,0),(11,6,14,0,0),(11,6,15,0,0),(11,6,16,0,0),(11,6,17,0,0),(11,6,18,0,0),(11,6,19,0,0),(11,6,20,0,0),(11,6,21,0,1),(11,6,22,0,1),(11,6,23,0,0),(11,6,24,0,0),(11,6,25,0,0),(11,6,26,0,0),(11,6,27,0,0),(11,6,28,0,0),(11,6,29,0,0),(11,6,30,0,0),(11,6,31,0,0),(11,6,32,0,0),(11,6,33,0,0),(11,6,34,0,0),(11,6,35,0,0),(11,6,36,0,0),(11,7,37,0,0),(11,7,38,0,0),(11,7,39,0,0),(11,7,40,0,0),(11,7,41,0,0),(11,7,42,0,0),(11,7,43,0,0),(11,7,44,0,0),(11,7,45,0,0),(11,7,46,0,0),(11,7,47,0,0),(11,7,48,0,0),(11,7,49,0,0),(11,7,50,0,0),(11,7,51,0,0),(11,7,52,0,0),(11,7,53,0,0),(11,7,54,0,0),(11,7,55,0,0),(11,7,56,0,1),(11,7,57,0,1),(11,7,58,0,0),(11,7,59,0,0),(11,7,60,0,0),(11,7,61,0,0),(11,7,62,0,0),(11,7,63,0,0),(11,7,64,0,0),(11,7,65,0,0),(11,4,66,0,0),(11,4,67,0,0),(11,4,68,0,0),(11,4,69,0,0),(11,4,70,0,0),(11,4,71,0,0),(11,4,72,0,0),(11,4,73,0,0),(11,4,74,0,0),(11,4,75,0,0),(11,4,76,0,0),(11,4,77,0,0),(11,4,78,0,0),(11,4,79,0,0),(11,4,80,0,0),(11,4,81,0,0),(11,4,82,0,0),(11,4,83,0,0),(11,4,84,0,0),(11,4,85,0,0),(11,4,86,0,0),(11,4,87,0,0),(11,4,88,0,0),(11,4,89,0,0),(11,4,90,0,1),(11,4,91,0,1),(11,4,92,0,0),(11,4,93,0,0),(11,4,94,0,0),(11,4,95,0,0),(11,4,96,0,0),(11,4,97,0,0),(11,4,98,0,0),(11,4,99,0,0),(11,4,100,0,0),(11,4,101,0,0),(11,4,102,0,0),(11,4,103,0,0),(11,4,104,0,0),(11,4,105,0,0),(11,4,106,0,0),(11,4,107,0,0),(11,4,108,0,0),(11,4,109,0,0),(11,2,110,0,0),(11,2,111,0,0),(11,2,112,0,0),(11,2,113,0,0),(11,2,114,0,0),(11,2,115,0,0),(11,2,116,0,0),(11,2,117,0,0),(11,2,118,0,0),(11,2,119,0,0),(11,2,120,0,0),(11,2,121,0,0),(11,2,122,0,1),(11,2,123,0,1),(11,2,124,0,0),(11,2,125,0,0),(11,26,126,0,0),(11,26,127,0,0),(11,26,128,0,0),(11,26,129,0,0),(11,26,130,0,0),(11,26,131,0,0),(11,26,132,0,0),(11,26,133,0,0),(11,26,134,0,0),(11,26,135,0,0),(11,26,136,0,0),(11,26,137,0,1),(11,26,138,0,1),(11,26,139,0,0),(11,26,140,0,0),(11,26,141,0,0),(11,26,142,0,0),(11,26,143,0,0),(11,26,144,0,0),(11,26,145,0,0),(11,26,146,0,0),(11,26,147,0,0),(11,26,148,0,0),(11,26,149,0,0),(11,26,150,0,0),(11,13,155,0,0),(11,13,156,0,0),(11,13,157,0,0),(11,13,158,0,0),(11,13,159,0,0),(11,13,160,0,0),(11,13,161,0,0),(11,13,162,0,0),(11,13,163,0,0),(11,13,164,0,0),(11,13,165,0,0),(11,13,166,0,1),(11,13,167,0,1),(11,13,168,0,0),(11,13,169,0,0),(11,13,170,0,0),(11,13,171,0,0),(11,14,173,0,0),(11,14,174,0,0),(11,14,175,0,0),(11,14,176,0,0),(11,14,177,0,0),(11,14,178,0,0),(11,14,179,0,0),(11,14,180,0,0),(11,14,181,0,0),(11,14,182,0,0),(11,14,183,0,0),(11,14,184,0,0),(11,14,185,0,0),(11,14,186,0,0),(11,14,187,0,0),(11,14,188,0,0),(11,14,189,0,0),(11,14,190,0,1),(11,14,191,0,1),(11,14,192,0,0),(11,14,193,0,0),(11,14,194,0,0),(11,14,195,0,0),(11,14,196,0,0),(11,14,197,0,0),(11,14,198,0,0),(11,14,199,0,0),(11,14,200,0,0),(11,14,201,0,0),(11,14,202,0,0),(11,14,203,0,0),(11,8,204,0,0),(11,8,205,0,1),(11,8,206,0,1),(11,8,207,0,0),(11,8,208,0,0),(11,8,209,0,0),(11,8,210,0,1),(11,8,211,0,1),(11,8,212,0,0),(11,8,213,0,0),(11,8,214,0,0),(11,8,215,0,1),(11,8,216,0,0),(11,8,217,0,0),(11,8,218,0,0),(11,10,219,0,0),(11,10,220,0,0),(11,10,221,0,0),(11,10,222,0,0),(11,10,223,0,0),(11,10,224,0,0),(11,10,225,0,0),(11,10,226,0,0),(11,10,227,0,0),(11,10,228,0,1),(11,10,229,0,0),(11,10,230,0,0),(11,9,231,0,0),(11,9,232,0,0),(11,9,233,0,0),(11,9,234,0,0),(11,9,235,0,0),(11,9,236,0,0),(11,9,237,0,0),(11,9,238,0,0),(11,9,239,0,0),(11,9,240,0,0),(11,9,241,0,0),(11,9,242,0,0),(11,9,243,0,1),(11,9,244,0,1),(11,9,245,0,0),(11,9,246,0,0),(11,9,247,0,0),(11,9,248,0,0),(11,9,249,0,0),(11,9,250,0,0),(11,9,251,0,0),(11,9,252,0,0),(11,9,253,0,0),(11,9,254,0,0),(11,16,255,0,0),(11,16,256,0,0),(11,16,257,0,0),(11,16,258,0,0),(11,16,259,0,0),(11,16,260,0,0),(11,16,261,0,0),(11,16,262,0,0),(11,16,263,0,0),(11,16,264,0,0),(11,16,265,0,0),(11,16,266,0,0),(11,16,267,0,0),(11,16,268,0,0),(11,16,269,0,1),(11,16,270,0,1),(11,16,271,0,0),(11,16,272,0,0),(11,16,273,0,0),(11,16,274,0,0),(11,16,275,0,0),(11,16,276,0,0),(11,16,277,0,0),(11,15,278,0,0),(11,15,279,0,0),(11,15,280,0,0),(11,15,281,0,0),(11,15,282,0,0),(11,15,283,0,0),(11,15,285,0,1),(11,15,286,0,1),(11,15,287,0,0),(11,18,288,0,0),(11,18,289,0,0),(11,18,290,0,0),(11,18,291,0,0),(11,18,292,0,0),(11,18,293,0,0),(11,18,294,0,0),(11,18,295,0,1),(11,18,296,0,1),(11,18,297,0,0),(11,18,298,0,0),(11,18,299,0,0),(11,18,300,0,0),(11,18,301,0,0),(11,18,302,0,0),(11,18,303,0,0),(11,18,304,0,0),(11,19,305,0,0),(11,19,306,0,0),(11,19,307,0,0),(11,19,308,0,1),(11,19,309,0,1),(11,19,310,0,0),(11,19,311,0,0),(11,19,312,0,0),(11,20,313,0,0),(11,20,314,0,0),(11,20,315,0,0),(11,20,316,0,0),(11,20,317,0,0),(11,20,318,0,0),(11,20,319,0,0),(11,20,320,0,0),(11,20,321,0,0),(11,20,322,0,0),(11,20,323,0,0),(11,20,324,0,0),(11,20,325,0,0),(11,20,326,0,0),(11,20,327,0,0),(11,20,328,0,0),(11,20,329,0,0),(11,20,330,0,0),(11,20,331,0,1),(11,20,332,0,1),(11,20,333,0,0),(11,20,334,0,0),(11,20,335,0,0),(11,20,336,0,0),(11,20,337,0,0),(11,20,338,0,0),(11,20,339,0,0),(11,20,340,0,0),(11,20,341,0,0),(11,20,342,0,0),(11,20,343,0,0),(11,20,344,0,0),(11,20,345,0,0),(11,20,346,0,0),(11,20,347,0,0),(11,20,348,0,0),(11,20,349,0,0),(11,21,350,0,0),(11,21,351,0,0),(11,21,352,0,0),(11,21,353,0,0),(11,21,354,0,0),(11,21,355,0,0),(11,21,356,0,0),(11,21,357,0,0),(11,21,358,0,0),(11,21,359,0,0),(11,21,360,0,0),(11,21,361,0,0),(11,21,362,0,0),(11,21,363,0,0),(11,21,364,0,0),(11,21,365,0,0),(11,21,366,0,0),(11,21,367,0,0),(11,21,368,0,0),(11,21,369,0,1),(11,21,370,0,1),(11,21,371,0,0),(11,21,372,0,0),(11,21,373,0,0),(11,21,374,0,0),(11,21,375,0,0),(11,21,376,0,0),(11,21,377,0,0),(11,21,378,0,0),(11,21,379,0,0),(11,21,380,0,0),(11,21,381,0,0),(11,21,382,0,0),(11,21,383,0,0),(11,21,384,0,0),(11,21,385,0,0),(11,21,386,0,0),(11,21,387,0,0),(11,22,388,0,0),(11,22,389,0,0),(11,22,390,0,0),(11,22,391,0,0),(11,22,392,0,0),(11,22,393,0,0),(11,22,394,0,0),(11,22,395,0,0),(11,22,396,0,0),(11,22,397,0,0),(11,22,398,0,0),(11,22,399,0,0),(11,22,400,0,0),(11,22,401,0,0),(11,22,402,0,0),(11,22,403,0,0),(11,22,404,0,0),(11,22,405,0,0),(11,22,406,0,0),(11,22,407,0,0),(11,22,408,0,0),(11,22,409,0,0),(11,22,410,0,1),(11,22,411,0,1),(11,22,412,0,0),(11,22,413,0,0),(11,22,414,0,0),(11,22,415,0,0),(11,22,416,0,0),(11,22,417,0,0),(11,22,418,0,0),(11,22,419,0,0),(11,22,420,0,0),(11,22,421,0,0),(11,22,422,0,0),(11,22,423,0,0),(11,22,424,0,0),(11,22,425,0,0),(11,22,426,0,0),(11,22,427,0,0),(11,22,428,0,0),(11,22,429,0,0),(11,22,430,0,0),(11,22,431,0,0),(11,22,432,0,0),(11,22,433,0,0),(11,22,434,0,0),(11,23,435,0,0),(11,23,436,0,0),(11,23,437,0,0),(11,23,438,0,0),(11,23,439,0,0),(11,23,440,0,0),(11,23,441,0,0),(11,23,442,0,0),(11,23,443,0,0),(11,23,444,0,0),(11,23,445,0,0),(11,23,446,0,0),(11,23,447,0,0),(11,23,448,0,0),(11,23,449,0,0),(11,23,450,0,0),(11,23,451,0,0),(11,23,452,0,0),(11,23,453,0,0),(11,23,454,0,1),(11,23,455,0,1),(11,23,456,0,0),(11,23,457,0,0),(11,23,458,0,0),(11,23,459,0,0),(11,23,460,0,0),(11,23,461,0,0),(11,23,462,0,0),(11,23,463,0,0),(11,23,464,0,0),(11,23,465,0,0),(11,23,466,0,0),(11,23,467,0,0),(11,23,468,0,0),(11,23,469,0,0),(11,23,470,0,0),(11,23,471,0,0),(11,23,472,0,0),(11,23,473,0,0),(11,29,474,0,0),(11,29,478,0,0),(11,29,479,0,0),(11,29,481,0,0),(11,29,488,0,0),(11,29,489,0,0),(11,29,490,0,0),(11,29,491,0,0),(11,29,493,0,0),(11,29,494,0,0),(11,29,495,0,0),(11,29,496,0,0),(11,29,497,0,0),(11,29,502,0,0),(11,29,503,0,0),(11,29,504,0,0),(11,29,505,0,0),(11,10,518,0,0),(11,10,519,0,0),(11,10,520,0,0),(11,10,521,0,0),(11,10,522,0,0),(11,10,523,0,0),(11,33,524,0,0),(11,33,525,0,0),(11,33,526,0,0),(11,33,527,0,0),(11,33,528,0,0),(11,33,529,0,0),(11,33,530,0,0),(11,33,531,0,0),(11,33,532,0,0),(11,33,533,0,0),(11,33,534,0,0),(11,33,535,0,0),(11,33,536,0,0),(11,33,537,0,0),(11,33,538,0,1),(11,33,539,0,1),(11,29,540,0,0),(11,34,541,0,0),(11,34,542,0,0),(11,34,543,0,0),(11,34,544,0,0),(11,34,545,0,0),(11,34,546,0,0),(11,34,547,0,0),(11,34,548,0,0),(11,34,549,0,1),(11,34,550,0,1),(11,34,551,0,0),(11,34,552,0,0),(11,34,553,0,0),(11,34,554,0,0),(11,34,555,0,0),(11,34,556,0,0),(11,34,557,0,0),(11,34,558,0,0),(11,34,559,0,0),(11,36,560,0,0),(11,36,561,0,1),(11,36,562,0,1),(11,36,563,0,0),(11,36,564,0,1),(11,36,565,0,0),(11,36,566,0,0),(11,36,567,0,0),(11,36,568,0,0),(11,36,569,0,0),(11,36,570,0,0),(11,36,571,0,1),(11,36,572,0,1),(11,36,573,0,0),(11,36,574,0,0),(11,36,575,0,0),(11,36,576,0,1),(11,36,577,0,0),(11,36,578,0,0),(11,40,579,0,0),(11,40,580,0,0),(11,40,581,0,0),(11,40,582,0,0),(11,40,583,0,0),(11,40,584,0,0),(11,40,585,0,1),(11,40,586,0,1),(11,40,587,0,0),(11,40,588,0,0),(11,41,589,0,0),(11,41,590,0,0),(11,41,591,0,0),(11,41,592,0,0),(11,41,593,0,0),(11,41,594,0,0),(11,41,595,0,0),(11,41,596,0,0),(11,41,597,0,0),(11,41,598,0,0),(11,41,599,0,0),(11,41,600,0,1),(11,41,601,0,1),(11,41,602,0,0),(11,41,603,0,0),(11,42,604,0,0),(11,42,605,0,0),(11,42,606,0,0),(11,42,607,0,0),(11,42,608,0,0),(11,42,609,0,0),(11,42,610,0,0),(11,42,611,0,0),(11,42,612,0,0),(11,42,613,0,0),(11,42,614,0,0),(11,42,615,0,0),(11,42,616,0,0),(11,42,617,0,1),(11,42,618,0,1),(11,42,619,0,0),(11,42,620,0,0),(11,43,621,0,0),(11,43,622,0,0),(11,43,623,0,0),(11,43,624,0,0),(11,43,625,0,0),(11,43,626,0,0),(11,43,627,0,0),(11,43,628,0,0),(11,43,629,0,0),(11,43,630,0,0),(11,43,631,0,0),(11,43,632,0,0),(11,43,633,0,0),(11,43,634,0,0),(11,43,635,0,1),(11,43,636,0,1),(11,43,637,0,0),(11,43,638,0,0),(11,45,639,0,0),(11,45,640,0,0),(11,45,641,0,1),(11,45,642,0,1),(11,45,643,0,0),(11,45,644,0,1),(11,45,645,0,0),(11,47,646,0,0),(11,47,647,0,1),(11,47,648,0,1),(11,47,649,0,0),(11,47,650,0,0),(11,2,651,0,0),(11,23,653,0,1),(11,23,654,0,1),(11,23,655,0,1),(11,23,656,0,1),(11,23,657,0,1),(11,23,658,0,1),(11,23,659,0,1),(11,23,660,0,1),(11,23,661,0,1),(11,22,662,0,1),(11,22,663,0,1),(11,22,664,0,1),(11,22,665,0,1),(11,22,666,0,1),(11,22,667,0,1),(11,22,668,0,1),(11,22,669,0,1),(11,22,670,0,1),(11,21,671,0,1),(11,21,672,0,1),(11,21,673,0,1),(11,21,674,0,1),(11,21,675,0,1),(11,21,676,0,1),(11,21,677,0,1),(11,21,678,0,1),(11,21,679,0,1),(11,20,680,0,1),(11,20,681,0,1),(11,20,682,0,1),(11,20,683,0,1),(11,20,684,0,1),(11,20,685,0,1),(11,20,686,0,1),(11,20,687,0,1),(11,20,688,0,1),(11,41,690,0,0),(11,45,691,0,0),(11,23,695,0,0),(11,22,696,0,0),(11,21,697,0,0),(11,20,698,0,0),(11,6,700,0,1),(11,4,701,0,1),(11,2,702,0,1),(11,23,704,0,0),(11,23,705,0,0),(11,21,706,0,0),(11,21,707,0,0),(11,18,708,0,0),(11,7,709,0,0),(11,45,710,0,0),(11,45,711,0,0),(11,23,712,0,1),(11,20,713,0,1),(11,21,714,0,1),(11,22,715,0,1),(11,2,717,0,0),(11,13,718,0,0),(11,13,720,0,0),(11,9,729,0,1),(11,29,750,0,0),(12,6,1,0,0),(12,6,2,0,0),(12,6,3,0,0),(12,6,4,0,0),(12,6,5,0,0),(12,6,6,0,0),(12,6,7,0,0),(12,6,8,0,0),(12,6,9,0,0),(12,6,10,0,0),(12,6,11,0,0),(12,6,12,0,0),(12,6,13,0,0),(12,6,14,0,0),(12,6,15,0,0),(12,6,16,0,0),(12,6,17,0,0),(12,6,18,0,0),(12,6,19,0,0),(12,6,20,0,0),(12,6,21,0,1),(12,6,22,0,1),(12,6,23,0,0),(12,6,24,0,0),(12,6,25,0,0),(12,6,26,0,0),(12,6,27,0,0),(12,6,28,0,0),(12,6,29,0,0),(12,6,30,0,0),(12,6,31,0,0),(12,6,32,0,0),(12,6,33,0,0),(12,6,34,0,0),(12,6,35,0,0),(12,6,36,0,0),(12,7,37,0,0),(12,7,38,0,0),(12,7,39,0,0),(12,7,40,0,0),(12,7,41,0,0),(12,7,42,0,0),(12,7,43,0,0),(12,7,44,0,0),(12,7,45,0,0),(12,7,46,0,0),(12,7,47,0,0),(12,7,48,0,0),(12,7,49,0,0),(12,7,50,0,0),(12,7,51,0,0),(12,7,52,0,0),(12,7,53,0,0),(12,7,54,0,0),(12,7,55,0,0),(12,7,56,0,1),(12,7,57,0,1),(12,7,58,0,0),(12,7,59,0,0),(12,7,60,0,0),(12,7,61,0,0),(12,7,62,0,0),(12,7,63,0,0),(12,7,64,0,0),(12,7,65,0,0),(12,4,66,0,0),(12,4,67,0,0),(12,4,68,0,0),(12,4,69,0,0),(12,4,70,0,0),(12,4,71,0,0),(12,4,72,0,0),(12,4,73,0,0),(12,4,74,0,0),(12,4,75,0,0),(12,4,76,0,0),(12,4,77,0,0),(12,4,78,0,0),(12,4,79,0,0),(12,4,80,0,0),(12,4,81,0,0),(12,4,82,0,0),(12,4,83,0,0),(12,4,84,0,0),(12,4,85,0,0),(12,4,86,0,0),(12,4,87,0,0),(12,4,88,0,0),(12,4,89,0,0),(12,4,90,0,1),(12,4,91,0,1),(12,4,92,0,0),(12,4,93,0,0),(12,4,94,0,0),(12,4,95,0,0),(12,4,96,0,0),(12,4,97,0,0),(12,4,98,0,0),(12,4,99,0,0),(12,4,100,0,0),(12,4,101,0,0),(12,4,102,0,0),(12,4,103,0,0),(12,4,104,0,0),(12,4,105,0,0),(12,4,106,0,0),(12,4,107,0,0),(12,4,108,0,0),(12,4,109,0,0),(12,2,110,0,0),(12,2,111,0,0),(12,2,112,0,0),(12,2,113,0,0),(12,2,114,0,0),(12,2,115,0,0),(12,2,116,0,0),(12,2,117,0,0),(12,2,118,0,0),(12,2,119,0,0),(12,2,120,0,0),(12,2,121,0,0),(12,2,122,0,1),(12,2,123,0,1),(12,2,124,0,0),(12,2,125,0,0),(12,26,126,0,0),(12,26,127,0,0),(12,26,128,0,0),(12,26,129,0,0),(12,26,130,0,0),(12,26,131,0,0),(12,26,132,0,0),(12,26,133,0,0),(12,26,134,0,0),(12,26,135,0,0),(12,26,136,0,0),(12,26,137,0,1),(12,26,138,0,1),(12,26,139,0,0),(12,26,140,0,0),(12,26,141,0,0),(12,26,142,0,0),(12,26,143,0,0),(12,26,144,0,0),(12,26,145,0,0),(12,26,146,0,0),(12,26,147,0,0),(12,26,148,0,0),(12,26,149,0,0),(12,26,150,0,0),(12,13,155,0,0),(12,13,156,0,0),(12,13,157,0,0),(12,13,158,0,0),(12,13,159,0,0),(12,13,160,0,0),(12,13,161,0,0),(12,13,162,0,0),(12,13,163,0,0),(12,13,164,0,0),(12,13,165,0,0),(12,13,166,0,1),(12,13,167,0,1),(12,13,168,0,0),(12,13,169,0,0),(12,13,170,0,0),(12,13,171,0,0),(12,14,173,0,0),(12,14,174,0,0),(12,14,175,0,0),(12,14,176,0,0),(12,14,177,0,0),(12,14,178,0,0),(12,14,179,0,0),(12,14,180,0,0),(12,14,181,0,0),(12,14,182,0,0),(12,14,183,0,0),(12,14,184,0,0),(12,14,185,0,0),(12,14,186,0,0),(12,14,187,0,0),(12,14,188,0,0),(12,14,189,0,0),(12,14,190,0,1),(12,14,191,0,1),(12,14,192,0,0),(12,14,193,0,0),(12,14,194,0,0),(12,14,195,0,0),(12,14,196,0,0),(12,14,197,0,0),(12,14,198,0,0),(12,14,199,0,0),(12,14,200,0,0),(12,14,201,0,0),(12,14,202,0,0),(12,14,203,0,0),(12,8,204,0,0),(12,8,205,0,1),(12,8,206,0,1),(12,8,207,0,0),(12,8,208,0,0),(12,8,209,0,0),(12,8,210,0,1),(12,8,211,0,1),(12,8,212,0,0),(12,8,213,0,0),(12,8,214,0,0),(12,8,215,0,1),(12,8,216,0,0),(12,8,217,0,0),(12,8,218,0,0),(12,10,219,0,0),(12,10,220,0,0),(12,10,221,0,0),(12,10,222,0,0),(12,10,223,0,0),(12,10,224,0,0),(12,10,225,0,0),(12,10,226,0,0),(12,10,227,0,0),(12,10,228,0,1),(12,10,229,0,0),(12,10,230,0,0),(12,9,231,0,0),(12,9,232,0,0),(12,9,233,0,0),(12,9,234,0,0),(12,9,235,0,0),(12,9,236,0,0),(12,9,237,0,0),(12,9,238,0,0),(12,9,239,0,0),(12,9,240,0,0),(12,9,241,0,0),(12,9,242,0,0),(12,9,243,0,1),(12,9,244,0,1),(12,9,245,0,0),(12,9,246,0,0),(12,9,247,0,0),(12,9,248,0,0),(12,9,249,0,0),(12,9,250,0,0),(12,9,251,0,0),(12,9,252,0,0),(12,9,253,0,0),(12,9,254,0,0),(12,16,255,0,0),(12,16,256,0,0),(12,16,257,0,0),(12,16,258,0,0),(12,16,259,0,0),(12,16,260,0,0),(12,16,261,0,0),(12,16,262,0,0),(12,16,263,0,0),(12,16,264,0,0),(12,16,265,0,0),(12,16,266,0,0),(12,16,267,0,0),(12,16,268,0,0),(12,16,269,0,1),(12,16,270,0,1),(12,16,271,0,0),(12,16,272,0,0),(12,16,273,0,0),(12,16,274,0,0),(12,16,275,0,0),(12,16,276,0,0),(12,16,277,0,0),(12,15,278,0,0),(12,15,279,0,0),(12,15,280,0,0),(12,15,281,0,0),(12,15,282,0,0),(12,15,283,0,0),(12,15,285,0,1),(12,15,286,0,1),(12,15,287,0,0),(12,18,288,0,0),(12,18,289,0,0),(12,18,290,0,0),(12,18,291,0,0),(12,18,292,0,0),(12,18,293,0,0),(12,18,294,0,0),(12,18,295,0,1),(12,18,296,0,1),(12,18,297,0,0),(12,18,298,0,0),(12,18,299,0,0),(12,18,300,0,0),(12,18,301,0,0),(12,18,302,0,0),(12,18,303,0,0),(12,18,304,0,0),(12,19,305,0,0),(12,19,306,0,0),(12,19,307,0,0),(12,19,308,0,1),(12,19,309,0,1),(12,19,310,0,0),(12,19,311,0,0),(12,19,312,0,0),(12,20,313,0,0),(12,20,314,0,0),(12,20,315,0,0),(12,20,316,0,0),(12,20,317,0,0),(12,20,318,0,0),(12,20,319,0,0),(12,20,320,0,0),(12,20,321,0,0),(12,20,322,0,0),(12,20,323,0,0),(12,20,324,0,0),(12,20,325,0,0),(12,20,326,0,0),(12,20,327,0,0),(12,20,328,0,0),(12,20,329,0,0),(12,20,330,0,0),(12,20,331,0,1),(12,20,332,0,1),(12,20,333,0,0),(12,20,334,0,0),(12,20,335,0,0),(12,20,336,0,0),(12,20,337,0,0),(12,20,338,0,0),(12,20,339,0,0),(12,20,340,0,0),(12,20,341,0,0),(12,20,342,0,0),(12,20,343,0,0),(12,20,344,0,0),(12,20,345,0,0),(12,20,346,0,0),(12,20,347,0,0),(12,20,348,0,0),(12,20,349,0,0),(12,21,350,0,0),(12,21,351,0,0),(12,21,352,0,0),(12,21,353,0,0),(12,21,354,0,0),(12,21,355,0,0),(12,21,356,0,0),(12,21,357,0,0),(12,21,358,0,0),(12,21,359,0,0),(12,21,360,0,0),(12,21,361,0,0),(12,21,362,0,0),(12,21,363,0,0),(12,21,364,0,0),(12,21,365,0,0),(12,21,366,0,0),(12,21,367,0,0),(12,21,368,0,0),(12,21,369,0,1),(12,21,370,0,1),(12,21,371,0,0),(12,21,372,0,0),(12,21,373,0,0),(12,21,374,0,0),(12,21,375,0,0),(12,21,376,0,0),(12,21,377,0,0),(12,21,378,0,0),(12,21,379,0,0),(12,21,380,0,0),(12,21,381,0,0),(12,21,382,0,0),(12,21,383,0,0),(12,21,384,0,0),(12,21,385,0,0),(12,21,386,0,0),(12,21,387,0,0),(12,22,388,0,0),(12,22,389,0,0),(12,22,390,0,0),(12,22,391,0,0),(12,22,392,0,0),(12,22,393,0,0),(12,22,394,0,0),(12,22,395,0,0),(12,22,396,0,0),(12,22,397,0,0),(12,22,398,0,0),(12,22,399,0,0),(12,22,400,0,0),(12,22,401,0,0),(12,22,402,0,0),(12,22,403,0,0),(12,22,404,0,0),(12,22,405,0,0),(12,22,406,0,0),(12,22,407,0,0),(12,22,408,0,0),(12,22,409,0,0),(12,22,410,0,1),(12,22,411,0,1),(12,22,412,0,0),(12,22,413,0,0),(12,22,414,0,0),(12,22,415,0,0),(12,22,416,0,0),(12,22,417,0,0),(12,22,418,0,0),(12,22,419,0,0),(12,22,420,0,0),(12,22,421,0,0),(12,22,422,0,0),(12,22,423,0,0),(12,22,424,0,0),(12,22,425,0,0),(12,22,426,0,0),(12,22,427,0,0),(12,22,428,0,0),(12,22,429,0,0),(12,22,430,0,0),(12,22,431,0,0),(12,22,432,0,0),(12,22,433,0,0),(12,22,434,0,0),(12,23,435,0,0),(12,23,436,0,0),(12,23,437,0,0),(12,23,438,0,0),(12,23,439,0,0),(12,23,440,0,0),(12,23,441,0,0),(12,23,442,0,0),(12,23,443,0,0),(12,23,444,0,0),(12,23,445,0,0),(12,23,446,0,0),(12,23,447,0,0),(12,23,448,0,0),(12,23,449,0,0),(12,23,450,0,0),(12,23,451,0,0),(12,23,452,0,0),(12,23,453,0,0),(12,23,454,0,1),(12,23,455,0,1),(12,23,456,0,0),(12,23,457,0,0),(12,23,458,0,0),(12,23,459,0,0),(12,23,460,0,0),(12,23,461,0,0),(12,23,462,0,0),(12,23,463,0,0),(12,23,464,0,0),(12,23,465,0,0),(12,23,466,0,0),(12,23,467,0,0),(12,23,468,0,0),(12,23,469,0,0),(12,23,470,0,0),(12,23,471,0,0),(12,23,472,0,0),(12,23,473,0,0),(12,29,474,0,0),(12,29,478,0,0),(12,29,479,0,0),(12,29,481,0,0),(12,29,488,0,0),(12,29,489,0,0),(12,29,490,0,0),(12,29,491,0,0),(12,29,493,0,0),(12,29,494,0,0),(12,29,495,0,0),(12,29,496,0,0),(12,29,497,0,0),(12,29,502,0,0),(12,29,503,0,0),(12,29,504,0,0),(12,29,505,0,0),(12,10,518,0,0),(12,10,519,0,0),(12,10,520,0,0),(12,10,521,0,0),(12,10,522,0,0),(12,10,523,0,0),(12,33,524,0,0),(12,33,525,0,0),(12,33,526,0,0),(12,33,527,0,0),(12,33,528,0,0),(12,33,529,0,0),(12,33,530,0,0),(12,33,531,0,0),(12,33,532,0,0),(12,33,533,0,0),(12,33,534,0,0),(12,33,535,0,0),(12,33,536,0,0),(12,33,537,0,0),(12,33,538,0,1),(12,33,539,0,1),(12,29,540,0,0),(12,34,541,0,0),(12,34,542,0,0),(12,34,543,0,0),(12,34,544,0,0),(12,34,545,0,0),(12,34,546,0,0),(12,34,547,0,0),(12,34,548,0,0),(12,34,549,0,1),(12,34,550,0,1),(12,34,551,0,0),(12,34,552,0,0),(12,34,553,0,0),(12,34,554,0,0),(12,34,555,0,0),(12,34,556,0,0),(12,34,557,0,0),(12,34,558,0,0),(12,34,559,0,0),(12,36,560,0,0),(12,36,561,0,1),(12,36,562,0,1),(12,36,563,0,0),(12,36,564,0,1),(12,36,565,0,0),(12,36,566,0,0),(12,36,567,0,0),(12,36,568,0,0),(12,36,569,0,0),(12,36,570,0,0),(12,36,571,0,1),(12,36,572,0,1),(12,36,573,0,0),(12,36,574,0,0),(12,36,575,0,0),(12,36,576,0,1),(12,36,577,0,0),(12,36,578,0,0),(12,40,579,0,0),(12,40,580,0,0),(12,40,581,0,0),(12,40,582,0,0),(12,40,583,0,0),(12,40,584,0,0),(12,40,585,0,1),(12,40,586,0,1),(12,40,587,0,0),(12,40,588,0,0),(12,41,589,0,0),(12,41,590,0,0),(12,41,591,0,0),(12,41,592,0,0),(12,41,593,0,0),(12,41,594,0,0),(12,41,595,0,0),(12,41,596,0,0),(12,41,597,0,0),(12,41,598,0,0),(12,41,599,0,0),(12,41,600,0,1),(12,41,601,0,1),(12,41,602,0,0),(12,41,603,0,0),(12,42,604,0,0),(12,42,605,0,0),(12,42,606,0,0),(12,42,607,0,0),(12,42,608,0,0),(12,42,609,0,0),(12,42,610,0,0),(12,42,611,0,0),(12,42,612,0,0),(12,42,613,0,0),(12,42,614,0,0),(12,42,615,0,0),(12,42,616,0,0),(12,42,617,0,1),(12,42,618,0,1),(12,42,619,0,0),(12,42,620,0,0),(12,43,621,0,0),(12,43,622,0,0),(12,43,623,0,0),(12,43,624,0,0),(12,43,625,0,0),(12,43,626,0,0),(12,43,627,0,0),(12,43,628,0,0),(12,43,629,0,0),(12,43,630,0,0),(12,43,631,0,0),(12,43,632,0,0),(12,43,633,0,0),(12,43,634,0,0),(12,43,635,0,1),(12,43,636,0,1),(12,43,637,0,0),(12,43,638,0,0),(12,45,639,0,0),(12,45,640,0,0),(12,45,641,0,1),(12,45,642,0,1),(12,45,643,0,0),(12,45,644,0,1),(12,45,645,0,0),(12,47,646,0,0),(12,47,647,0,1),(12,47,648,0,1),(12,47,649,0,0),(12,47,650,0,0),(12,2,651,0,0),(12,23,653,0,1),(12,23,654,0,1),(12,23,655,0,1),(12,23,656,0,1),(12,23,657,0,1),(12,23,658,0,1),(12,23,659,0,1),(12,23,660,0,1),(12,23,661,0,1),(12,22,662,0,1),(12,22,663,0,1),(12,22,664,0,1),(12,22,665,0,1),(12,22,666,0,1),(12,22,667,0,1),(12,22,668,0,1),(12,22,669,0,1),(12,22,670,0,1),(12,21,671,0,1),(12,21,672,0,1),(12,21,673,0,1),(12,21,674,0,1),(12,21,675,0,1),(12,21,676,0,1),(12,21,677,0,1),(12,21,678,0,1),(12,21,679,0,1),(12,20,680,0,1),(12,20,681,0,1),(12,20,682,0,1),(12,20,683,0,1),(12,20,684,0,1),(12,20,685,0,1),(12,20,686,0,1),(12,20,687,0,1),(12,20,688,0,1),(12,41,690,0,0),(12,45,691,0,0),(12,23,695,0,0),(12,22,696,0,0),(12,21,697,0,0),(12,20,698,0,0),(12,6,700,0,1),(12,4,701,0,1),(12,2,702,0,1),(12,23,704,0,0),(12,23,705,0,0),(12,21,706,0,0),(12,21,707,0,0),(12,18,708,0,0),(12,7,709,0,0),(12,45,710,0,0),(12,45,711,0,0),(12,23,712,0,1),(12,20,713,0,1),(12,21,714,0,1),(12,22,715,0,1),(12,2,717,0,0),(12,13,718,0,0),(12,13,720,0,0),(12,9,729,0,1),(12,29,750,0,0);
/*!40000 ALTER TABLE `vtiger_profile2field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_profile2globalpermissions`
--

DROP TABLE IF EXISTS `vtiger_profile2globalpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_profile2globalpermissions` (
  `profileid` int(19) NOT NULL,
  `globalactionid` int(19) NOT NULL,
  `globalactionpermission` int(19) DEFAULT NULL,
  PRIMARY KEY (`profileid`,`globalactionid`),
  KEY `idx_profile2globalpermissions` (`profileid`,`globalactionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_profile2globalpermissions`
--

LOCK TABLES `vtiger_profile2globalpermissions` WRITE;
/*!40000 ALTER TABLE `vtiger_profile2globalpermissions` DISABLE KEYS */;
INSERT INTO `vtiger_profile2globalpermissions` VALUES (1,1,0),(1,2,0),(2,1,1),(2,2,1),(3,1,1),(3,2,1),(4,1,1),(4,2,1),(5,1,1),(5,2,1),(6,1,1),(6,2,1),(7,1,1),(7,2,1),(8,1,1),(8,2,1),(9,1,1),(9,2,1),(10,1,1),(10,2,1),(11,1,1),(11,2,1),(12,1,1),(12,2,1);
/*!40000 ALTER TABLE `vtiger_profile2globalpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_profile2standardpermissions`
--

DROP TABLE IF EXISTS `vtiger_profile2standardpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_profile2standardpermissions` (
  `profileid` int(11) NOT NULL,
  `tabid` int(10) NOT NULL,
  `operation` int(10) NOT NULL,
  `permissions` int(1) DEFAULT NULL,
  PRIMARY KEY (`profileid`,`tabid`,`operation`),
  KEY `profile2standardpermissions_profileid_tabid_operation_idx` (`profileid`,`tabid`,`operation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_profile2standardpermissions`
--

LOCK TABLES `vtiger_profile2standardpermissions` WRITE;
/*!40000 ALTER TABLE `vtiger_profile2standardpermissions` DISABLE KEYS */;
INSERT INTO `vtiger_profile2standardpermissions` VALUES (1,2,0,0),(1,2,1,0),(1,2,2,0),(1,2,3,0),(1,2,4,0),(1,4,0,0),(1,4,1,0),(1,4,2,0),(1,4,3,0),(1,4,4,0),(1,6,0,0),(1,6,1,0),(1,6,2,0),(1,6,3,0),(1,6,4,0),(1,7,0,0),(1,7,1,0),(1,7,2,0),(1,7,3,0),(1,7,4,0),(1,8,0,0),(1,8,1,0),(1,8,2,0),(1,8,3,0),(1,8,4,0),(1,9,0,0),(1,9,1,0),(1,9,2,0),(1,9,3,0),(1,9,4,0),(1,13,0,0),(1,13,1,0),(1,13,2,0),(1,13,3,0),(1,13,4,0),(1,14,0,0),(1,14,1,0),(1,14,2,0),(1,14,3,0),(1,14,4,0),(1,15,0,0),(1,15,1,0),(1,15,2,0),(1,15,3,0),(1,15,4,0),(1,16,0,0),(1,16,1,0),(1,16,2,0),(1,16,3,0),(1,16,4,0),(1,18,0,0),(1,18,1,0),(1,18,2,0),(1,18,3,0),(1,18,4,0),(1,19,0,0),(1,19,1,0),(1,19,2,0),(1,19,3,0),(1,19,4,0),(1,20,0,0),(1,20,1,0),(1,20,2,0),(1,20,3,0),(1,20,4,0),(1,21,0,0),(1,21,1,0),(1,21,2,0),(1,21,3,0),(1,21,4,0),(1,22,0,0),(1,22,1,0),(1,22,2,0),(1,22,3,0),(1,22,4,0),(1,23,0,0),(1,23,1,0),(1,23,2,0),(1,23,3,0),(1,23,4,0),(1,26,0,0),(1,26,1,0),(1,26,2,0),(1,26,3,0),(1,26,4,0),(1,33,0,0),(1,33,1,0),(1,33,2,0),(1,33,3,0),(1,33,4,0),(1,34,0,0),(1,34,1,0),(1,34,2,0),(1,34,3,0),(1,34,4,0),(1,36,0,0),(1,36,1,0),(1,36,2,0),(1,36,3,0),(1,36,4,0),(1,40,0,0),(1,40,1,0),(1,40,2,0),(1,40,3,0),(1,40,4,0),(1,41,0,0),(1,41,1,0),(1,41,2,0),(1,41,3,0),(1,41,4,0),(1,42,0,0),(1,42,1,0),(1,42,2,0),(1,42,3,0),(1,42,4,0),(1,43,0,0),(1,43,1,0),(1,43,2,0),(1,43,3,0),(1,43,4,0),(1,45,0,0),(1,45,1,0),(1,45,2,0),(1,45,3,0),(1,45,4,0),(1,47,0,0),(1,47,1,0),(1,47,2,0),(1,47,3,0),(1,47,4,0),(2,2,0,0),(2,2,1,0),(2,2,2,0),(2,2,3,0),(2,2,4,0),(2,4,0,0),(2,4,1,0),(2,4,2,0),(2,4,3,0),(2,4,4,0),(2,6,0,0),(2,6,1,0),(2,6,2,0),(2,6,3,0),(2,6,4,0),(2,7,0,0),(2,7,1,0),(2,7,2,0),(2,7,3,0),(2,7,4,0),(2,8,0,0),(2,8,1,0),(2,8,2,0),(2,8,3,0),(2,8,4,0),(2,9,0,0),(2,9,1,0),(2,9,2,0),(2,9,3,0),(2,9,4,0),(2,13,0,1),(2,13,1,1),(2,13,2,1),(2,13,3,0),(2,13,4,0),(2,14,0,0),(2,14,1,0),(2,14,2,0),(2,14,3,0),(2,14,4,0),(2,15,0,0),(2,15,1,0),(2,15,2,0),(2,15,3,0),(2,15,4,0),(2,16,0,0),(2,16,1,0),(2,16,2,0),(2,16,3,0),(2,16,4,0),(2,18,0,0),(2,18,1,0),(2,18,2,0),(2,18,3,0),(2,18,4,0),(2,19,0,0),(2,19,1,0),(2,19,2,0),(2,19,3,0),(2,19,4,0),(2,20,0,0),(2,20,1,0),(2,20,2,0),(2,20,3,0),(2,20,4,0),(2,21,0,0),(2,21,1,0),(2,21,2,0),(2,21,3,0),(2,21,4,0),(2,22,0,0),(2,22,1,0),(2,22,2,0),(2,22,3,0),(2,22,4,0),(2,23,0,0),(2,23,1,0),(2,23,2,0),(2,23,3,0),(2,23,4,0),(2,25,0,1),(2,25,1,1),(2,25,2,1),(2,25,4,1),(2,26,0,0),(2,26,1,0),(2,26,2,0),(2,26,3,0),(2,26,4,0),(2,33,0,0),(2,33,1,0),(2,33,2,0),(2,33,3,0),(2,33,4,0),(2,34,0,0),(2,34,1,0),(2,34,2,0),(2,34,3,0),(2,34,4,0),(2,36,0,0),(2,36,1,0),(2,36,2,0),(2,36,3,0),(2,36,4,0),(2,40,0,0),(2,40,1,0),(2,40,2,0),(2,40,3,0),(2,40,4,0),(2,41,0,0),(2,41,1,0),(2,41,2,0),(2,41,3,0),(2,41,4,0),(2,42,0,0),(2,42,1,0),(2,42,2,0),(2,42,3,0),(2,42,4,0),(2,43,0,0),(2,43,1,0),(2,43,2,0),(2,43,3,0),(2,43,4,0),(2,45,0,0),(2,45,1,0),(2,45,2,0),(2,45,3,0),(2,45,4,0),(2,47,0,0),(2,47,1,0),(2,47,2,0),(2,47,3,0),(2,47,4,0),(3,2,0,1),(3,2,1,1),(3,2,2,1),(3,2,3,0),(3,2,4,0),(3,4,0,0),(3,4,1,0),(3,4,2,0),(3,4,3,0),(3,4,4,0),(3,6,0,0),(3,6,1,0),(3,6,2,0),(3,6,3,0),(3,6,4,0),(3,7,0,0),(3,7,1,0),(3,7,2,0),(3,7,3,0),(3,7,4,0),(3,8,0,0),(3,8,1,0),(3,8,2,0),(3,8,3,0),(3,8,4,0),(3,9,0,0),(3,9,1,0),(3,9,2,0),(3,9,3,0),(3,9,4,0),(3,13,0,0),(3,13,1,0),(3,13,2,0),(3,13,3,0),(3,13,4,0),(3,14,0,0),(3,14,1,0),(3,14,2,0),(3,14,3,0),(3,14,4,0),(3,15,0,0),(3,15,1,0),(3,15,2,0),(3,15,3,0),(3,15,4,0),(3,16,0,0),(3,16,1,0),(3,16,2,0),(3,16,3,0),(3,16,4,0),(3,18,0,0),(3,18,1,0),(3,18,2,0),(3,18,3,0),(3,18,4,0),(3,19,0,0),(3,19,1,0),(3,19,2,0),(3,19,3,0),(3,19,4,0),(3,20,0,0),(3,20,1,0),(3,20,2,0),(3,20,3,0),(3,20,4,0),(3,21,0,0),(3,21,1,0),(3,21,2,0),(3,21,3,0),(3,21,4,0),(3,22,0,0),(3,22,1,0),(3,22,2,0),(3,22,3,0),(3,22,4,0),(3,23,0,0),(3,23,1,0),(3,23,2,0),(3,23,3,0),(3,23,4,0),(3,26,0,0),(3,26,1,0),(3,26,2,0),(3,26,3,0),(3,26,4,0),(3,33,0,0),(3,33,1,0),(3,33,2,0),(3,33,3,0),(3,33,4,0),(3,34,0,0),(3,34,1,0),(3,34,2,0),(3,34,3,0),(3,34,4,0),(3,36,0,0),(3,36,1,0),(3,36,2,0),(3,36,3,0),(3,36,4,0),(3,40,0,0),(3,40,1,0),(3,40,2,0),(3,40,3,0),(3,40,4,0),(3,41,0,0),(3,41,1,0),(3,41,2,0),(3,41,3,0),(3,41,4,0),(3,42,0,0),(3,42,1,0),(3,42,2,0),(3,42,3,0),(3,42,4,0),(3,43,0,0),(3,43,1,0),(3,43,2,0),(3,43,3,0),(3,43,4,0),(3,45,0,0),(3,45,1,0),(3,45,2,0),(3,45,3,0),(3,45,4,0),(3,47,0,0),(3,47,1,0),(3,47,2,0),(3,47,3,0),(3,47,4,0),(4,2,0,1),(4,2,1,1),(4,2,2,1),(4,2,3,0),(4,2,4,0),(4,4,0,1),(4,4,1,1),(4,4,2,1),(4,4,3,0),(4,4,4,0),(4,6,0,1),(4,6,1,1),(4,6,2,1),(4,6,3,0),(4,6,4,0),(4,7,0,1),(4,7,1,1),(4,7,2,1),(4,7,3,0),(4,7,4,0),(4,8,0,1),(4,8,1,1),(4,8,2,1),(4,8,3,0),(4,8,4,0),(4,9,0,1),(4,9,1,1),(4,9,2,1),(4,9,3,0),(4,9,4,0),(4,13,0,1),(4,13,1,1),(4,13,2,1),(4,13,3,0),(4,13,4,0),(4,14,0,1),(4,14,1,1),(4,14,2,1),(4,14,3,0),(4,14,4,0),(4,15,0,1),(4,15,1,1),(4,15,2,1),(4,15,3,0),(4,15,4,0),(4,16,0,1),(4,16,1,1),(4,16,2,1),(4,16,3,0),(4,16,4,0),(4,18,0,1),(4,18,1,1),(4,18,2,1),(4,18,3,0),(4,18,4,0),(4,19,0,1),(4,19,1,1),(4,19,2,1),(4,19,3,0),(4,19,4,0),(4,20,0,1),(4,20,1,1),(4,20,2,1),(4,20,3,0),(4,20,4,0),(4,21,0,1),(4,21,1,1),(4,21,2,1),(4,21,3,0),(4,21,4,0),(4,22,0,1),(4,22,1,1),(4,22,2,1),(4,22,3,0),(4,22,4,0),(4,23,0,1),(4,23,1,1),(4,23,2,1),(4,23,3,0),(4,23,4,0),(4,26,0,1),(4,26,1,1),(4,26,2,1),(4,26,3,0),(4,26,4,0),(4,33,0,0),(4,33,1,0),(4,33,2,0),(4,33,3,0),(4,33,4,0),(4,34,0,0),(4,34,1,0),(4,34,2,0),(4,34,3,0),(4,34,4,0),(4,36,0,0),(4,36,1,0),(4,36,2,0),(4,36,3,0),(4,36,4,0),(4,40,0,0),(4,40,1,0),(4,40,2,0),(4,40,3,0),(4,40,4,0),(4,41,0,0),(4,41,1,0),(4,41,2,0),(4,41,3,0),(4,41,4,0),(4,42,0,0),(4,42,1,0),(4,42,2,0),(4,42,3,0),(4,42,4,0),(4,43,0,0),(4,43,1,0),(4,43,2,0),(4,43,3,0),(4,43,4,0),(4,45,0,0),(4,45,1,0),(4,45,2,0),(4,45,3,0),(4,45,4,0),(4,47,0,0),(4,47,1,0),(4,47,2,0),(4,47,3,0),(4,47,4,0),(5,2,0,1),(5,2,1,1),(5,2,2,1),(5,2,4,0),(5,4,0,0),(5,4,1,0),(5,4,2,0),(5,4,4,0),(5,6,0,0),(5,6,1,0),(5,6,2,0),(5,6,4,0),(5,7,0,0),(5,7,1,0),(5,7,2,0),(5,7,4,0),(5,8,0,0),(5,8,1,0),(5,8,2,0),(5,8,4,0),(5,9,0,0),(5,9,1,0),(5,9,2,0),(5,9,4,0),(5,13,0,0),(5,13,1,0),(5,13,2,0),(5,13,4,0),(5,14,0,0),(5,14,1,0),(5,14,2,0),(5,14,4,0),(5,15,0,0),(5,15,1,0),(5,15,2,0),(5,15,4,0),(5,16,0,0),(5,16,1,0),(5,16,2,0),(5,16,4,0),(5,18,0,0),(5,18,1,0),(5,18,2,0),(5,18,4,0),(5,19,0,0),(5,19,1,0),(5,19,2,0),(5,19,4,0),(5,20,0,0),(5,20,1,0),(5,20,2,0),(5,20,4,0),(5,21,0,0),(5,21,1,0),(5,21,2,0),(5,21,4,0),(5,22,0,0),(5,22,1,0),(5,22,2,0),(5,22,4,0),(5,23,0,0),(5,23,1,0),(5,23,2,0),(5,23,4,0),(5,25,0,1),(5,25,1,1),(5,25,2,1),(5,25,4,1),(5,26,0,0),(5,26,1,0),(5,26,2,0),(5,26,4,0),(5,33,0,0),(5,33,1,0),(5,33,2,0),(5,33,4,0),(5,34,0,0),(5,34,1,0),(5,34,2,0),(5,34,4,0),(5,36,0,0),(5,36,1,0),(5,36,2,0),(5,36,4,0),(5,40,0,0),(5,40,1,0),(5,40,2,0),(5,40,4,0),(5,41,0,0),(5,41,1,0),(5,41,2,0),(5,41,4,0),(5,42,0,0),(5,42,1,0),(5,42,2,0),(5,42,4,0),(5,43,0,0),(5,43,1,0),(5,43,2,0),(5,43,4,0),(5,45,0,0),(5,45,1,0),(5,45,2,0),(5,45,4,0),(5,47,0,0),(5,47,1,0),(5,47,2,0),(5,47,4,0),(6,2,0,1),(6,2,1,1),(6,2,2,1),(6,2,4,0),(6,4,0,0),(6,4,1,0),(6,4,2,0),(6,4,4,0),(6,6,0,0),(6,6,1,0),(6,6,2,0),(6,6,4,0),(6,7,0,0),(6,7,1,0),(6,7,2,0),(6,7,4,0),(6,8,0,0),(6,8,1,0),(6,8,2,0),(6,8,4,0),(6,9,0,0),(6,9,1,0),(6,9,2,0),(6,9,4,0),(6,13,0,0),(6,13,1,0),(6,13,2,0),(6,13,4,0),(6,14,0,0),(6,14,1,0),(6,14,2,0),(6,14,4,0),(6,15,0,0),(6,15,1,0),(6,15,2,0),(6,15,4,0),(6,16,0,0),(6,16,1,0),(6,16,2,0),(6,16,4,0),(6,18,0,0),(6,18,1,0),(6,18,2,0),(6,18,4,0),(6,19,0,0),(6,19,1,0),(6,19,2,0),(6,19,4,0),(6,20,0,0),(6,20,1,0),(6,20,2,0),(6,20,4,0),(6,21,0,0),(6,21,1,0),(6,21,2,0),(6,21,4,0),(6,22,0,0),(6,22,1,0),(6,22,2,0),(6,22,4,0),(6,23,0,0),(6,23,1,0),(6,23,2,0),(6,23,4,0),(6,25,0,1),(6,25,1,1),(6,25,2,1),(6,25,4,1),(6,26,0,0),(6,26,1,0),(6,26,2,0),(6,26,4,0),(6,33,0,0),(6,33,1,0),(6,33,2,0),(6,33,4,0),(6,34,0,0),(6,34,1,0),(6,34,2,0),(6,34,4,0),(6,36,0,0),(6,36,1,0),(6,36,2,0),(6,36,4,0),(6,40,0,0),(6,40,1,0),(6,40,2,0),(6,40,4,0),(6,41,0,0),(6,41,1,0),(6,41,2,0),(6,41,4,0),(6,42,0,0),(6,42,1,0),(6,42,2,0),(6,42,4,0),(6,43,0,0),(6,43,1,0),(6,43,2,0),(6,43,4,0),(6,45,0,0),(6,45,1,0),(6,45,2,0),(6,45,4,0),(6,47,0,0),(6,47,1,0),(6,47,2,0),(6,47,4,0),(7,2,0,0),(7,2,1,0),(7,2,2,0),(7,2,4,0),(7,4,0,0),(7,4,1,0),(7,4,2,0),(7,4,4,0),(7,6,0,0),(7,6,1,0),(7,6,2,0),(7,6,4,0),(7,7,0,0),(7,7,1,0),(7,7,2,0),(7,7,4,0),(7,8,0,0),(7,8,1,0),(7,8,2,0),(7,8,4,0),(7,9,0,0),(7,9,1,0),(7,9,2,0),(7,9,4,0),(7,13,0,1),(7,13,1,1),(7,13,2,1),(7,13,4,0),(7,14,0,0),(7,14,1,0),(7,14,2,0),(7,14,4,0),(7,15,0,0),(7,15,1,0),(7,15,2,0),(7,15,4,0),(7,16,0,0),(7,16,1,0),(7,16,2,0),(7,16,4,0),(7,18,0,1),(7,18,1,1),(7,18,2,1),(7,18,4,1),(7,19,0,0),(7,19,1,0),(7,19,2,0),(7,19,4,0),(7,20,0,0),(7,20,1,0),(7,20,2,0),(7,20,4,0),(7,21,0,1),(7,21,1,1),(7,21,2,1),(7,21,4,1),(7,22,0,0),(7,22,1,0),(7,22,2,0),(7,22,4,0),(7,23,0,0),(7,23,1,0),(7,23,2,0),(7,23,4,0),(7,25,0,1),(7,25,1,1),(7,25,2,1),(7,25,4,1),(7,33,0,1),(7,33,1,1),(7,33,2,1),(7,33,4,1),(7,34,0,0),(7,34,1,0),(7,34,2,0),(7,34,4,0),(7,36,0,0),(7,36,1,0),(7,36,2,0),(7,36,4,0),(7,40,0,0),(7,40,1,0),(7,40,2,0),(7,40,4,0),(7,41,0,0),(7,41,1,0),(7,41,2,0),(7,41,4,0),(7,42,0,0),(7,42,1,0),(7,42,2,0),(7,42,4,0),(7,43,0,0),(7,43,1,0),(7,43,2,0),(7,43,4,0),(7,45,0,0),(7,45,1,0),(7,45,2,0),(7,45,4,0),(7,47,0,0),(7,47,1,0),(7,47,2,0),(7,47,4,0),(8,2,0,1),(8,2,1,1),(8,2,2,1),(8,2,4,1),(8,4,0,0),(8,4,1,0),(8,4,2,0),(8,4,4,0),(8,6,0,0),(8,6,1,0),(8,6,2,0),(8,6,4,0),(8,7,0,1),(8,7,1,1),(8,7,2,1),(8,7,4,1),(8,8,0,0),(8,8,1,0),(8,8,2,0),(8,8,4,0),(8,9,0,0),(8,9,1,0),(8,9,2,0),(8,9,4,0),(8,13,0,0),(8,13,1,0),(8,13,2,0),(8,13,4,0),(8,14,0,0),(8,14,1,0),(8,14,2,0),(8,14,4,0),(8,15,0,0),(8,15,1,0),(8,15,2,0),(8,15,4,0),(8,16,0,0),(8,16,1,0),(8,16,2,0),(8,16,4,0),(8,18,0,0),(8,18,1,0),(8,18,2,0),(8,18,4,0),(8,19,0,1),(8,19,1,1),(8,19,2,1),(8,19,4,1),(8,20,0,1),(8,20,1,1),(8,20,2,1),(8,20,4,1),(8,21,0,1),(8,21,1,1),(8,21,2,1),(8,21,4,1),(8,22,0,1),(8,22,1,1),(8,22,2,1),(8,22,4,1),(8,23,0,1),(8,23,1,1),(8,23,2,1),(8,23,4,1),(8,25,0,1),(8,25,1,1),(8,25,2,1),(8,25,4,1),(8,33,0,1),(8,33,1,1),(8,33,2,1),(8,33,4,1),(8,34,0,1),(8,34,1,1),(8,34,2,1),(8,34,4,1),(8,36,0,0),(8,36,1,0),(8,36,2,0),(8,36,4,0),(8,40,0,0),(8,40,1,0),(8,40,2,0),(8,40,4,0),(8,41,0,0),(8,41,1,0),(8,41,2,0),(8,41,4,0),(8,42,0,0),(8,42,1,0),(8,42,2,0),(8,42,4,0),(8,43,0,0),(8,43,1,0),(8,43,2,0),(8,43,4,0),(8,45,0,0),(8,45,1,0),(8,45,2,0),(8,45,4,0),(8,47,0,0),(8,47,1,0),(8,47,2,0),(8,47,4,0),(9,2,0,0),(9,2,1,0),(9,2,2,0),(9,2,4,0),(9,4,0,0),(9,4,1,0),(9,4,2,0),(9,4,4,0),(9,6,0,0),(9,6,1,0),(9,6,2,0),(9,6,4,0),(9,7,0,0),(9,7,1,0),(9,7,2,0),(9,7,4,0),(9,8,0,0),(9,8,1,0),(9,8,2,0),(9,8,4,0),(9,9,0,0),(9,9,1,0),(9,9,2,0),(9,9,4,0),(9,13,0,0),(9,13,1,0),(9,13,2,0),(9,13,4,0),(9,14,0,0),(9,14,1,0),(9,14,2,0),(9,14,4,0),(9,15,0,0),(9,15,1,0),(9,15,2,0),(9,15,4,0),(9,16,0,0),(9,16,1,0),(9,16,2,0),(9,16,4,0),(9,18,0,0),(9,18,1,0),(9,18,2,0),(9,18,4,0),(9,19,0,0),(9,19,1,0),(9,19,2,0),(9,19,4,0),(9,20,0,0),(9,20,1,0),(9,20,2,0),(9,20,4,0),(9,21,0,0),(9,21,1,0),(9,21,2,0),(9,21,4,0),(9,22,0,0),(9,22,1,0),(9,22,2,0),(9,22,4,0),(9,23,0,0),(9,23,1,0),(9,23,2,0),(9,23,4,0),(9,25,0,1),(9,25,1,1),(9,25,2,1),(9,25,4,1),(9,26,0,0),(9,26,1,0),(9,26,2,0),(9,26,4,0),(9,33,0,0),(9,33,1,0),(9,33,2,0),(9,33,4,0),(9,34,0,0),(9,34,1,0),(9,34,2,0),(9,34,4,0),(9,36,0,0),(9,36,1,0),(9,36,2,0),(9,36,4,0),(9,40,0,0),(9,40,1,0),(9,40,2,0),(9,40,4,0),(9,41,0,0),(9,41,1,0),(9,41,2,0),(9,41,4,0),(9,42,0,0),(9,42,1,0),(9,42,2,0),(9,42,4,0),(9,43,0,0),(9,43,1,0),(9,43,2,0),(9,43,4,0),(9,45,0,0),(9,45,1,0),(9,45,2,0),(9,45,4,0),(9,47,0,0),(9,47,1,0),(9,47,2,0),(9,47,4,0),(10,2,0,0),(10,2,1,0),(10,2,2,0),(10,2,4,0),(10,4,0,0),(10,4,1,0),(10,4,2,0),(10,4,4,0),(10,6,0,0),(10,6,1,0),(10,6,2,0),(10,6,4,0),(10,7,0,0),(10,7,1,0),(10,7,2,0),(10,7,4,0),(10,8,0,0),(10,8,1,0),(10,8,2,0),(10,8,4,0),(10,9,0,0),(10,9,1,0),(10,9,2,0),(10,9,4,0),(10,13,0,0),(10,13,1,0),(10,13,2,0),(10,13,4,0),(10,14,0,0),(10,14,1,0),(10,14,2,0),(10,14,4,0),(10,15,0,0),(10,15,1,0),(10,15,2,0),(10,15,4,0),(10,16,0,0),(10,16,1,0),(10,16,2,0),(10,16,4,0),(10,18,0,0),(10,18,1,0),(10,18,2,0),(10,18,4,0),(10,19,0,0),(10,19,1,0),(10,19,2,0),(10,19,4,0),(10,20,0,0),(10,20,1,0),(10,20,2,0),(10,20,4,0),(10,21,0,0),(10,21,1,0),(10,21,2,0),(10,21,4,0),(10,22,0,0),(10,22,1,0),(10,22,2,0),(10,22,4,0),(10,23,0,0),(10,23,1,0),(10,23,2,0),(10,23,4,0),(10,25,0,1),(10,25,1,1),(10,25,2,1),(10,25,4,1),(10,26,0,0),(10,26,1,0),(10,26,2,0),(10,26,4,0),(10,33,0,0),(10,33,1,0),(10,33,2,0),(10,33,4,0),(10,34,0,0),(10,34,1,0),(10,34,2,0),(10,34,4,0),(10,36,0,0),(10,36,1,0),(10,36,2,0),(10,36,4,0),(10,40,0,0),(10,40,1,0),(10,40,2,0),(10,40,4,0),(10,41,0,0),(10,41,1,0),(10,41,2,0),(10,41,4,0),(10,42,0,0),(10,42,1,0),(10,42,2,0),(10,42,4,0),(10,43,0,0),(10,43,1,0),(10,43,2,0),(10,43,4,0),(10,45,0,0),(10,45,1,0),(10,45,2,0),(10,45,4,0),(10,47,0,0),(10,47,1,0),(10,47,2,0),(10,47,4,0),(11,2,0,0),(11,2,1,0),(11,2,2,0),(11,2,4,0),(11,4,0,0),(11,4,1,0),(11,4,2,0),(11,4,4,0),(11,6,0,0),(11,6,1,0),(11,6,2,0),(11,6,4,0),(11,7,0,0),(11,7,1,0),(11,7,2,0),(11,7,4,0),(11,8,0,0),(11,8,1,0),(11,8,2,0),(11,8,4,0),(11,9,0,0),(11,9,1,0),(11,9,2,0),(11,9,4,0),(11,13,0,0),(11,13,1,0),(11,13,2,0),(11,13,4,0),(11,14,0,0),(11,14,1,0),(11,14,2,0),(11,14,4,0),(11,15,0,0),(11,15,1,0),(11,15,2,0),(11,15,4,0),(11,16,0,0),(11,16,1,0),(11,16,2,0),(11,16,4,0),(11,18,0,0),(11,18,1,0),(11,18,2,0),(11,18,4,0),(11,19,0,0),(11,19,1,0),(11,19,2,0),(11,19,4,0),(11,20,0,0),(11,20,1,0),(11,20,2,0),(11,20,4,0),(11,21,0,0),(11,21,1,0),(11,21,2,0),(11,21,4,0),(11,22,0,0),(11,22,1,0),(11,22,2,0),(11,22,4,0),(11,23,0,0),(11,23,1,0),(11,23,2,0),(11,23,4,0),(11,25,0,1),(11,25,1,1),(11,25,2,1),(11,25,4,1),(11,26,0,0),(11,26,1,0),(11,26,2,0),(11,26,4,0),(11,33,0,0),(11,33,1,0),(11,33,2,0),(11,33,4,0),(11,34,0,0),(11,34,1,0),(11,34,2,0),(11,34,4,0),(11,36,0,0),(11,36,1,0),(11,36,2,0),(11,36,4,0),(11,40,0,0),(11,40,1,0),(11,40,2,0),(11,40,4,0),(11,41,0,0),(11,41,1,0),(11,41,2,0),(11,41,4,0),(11,42,0,0),(11,42,1,0),(11,42,2,0),(11,42,4,0),(11,43,0,0),(11,43,1,0),(11,43,2,0),(11,43,4,0),(11,45,0,0),(11,45,1,0),(11,45,2,0),(11,45,4,0),(11,47,0,0),(11,47,1,0),(11,47,2,0),(11,47,4,0),(12,2,0,0),(12,2,1,0),(12,2,2,0),(12,2,4,0),(12,4,0,0),(12,4,1,0),(12,4,2,0),(12,4,4,0),(12,6,0,0),(12,6,1,0),(12,6,2,0),(12,6,4,0),(12,7,0,0),(12,7,1,0),(12,7,2,0),(12,7,4,0),(12,8,0,0),(12,8,1,0),(12,8,2,0),(12,8,4,0),(12,9,0,0),(12,9,1,0),(12,9,2,0),(12,9,4,0),(12,13,0,0),(12,13,1,0),(12,13,2,0),(12,13,4,0),(12,14,0,0),(12,14,1,0),(12,14,2,0),(12,14,4,0),(12,15,0,0),(12,15,1,0),(12,15,2,0),(12,15,4,0),(12,16,0,0),(12,16,1,0),(12,16,2,0),(12,16,4,0),(12,18,0,0),(12,18,1,0),(12,18,2,0),(12,18,4,0),(12,19,0,0),(12,19,1,0),(12,19,2,0),(12,19,4,0),(12,20,0,0),(12,20,1,0),(12,20,2,0),(12,20,4,0),(12,21,0,0),(12,21,1,0),(12,21,2,0),(12,21,4,0),(12,22,0,0),(12,22,1,0),(12,22,2,0),(12,22,4,0),(12,23,0,0),(12,23,1,0),(12,23,2,0),(12,23,4,0),(12,25,0,1),(12,25,1,1),(12,25,2,1),(12,25,4,1),(12,26,0,0),(12,26,1,0),(12,26,2,0),(12,26,4,0),(12,33,0,0),(12,33,1,0),(12,33,2,0),(12,33,4,0),(12,34,0,0),(12,34,1,0),(12,34,2,0),(12,34,4,0),(12,36,0,0),(12,36,1,0),(12,36,2,0),(12,36,4,0),(12,40,0,0),(12,40,1,0),(12,40,2,0),(12,40,4,0),(12,41,0,0),(12,41,1,0),(12,41,2,0),(12,41,4,0),(12,42,0,0),(12,42,1,0),(12,42,2,0),(12,42,4,0),(12,43,0,0),(12,43,1,0),(12,43,2,0),(12,43,4,0),(12,45,0,0),(12,45,1,0),(12,45,2,0),(12,45,4,0),(12,47,0,0),(12,47,1,0),(12,47,2,0),(12,47,4,0);
/*!40000 ALTER TABLE `vtiger_profile2standardpermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_profile2tab`
--

DROP TABLE IF EXISTS `vtiger_profile2tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_profile2tab` (
  `profileid` int(11) DEFAULT NULL,
  `tabid` int(10) DEFAULT NULL,
  `permissions` int(10) NOT NULL DEFAULT '0',
  KEY `profile2tab_profileid_tabid_idx` (`profileid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_profile2tab`
--

LOCK TABLES `vtiger_profile2tab` WRITE;
/*!40000 ALTER TABLE `vtiger_profile2tab` DISABLE KEYS */;
INSERT INTO `vtiger_profile2tab` VALUES (1,1,0),(1,2,0),(1,3,0),(1,4,0),(1,6,0),(1,7,0),(1,8,0),(1,9,0),(1,10,0),(1,13,0),(1,14,0),(1,15,0),(1,16,0),(1,18,0),(1,19,0),(1,20,0),(1,21,0),(1,22,0),(1,23,0),(1,24,0),(1,25,0),(1,26,0),(1,27,0),(2,3,0),(3,1,0),(3,2,0),(3,3,0),(3,4,0),(3,6,0),(3,7,0),(3,8,0),(3,9,0),(3,10,0),(3,13,0),(3,14,0),(3,15,0),(3,16,0),(3,18,0),(3,19,0),(3,20,0),(3,21,0),(3,22,0),(3,23,0),(3,24,0),(3,25,0),(3,26,0),(3,27,0),(4,1,0),(4,2,0),(4,3,0),(4,4,0),(4,6,0),(4,7,0),(4,8,0),(4,9,0),(4,10,0),(4,13,0),(4,14,0),(4,15,0),(4,16,0),(4,18,0),(4,19,0),(4,20,0),(4,21,0),(4,22,0),(4,23,0),(4,24,0),(4,25,0),(4,26,0),(4,27,0),(1,30,0),(3,30,0),(4,30,0),(1,31,0),(2,31,0),(3,31,0),(4,31,0),(1,32,0),(2,32,0),(3,32,0),(4,32,0),(1,33,0),(3,33,0),(4,33,0),(1,34,0),(3,34,0),(4,34,0),(1,35,0),(2,35,0),(3,35,0),(4,35,0),(1,36,0),(3,36,0),(4,36,0),(1,37,0),(2,37,0),(3,37,0),(4,37,0),(1,38,0),(3,38,0),(4,38,0),(1,39,0),(2,39,0),(3,39,0),(4,39,0),(1,40,0),(3,40,0),(4,40,0),(1,41,0),(3,41,0),(4,41,0),(1,42,0),(3,42,0),(4,42,0),(1,43,0),(3,43,0),(4,43,0),(1,44,0),(3,44,0),(4,44,0),(1,45,0),(3,45,0),(4,45,0),(1,46,0),(3,46,0),(4,46,0),(1,47,0),(3,47,0),(4,47,0),(1,48,0),(3,48,0),(4,48,0),(1,49,0),(3,49,0),(4,49,0),(5,1,0),(5,2,0),(5,4,0),(5,6,0),(5,7,0),(5,8,0),(5,9,0),(5,10,0),(5,13,0),(5,14,0),(5,15,0),(5,18,0),(5,19,0),(5,20,0),(5,21,0),(5,22,0),(5,23,0),(5,24,0),(5,25,0),(5,26,0),(5,27,0),(5,30,0),(5,33,0),(5,34,0),(5,36,0),(5,38,0),(5,40,0),(5,41,0),(5,42,0),(5,43,0),(5,44,0),(5,45,0),(5,46,0),(5,47,0),(5,48,0),(5,49,0),(5,16,0),(6,1,0),(6,2,0),(6,4,0),(6,6,0),(6,7,0),(6,8,0),(6,9,0),(6,10,0),(6,13,0),(6,14,0),(6,15,0),(6,18,0),(6,19,0),(6,20,0),(6,21,0),(6,22,0),(6,23,0),(6,24,0),(6,25,0),(6,26,0),(6,27,0),(6,30,0),(6,33,0),(6,34,0),(6,36,0),(6,38,0),(6,40,0),(6,41,0),(6,42,0),(6,43,0),(6,44,0),(6,45,0),(6,46,0),(6,47,0),(6,48,0),(6,49,0),(6,16,0),(9,1,0),(9,2,0),(9,4,0),(9,6,0),(9,7,0),(9,8,0),(9,9,0),(9,10,0),(9,13,0),(9,14,0),(9,15,0),(9,18,0),(9,19,0),(9,20,0),(9,21,0),(9,22,0),(9,23,0),(9,24,0),(9,25,0),(9,26,0),(9,27,0),(9,30,0),(9,33,0),(9,34,0),(9,36,0),(9,38,0),(9,40,0),(9,41,0),(9,42,0),(9,43,0),(9,44,0),(9,45,0),(9,46,0),(9,47,0),(9,48,0),(9,49,0),(9,16,0),(10,1,0),(10,2,0),(10,4,0),(10,6,0),(10,7,0),(10,8,0),(10,9,0),(10,10,0),(10,13,0),(10,14,0),(10,15,0),(10,18,0),(10,19,0),(10,20,0),(10,21,0),(10,22,0),(10,23,0),(10,24,0),(10,25,0),(10,26,0),(10,27,0),(10,30,0),(10,33,0),(10,34,0),(10,36,0),(10,38,0),(10,40,0),(10,41,0),(10,42,0),(10,43,0),(10,44,0),(10,45,0),(10,46,0),(10,47,0),(10,48,0),(10,49,0),(10,16,0),(11,1,0),(11,2,0),(11,4,0),(11,6,0),(11,7,0),(11,8,0),(11,9,0),(11,10,0),(11,13,0),(11,14,0),(11,15,0),(11,18,0),(11,19,0),(11,20,0),(11,21,0),(11,22,0),(11,23,0),(11,24,0),(11,25,0),(11,26,0),(11,27,0),(11,30,0),(11,33,0),(11,34,0),(11,36,0),(11,38,0),(11,40,0),(11,41,0),(11,42,0),(11,43,0),(11,44,0),(11,45,0),(11,46,0),(11,47,0),(11,48,0),(11,49,0),(11,16,0),(12,1,0),(12,2,0),(12,4,0),(12,6,0),(12,7,0),(12,8,0),(12,9,0),(12,10,0),(12,13,0),(12,14,0),(12,15,0),(12,18,0),(12,19,0),(12,20,0),(12,21,0),(12,22,0),(12,23,0),(12,24,0),(12,25,0),(12,26,0),(12,27,0),(12,30,0),(12,33,0),(12,34,0),(12,36,0),(12,38,0),(12,40,0),(12,41,0),(12,42,0),(12,43,0),(12,44,0),(12,45,0),(12,46,0),(12,47,0),(12,48,0),(12,49,0),(12,16,0),(7,1,0),(7,2,0),(7,4,0),(7,6,0),(7,7,0),(7,8,0),(7,9,0),(7,10,0),(7,13,0),(7,14,0),(7,15,0),(7,18,1),(7,19,0),(7,20,0),(7,21,1),(7,22,0),(7,23,0),(7,24,0),(7,25,0),(7,26,1),(7,27,0),(7,30,0),(7,33,1),(7,34,0),(7,36,0),(7,38,0),(7,40,0),(7,41,0),(7,42,0),(7,43,0),(7,44,0),(7,45,0),(7,46,0),(7,47,0),(7,48,0),(7,49,1),(7,16,0),(8,1,1),(8,2,1),(8,4,0),(8,6,0),(8,7,1),(8,8,0),(8,9,0),(8,10,0),(8,13,0),(8,14,0),(8,15,0),(8,18,0),(8,19,1),(8,20,1),(8,21,1),(8,22,1),(8,23,1),(8,24,1),(8,25,0),(8,26,1),(8,27,1),(8,30,0),(8,33,1),(8,34,1),(8,36,0),(8,38,0),(8,40,0),(8,41,0),(8,42,0),(8,43,0),(8,44,0),(8,45,0),(8,46,0),(8,47,0),(8,48,0),(8,49,1),(8,16,0),(2,1,0),(2,2,0),(2,4,0),(2,6,0),(2,7,0),(2,8,0),(2,9,0),(2,10,0),(2,13,0),(2,14,0),(2,15,0),(2,18,0),(2,19,0),(2,20,0),(2,21,0),(2,22,0),(2,23,0),(2,24,0),(2,25,0),(2,26,0),(2,27,0),(2,30,0),(2,33,0),(2,34,0),(2,36,0),(2,38,0),(2,40,0),(2,41,0),(2,42,0),(2,43,0),(2,44,0),(2,45,0),(2,46,0),(2,47,0),(2,48,0),(2,49,0),(2,16,0);
/*!40000 ALTER TABLE `vtiger_profile2tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_profile2utility`
--

DROP TABLE IF EXISTS `vtiger_profile2utility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_profile2utility` (
  `profileid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `permission` int(1) DEFAULT NULL,
  PRIMARY KEY (`profileid`,`tabid`,`activityid`),
  KEY `profile2utility_profileid_tabid_activityid_idx` (`profileid`,`tabid`,`activityid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_profile2utility`
--

LOCK TABLES `vtiger_profile2utility` WRITE;
/*!40000 ALTER TABLE `vtiger_profile2utility` DISABLE KEYS */;
INSERT INTO `vtiger_profile2utility` VALUES (1,2,5,0),(1,2,6,0),(1,2,10,0),(1,4,5,0),(1,4,6,0),(1,4,8,0),(1,4,10,0),(1,6,5,0),(1,6,6,0),(1,6,8,0),(1,6,10,0),(1,7,5,0),(1,7,6,0),(1,7,8,0),(1,7,9,0),(1,7,10,0),(1,8,6,0),(1,9,5,0),(1,9,6,0),(1,13,5,0),(1,13,6,0),(1,13,8,0),(1,13,10,0),(1,14,5,0),(1,14,6,0),(1,14,10,0),(1,18,5,0),(1,18,6,0),(1,18,10,0),(1,19,5,0),(1,19,6,0),(1,19,10,0),(1,20,5,0),(1,20,6,0),(1,21,5,0),(1,21,6,0),(1,22,5,0),(1,22,6,0),(1,23,5,0),(1,23,6,0),(1,25,6,0),(1,25,13,0),(1,33,11,0),(1,33,12,0),(1,34,5,0),(1,34,6,0),(1,34,10,0),(1,36,5,0),(1,36,6,0),(1,36,10,0),(1,40,5,0),(1,40,6,0),(1,40,10,0),(1,41,5,0),(1,41,6,0),(1,41,10,0),(1,42,5,0),(1,42,6,0),(1,42,10,0),(2,2,5,1),(2,2,6,1),(2,2,10,0),(2,4,5,1),(2,4,6,1),(2,4,8,1),(2,4,10,0),(2,6,5,1),(2,6,6,1),(2,6,8,1),(2,6,10,0),(2,7,5,1),(2,7,6,1),(2,7,8,1),(2,7,9,0),(2,7,10,0),(2,8,6,1),(2,9,5,0),(2,9,6,0),(2,13,5,1),(2,13,6,1),(2,13,8,1),(2,13,10,0),(2,14,5,1),(2,14,6,1),(2,14,10,0),(2,18,5,1),(2,18,6,1),(2,18,10,0),(2,19,5,1),(2,19,6,1),(2,19,10,0),(2,20,5,0),(2,20,6,0),(2,21,5,0),(2,21,6,0),(2,22,5,0),(2,22,6,0),(2,23,5,0),(2,23,6,0),(2,25,6,0),(2,25,13,0),(2,33,11,0),(2,33,12,0),(2,34,5,0),(2,34,6,0),(2,34,10,0),(2,36,5,0),(2,36,6,0),(2,36,10,0),(2,40,5,0),(2,40,6,0),(2,40,10,0),(2,41,5,0),(2,41,6,0),(2,41,10,0),(2,42,5,0),(2,42,6,0),(2,42,10,0),(3,2,5,1),(3,2,6,1),(3,2,10,0),(3,4,5,1),(3,4,6,1),(3,4,8,0),(3,4,10,0),(3,6,5,1),(3,6,6,1),(3,6,8,0),(3,6,10,0),(3,7,5,1),(3,7,6,1),(3,7,8,0),(3,7,9,0),(3,7,10,0),(3,8,6,1),(3,9,5,0),(3,9,6,0),(3,13,5,1),(3,13,6,1),(3,13,8,0),(3,13,10,0),(3,14,5,1),(3,14,6,1),(3,14,10,0),(3,18,5,1),(3,18,6,1),(3,18,10,0),(3,19,5,1),(3,19,6,1),(3,19,10,0),(3,20,5,0),(3,20,6,0),(3,21,5,0),(3,21,6,0),(3,22,5,0),(3,22,6,0),(3,23,5,0),(3,23,6,0),(3,25,6,0),(3,25,13,0),(3,33,11,0),(3,33,12,0),(3,34,5,0),(3,34,6,0),(3,34,10,0),(3,36,5,0),(3,36,6,0),(3,36,10,0),(3,40,5,0),(3,40,6,0),(3,40,10,0),(3,41,5,0),(3,41,6,0),(3,41,10,0),(3,42,5,0),(3,42,6,0),(3,42,10,0),(4,2,5,1),(4,2,6,1),(4,2,10,0),(4,4,5,1),(4,4,6,1),(4,4,8,1),(4,4,10,0),(4,6,5,1),(4,6,6,1),(4,6,8,1),(4,6,10,0),(4,7,5,1),(4,7,6,1),(4,7,8,1),(4,7,9,0),(4,7,10,0),(4,8,6,1),(4,9,5,0),(4,9,6,0),(4,13,5,1),(4,13,6,1),(4,13,8,1),(4,13,10,0),(4,14,5,1),(4,14,6,1),(4,14,10,0),(4,18,5,1),(4,18,6,1),(4,18,10,0),(4,19,5,1),(4,19,6,1),(4,19,10,0),(4,20,5,0),(4,20,6,0),(4,21,5,0),(4,21,6,0),(4,22,5,0),(4,22,6,0),(4,23,5,0),(4,23,6,0),(4,25,6,0),(4,25,13,0),(4,33,11,0),(4,33,12,0),(4,34,5,0),(4,34,6,0),(4,34,10,0),(4,36,5,0),(4,36,6,0),(4,36,10,0),(4,40,5,0),(4,40,6,0),(4,40,10,0),(4,41,5,0),(4,41,6,0),(4,41,10,0),(4,42,5,0),(4,42,6,0),(4,42,10,0),(5,2,10,0),(5,4,10,0),(5,6,10,0),(5,7,9,0),(5,7,10,0),(5,9,5,0),(5,9,6,0),(5,13,10,0),(5,14,10,0),(5,16,5,0),(5,16,6,0),(5,18,10,0),(5,19,10,0),(5,20,5,0),(5,20,6,0),(5,21,5,0),(5,21,6,0),(5,22,5,0),(5,22,6,0),(5,23,5,0),(5,23,6,0),(5,25,6,0),(5,25,13,0),(5,33,11,0),(5,33,12,0),(5,34,5,0),(5,34,6,0),(5,34,10,0),(5,36,5,0),(5,36,6,0),(5,36,10,0),(5,40,5,0),(5,40,6,0),(5,40,10,0),(5,41,5,0),(5,41,6,0),(5,41,10,0),(5,42,5,0),(5,42,6,0),(5,42,10,0),(6,2,10,0),(6,4,10,0),(6,6,10,0),(6,7,9,0),(6,7,10,0),(6,9,5,0),(6,9,6,0),(6,13,10,0),(6,14,10,0),(6,16,5,0),(6,16,6,0),(6,18,10,0),(6,19,10,0),(6,20,5,0),(6,20,6,0),(6,21,5,0),(6,21,6,0),(6,22,5,0),(6,22,6,0),(6,23,5,0),(6,23,6,0),(6,25,6,0),(6,25,13,0),(6,33,11,0),(6,33,12,0),(6,34,5,0),(6,34,6,0),(6,34,10,0),(6,36,5,0),(6,36,6,0),(6,36,10,0),(6,40,5,0),(6,40,6,0),(6,40,10,0),(6,41,5,0),(6,41,6,0),(6,41,10,0),(6,42,5,0),(6,42,6,0),(6,42,10,0),(7,2,10,0),(7,4,10,0),(7,6,10,0),(7,7,9,0),(7,7,10,0),(7,9,5,0),(7,9,6,0),(7,13,10,0),(7,14,10,0),(7,16,5,0),(7,16,6,0),(7,18,10,0),(7,19,10,0),(7,20,5,0),(7,20,6,0),(7,21,5,0),(7,21,6,0),(7,22,5,0),(7,22,6,0),(7,23,5,0),(7,23,6,0),(7,25,6,0),(7,25,13,0),(7,33,11,0),(7,33,12,0),(7,34,5,0),(7,34,6,0),(7,34,10,0),(7,36,5,0),(7,36,6,0),(7,36,10,0),(7,40,5,0),(7,40,6,0),(7,40,10,0),(7,41,5,0),(7,41,6,0),(7,41,10,0),(7,42,5,0),(7,42,6,0),(7,42,10,0),(8,2,10,0),(8,4,10,0),(8,6,10,0),(8,7,9,0),(8,7,10,0),(8,9,5,0),(8,9,6,0),(8,13,10,0),(8,14,10,0),(8,16,5,0),(8,16,6,0),(8,18,10,0),(8,19,10,0),(8,20,5,0),(8,20,6,0),(8,21,5,0),(8,21,6,0),(8,22,5,0),(8,22,6,0),(8,23,5,0),(8,23,6,0),(8,25,6,0),(8,25,13,0),(8,33,11,0),(8,33,12,0),(8,34,5,0),(8,34,6,0),(8,34,10,0),(8,36,5,0),(8,36,6,0),(8,36,10,0),(8,40,5,0),(8,40,6,0),(8,40,10,0),(8,41,5,0),(8,41,6,0),(8,41,10,0),(8,42,5,0),(8,42,6,0),(8,42,10,0),(9,2,10,0),(9,4,10,0),(9,6,10,0),(9,7,9,0),(9,7,10,0),(9,9,5,0),(9,9,6,0),(9,13,10,0),(9,14,10,0),(9,16,5,0),(9,16,6,0),(9,18,10,0),(9,19,10,0),(9,20,5,0),(9,20,6,0),(9,21,5,0),(9,21,6,0),(9,22,5,0),(9,22,6,0),(9,23,5,0),(9,23,6,0),(9,25,6,0),(9,25,13,0),(9,33,11,0),(9,33,12,0),(9,34,5,0),(9,34,6,0),(9,34,10,0),(9,36,5,0),(9,36,6,0),(9,36,10,0),(9,40,5,0),(9,40,6,0),(9,40,10,0),(9,41,5,0),(9,41,6,0),(9,41,10,0),(9,42,5,0),(9,42,6,0),(9,42,10,0),(10,2,10,0),(10,4,10,0),(10,6,10,0),(10,7,9,0),(10,7,10,0),(10,9,5,0),(10,9,6,0),(10,13,10,0),(10,14,10,0),(10,16,5,0),(10,16,6,0),(10,18,10,0),(10,19,10,0),(10,20,5,0),(10,20,6,0),(10,21,5,0),(10,21,6,0),(10,22,5,0),(10,22,6,0),(10,23,5,0),(10,23,6,0),(10,25,6,0),(10,25,13,0),(10,33,11,0),(10,33,12,0),(10,34,5,0),(10,34,6,0),(10,34,10,0),(10,36,5,0),(10,36,6,0),(10,36,10,0),(10,40,5,0),(10,40,6,0),(10,40,10,0),(10,41,5,0),(10,41,6,0),(10,41,10,0),(10,42,5,0),(10,42,6,0),(10,42,10,0),(11,2,10,0),(11,4,10,0),(11,6,10,0),(11,7,9,0),(11,7,10,0),(11,9,5,0),(11,9,6,0),(11,13,10,0),(11,14,10,0),(11,16,5,0),(11,16,6,0),(11,18,10,0),(11,19,10,0),(11,20,5,0),(11,20,6,0),(11,21,5,0),(11,21,6,0),(11,22,5,0),(11,22,6,0),(11,23,5,0),(11,23,6,0),(11,25,6,0),(11,25,13,0),(11,33,11,0),(11,33,12,0),(11,34,5,0),(11,34,6,0),(11,34,10,0),(11,36,5,0),(11,36,6,0),(11,36,10,0),(11,40,5,0),(11,40,6,0),(11,40,10,0),(11,41,5,0),(11,41,6,0),(11,41,10,0),(11,42,5,0),(11,42,6,0),(11,42,10,0),(12,2,10,0),(12,4,10,0),(12,6,10,0),(12,7,9,0),(12,7,10,0),(12,9,5,0),(12,9,6,0),(12,13,10,0),(12,14,10,0),(12,16,5,0),(12,16,6,0),(12,18,10,0),(12,19,10,0),(12,20,5,0),(12,20,6,0),(12,21,5,0),(12,21,6,0),(12,22,5,0),(12,22,6,0),(12,23,5,0),(12,23,6,0),(12,25,6,0),(12,25,13,0),(12,33,11,0),(12,33,12,0),(12,34,5,0),(12,34,6,0),(12,34,10,0),(12,36,5,0),(12,36,6,0),(12,36,10,0),(12,40,5,0),(12,40,6,0),(12,40,10,0),(12,41,5,0),(12,41,6,0),(12,41,10,0),(12,42,5,0),(12,42,6,0),(12,42,10,0);
/*!40000 ALTER TABLE `vtiger_profile2utility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_profile_seq`
--

DROP TABLE IF EXISTS `vtiger_profile_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_profile_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_profile_seq`
--

LOCK TABLES `vtiger_profile_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_profile_seq` DISABLE KEYS */;
INSERT INTO `vtiger_profile_seq` VALUES (12);
/*!40000 ALTER TABLE `vtiger_profile_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_progress`
--

DROP TABLE IF EXISTS `vtiger_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_progress` (
  `progressid` int(11) NOT NULL AUTO_INCREMENT,
  `progress` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`progressid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_progress`
--

LOCK TABLES `vtiger_progress` WRITE;
/*!40000 ALTER TABLE `vtiger_progress` DISABLE KEYS */;
INSERT INTO `vtiger_progress` VALUES (2,'10%',1,276,2),(3,'20%',1,277,3),(4,'30%',1,278,4),(5,'40%',1,279,5),(6,'50%',1,280,6),(7,'60%',1,281,7),(8,'70%',1,282,8),(9,'80%',1,283,9),(10,'90%',1,284,10),(11,'100%',1,285,11);
/*!40000 ALTER TABLE `vtiger_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_progress_seq`
--

DROP TABLE IF EXISTS `vtiger_progress_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_progress_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_progress_seq`
--

LOCK TABLES `vtiger_progress_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_progress_seq` DISABLE KEYS */;
INSERT INTO `vtiger_progress_seq` VALUES (11);
/*!40000 ALTER TABLE `vtiger_progress_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_project`
--

DROP TABLE IF EXISTS `vtiger_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_project` (
  `projectid` int(11) DEFAULT NULL,
  `projectname` varchar(255) DEFAULT NULL,
  `project_no` varchar(100) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `targetenddate` date DEFAULT NULL,
  `actualenddate` date DEFAULT NULL,
  `targetbudget` varchar(255) DEFAULT NULL,
  `projecturl` varchar(255) DEFAULT NULL,
  `projectstatus` varchar(100) DEFAULT NULL,
  `projectpriority` varchar(100) DEFAULT NULL,
  `projecttype` varchar(100) DEFAULT NULL,
  `progress` varchar(100) DEFAULT NULL,
  `linktoaccountscontacts` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_project`
--

LOCK TABLES `vtiger_project` WRITE;
/*!40000 ALTER TABLE `vtiger_project` DISABLE KEYS */;
INSERT INTO `vtiger_project` VALUES (7,'Progetto Paterno','PROJ1','2017-02-13','2017-05-31',NULL,'','','in progress','','operative','','5'),(35,'Prova da Mail Manager','PROJ2','2017-03-08',NULL,NULL,'','','','','','',''),(36,'Prova da Mail Manager','PROJ3','2017-03-07','2017-04-28',NULL,'','','','','','',''),(38,'Prova da Mail Manager','PROJ4','2017-03-14',NULL,NULL,'','','','','','','32');
/*!40000 ALTER TABLE `vtiger_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projectcf`
--

DROP TABLE IF EXISTS `vtiger_projectcf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projectcf` (
  `projectid` int(11) NOT NULL,
  PRIMARY KEY (`projectid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projectcf`
--

LOCK TABLES `vtiger_projectcf` WRITE;
/*!40000 ALTER TABLE `vtiger_projectcf` DISABLE KEYS */;
INSERT INTO `vtiger_projectcf` VALUES (7),(35),(36),(38);
/*!40000 ALTER TABLE `vtiger_projectcf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projectmilestone`
--

DROP TABLE IF EXISTS `vtiger_projectmilestone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projectmilestone` (
  `projectmilestoneid` int(11) NOT NULL,
  `projectmilestonename` varchar(255) DEFAULT NULL,
  `projectmilestone_no` varchar(100) DEFAULT NULL,
  `projectmilestonedate` varchar(255) DEFAULT NULL,
  `projectid` varchar(100) DEFAULT NULL,
  `projectmilestonetype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`projectmilestoneid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projectmilestone`
--

LOCK TABLES `vtiger_projectmilestone` WRITE;
/*!40000 ALTER TABLE `vtiger_projectmilestone` DISABLE KEYS */;
INSERT INTO `vtiger_projectmilestone` VALUES (8,'Demo','PM1','2017-03-13','7',''),(9,'Analisi','PM2','2017-04-03','7',''),(10,'Installazione','PM3','2017-06-30','7','');
/*!40000 ALTER TABLE `vtiger_projectmilestone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projectmilestonecf`
--

DROP TABLE IF EXISTS `vtiger_projectmilestonecf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projectmilestonecf` (
  `projectmilestoneid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`projectmilestoneid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projectmilestonecf`
--

LOCK TABLES `vtiger_projectmilestonecf` WRITE;
/*!40000 ALTER TABLE `vtiger_projectmilestonecf` DISABLE KEYS */;
INSERT INTO `vtiger_projectmilestonecf` VALUES (8),(9),(10);
/*!40000 ALTER TABLE `vtiger_projectmilestonecf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projectmilestonetype`
--

DROP TABLE IF EXISTS `vtiger_projectmilestonetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projectmilestonetype` (
  `projectmilestonetypeid` int(11) NOT NULL AUTO_INCREMENT,
  `projectmilestonetype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projectmilestonetypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projectmilestonetype`
--

LOCK TABLES `vtiger_projectmilestonetype` WRITE;
/*!40000 ALTER TABLE `vtiger_projectmilestonetype` DISABLE KEYS */;
INSERT INTO `vtiger_projectmilestonetype` VALUES (2,'administrative',1,236,2),(3,'operative',1,237,3),(4,'other',1,238,4);
/*!40000 ALTER TABLE `vtiger_projectmilestonetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projectmilestonetype_seq`
--

DROP TABLE IF EXISTS `vtiger_projectmilestonetype_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projectmilestonetype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projectmilestonetype_seq`
--

LOCK TABLES `vtiger_projectmilestonetype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_projectmilestonetype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_projectmilestonetype_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_projectmilestonetype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projectpriority`
--

DROP TABLE IF EXISTS `vtiger_projectpriority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projectpriority` (
  `projectpriorityid` int(11) NOT NULL AUTO_INCREMENT,
  `projectpriority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projectpriorityid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projectpriority`
--

LOCK TABLES `vtiger_projectpriority` WRITE;
/*!40000 ALTER TABLE `vtiger_projectpriority` DISABLE KEYS */;
INSERT INTO `vtiger_projectpriority` VALUES (2,'low',1,272,2),(3,'normal',1,273,3),(4,'high',1,274,4);
/*!40000 ALTER TABLE `vtiger_projectpriority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projectpriority_seq`
--

DROP TABLE IF EXISTS `vtiger_projectpriority_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projectpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projectpriority_seq`
--

LOCK TABLES `vtiger_projectpriority_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_projectpriority_seq` DISABLE KEYS */;
INSERT INTO `vtiger_projectpriority_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_projectpriority_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projectstatus`
--

DROP TABLE IF EXISTS `vtiger_projectstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projectstatus` (
  `projectstatusid` int(11) NOT NULL AUTO_INCREMENT,
  `projectstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projectstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projectstatus`
--

LOCK TABLES `vtiger_projectstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_projectstatus` DISABLE KEYS */;
INSERT INTO `vtiger_projectstatus` VALUES (2,'prospecting',1,259,2),(3,'initiated',1,260,3),(4,'in progress',1,261,4),(5,'waiting for feedback',1,262,5),(6,'on hold',1,263,6),(7,'completed',1,264,7),(8,'delivered',1,265,8),(9,'archived',1,266,9);
/*!40000 ALTER TABLE `vtiger_projectstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projectstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_projectstatus_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projectstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projectstatus_seq`
--

LOCK TABLES `vtiger_projectstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_projectstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_projectstatus_seq` VALUES (9);
/*!40000 ALTER TABLE `vtiger_projectstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttask`
--

DROP TABLE IF EXISTS `vtiger_projecttask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projecttask` (
  `projecttaskid` int(11) NOT NULL,
  `projecttaskname` varchar(255) DEFAULT NULL,
  `projecttask_no` varchar(100) DEFAULT NULL,
  `projecttasktype` varchar(100) DEFAULT NULL,
  `projecttaskpriority` varchar(100) DEFAULT NULL,
  `projecttaskprogress` varchar(100) DEFAULT NULL,
  `projecttaskhours` varchar(255) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `projectid` varchar(100) DEFAULT NULL,
  `projecttasknumber` int(11) DEFAULT NULL,
  `projecttaskstatus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`projecttaskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projecttask`
--

LOCK TABLES `vtiger_projecttask` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttask` DISABLE KEYS */;
INSERT INTO `vtiger_projecttask` VALUES (11,'Predisposizione ambiente Demo','PT1','operative','normal','70%','4','2017-02-21','2017-03-13','7',0,'In Progress'),(12,'Predisporre Scenari / Use Case','PT2','operative','high','30%','2','2017-03-07','2017-03-13','7',0,'In Progress'),(16,'Valutazione commerciale','PT3','administrative','high','20%','4','2017-03-05','2017-03-31','7',0,'In Progress');
/*!40000 ALTER TABLE `vtiger_projecttask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttaskcf`
--

DROP TABLE IF EXISTS `vtiger_projecttaskcf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projecttaskcf` (
  `projecttaskid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`projecttaskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projecttaskcf`
--

LOCK TABLES `vtiger_projecttaskcf` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttaskcf` DISABLE KEYS */;
INSERT INTO `vtiger_projecttaskcf` VALUES (11),(12),(16);
/*!40000 ALTER TABLE `vtiger_projecttaskcf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttaskpriority`
--

DROP TABLE IF EXISTS `vtiger_projecttaskpriority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projecttaskpriority` (
  `projecttaskpriorityid` int(11) NOT NULL AUTO_INCREMENT,
  `projecttaskpriority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projecttaskpriorityid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projecttaskpriority`
--

LOCK TABLES `vtiger_projecttaskpriority` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttaskpriority` DISABLE KEYS */;
INSERT INTO `vtiger_projecttaskpriority` VALUES (2,'low',1,244,2),(3,'normal',1,245,3),(4,'high',1,246,4);
/*!40000 ALTER TABLE `vtiger_projecttaskpriority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttaskpriority_seq`
--

DROP TABLE IF EXISTS `vtiger_projecttaskpriority_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projecttaskpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projecttaskpriority_seq`
--

LOCK TABLES `vtiger_projecttaskpriority_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttaskpriority_seq` DISABLE KEYS */;
INSERT INTO `vtiger_projecttaskpriority_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_projecttaskpriority_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttaskprogress`
--

DROP TABLE IF EXISTS `vtiger_projecttaskprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projecttaskprogress` (
  `projecttaskprogressid` int(11) NOT NULL AUTO_INCREMENT,
  `projecttaskprogress` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projecttaskprogressid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projecttaskprogress`
--

LOCK TABLES `vtiger_projecttaskprogress` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttaskprogress` DISABLE KEYS */;
INSERT INTO `vtiger_projecttaskprogress` VALUES (2,'10%',1,248,2),(3,'20%',1,249,3),(4,'30%',1,250,4),(5,'40%',1,251,5),(6,'50%',1,252,6),(7,'60%',1,253,7),(8,'70%',1,254,8),(9,'80%',1,255,9),(10,'90%',1,256,10),(11,'100%',1,257,11);
/*!40000 ALTER TABLE `vtiger_projecttaskprogress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttaskprogress_seq`
--

DROP TABLE IF EXISTS `vtiger_projecttaskprogress_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projecttaskprogress_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projecttaskprogress_seq`
--

LOCK TABLES `vtiger_projecttaskprogress_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttaskprogress_seq` DISABLE KEYS */;
INSERT INTO `vtiger_projecttaskprogress_seq` VALUES (11);
/*!40000 ALTER TABLE `vtiger_projecttaskprogress_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttaskstatus`
--

DROP TABLE IF EXISTS `vtiger_projecttaskstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projecttaskstatus` (
  `projecttaskstatusid` int(11) NOT NULL AUTO_INCREMENT,
  `projecttaskstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projecttaskstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projecttaskstatus`
--

LOCK TABLES `vtiger_projecttaskstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttaskstatus` DISABLE KEYS */;
INSERT INTO `vtiger_projecttaskstatus` VALUES (2,'Open',0,290,2),(3,'In Progress',0,291,3),(4,'Completed',0,292,4),(5,'Deferred',0,293,5),(6,'Canceled ',0,294,6);
/*!40000 ALTER TABLE `vtiger_projecttaskstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttaskstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_projecttaskstatus_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projecttaskstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projecttaskstatus_seq`
--

LOCK TABLES `vtiger_projecttaskstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttaskstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_projecttaskstatus_seq` VALUES (6);
/*!40000 ALTER TABLE `vtiger_projecttaskstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttasktype`
--

DROP TABLE IF EXISTS `vtiger_projecttasktype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projecttasktype` (
  `projecttasktypeid` int(11) NOT NULL AUTO_INCREMENT,
  `projecttasktype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projecttasktypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projecttasktype`
--

LOCK TABLES `vtiger_projecttasktype` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttasktype` DISABLE KEYS */;
INSERT INTO `vtiger_projecttasktype` VALUES (2,'administrative',1,240,2),(3,'operative',1,241,3),(4,'other',1,242,4);
/*!40000 ALTER TABLE `vtiger_projecttasktype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttasktype_seq`
--

DROP TABLE IF EXISTS `vtiger_projecttasktype_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projecttasktype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projecttasktype_seq`
--

LOCK TABLES `vtiger_projecttasktype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttasktype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_projecttasktype_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_projecttasktype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttype`
--

DROP TABLE IF EXISTS `vtiger_projecttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projecttype` (
  `projecttypeid` int(11) NOT NULL AUTO_INCREMENT,
  `projecttype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projecttypeid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projecttype`
--

LOCK TABLES `vtiger_projecttype` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttype` DISABLE KEYS */;
INSERT INTO `vtiger_projecttype` VALUES (2,'administrative',1,268,2),(3,'operative',1,269,3),(4,'other',1,270,4);
/*!40000 ALTER TABLE `vtiger_projecttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_projecttype_seq`
--

DROP TABLE IF EXISTS `vtiger_projecttype_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_projecttype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_projecttype_seq`
--

LOCK TABLES `vtiger_projecttype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_projecttype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_projecttype_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_projecttype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_purchaseorder`
--

DROP TABLE IF EXISTS `vtiger_purchaseorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_purchaseorder` (
  `purchaseorderid` int(19) NOT NULL DEFAULT '0',
  `subject` varchar(100) DEFAULT NULL,
  `quoteid` int(19) DEFAULT NULL,
  `vendorid` int(19) DEFAULT NULL,
  `requisition_no` varchar(100) DEFAULT NULL,
  `purchaseorder_no` varchar(100) DEFAULT NULL,
  `tracking_no` varchar(100) DEFAULT NULL,
  `contactid` int(19) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `carrier` varchar(200) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `adjustment` decimal(25,8) DEFAULT NULL,
  `salescommission` decimal(25,3) DEFAULT NULL,
  `exciseduty` decimal(25,3) DEFAULT NULL,
  `total` decimal(25,8) DEFAULT NULL,
  `subtotal` decimal(25,8) DEFAULT NULL,
  `taxtype` varchar(25) DEFAULT NULL,
  `discount_percent` decimal(25,3) DEFAULT NULL,
  `discount_amount` decimal(25,8) DEFAULT NULL,
  `s_h_amount` decimal(25,8) DEFAULT NULL,
  `terms_conditions` text,
  `postatus` varchar(200) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT '1.000',
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `paid` decimal(25,8) DEFAULT NULL,
  `balance` decimal(25,8) DEFAULT NULL,
  `s_h_percent` int(11) DEFAULT NULL,
  PRIMARY KEY (`purchaseorderid`),
  KEY `purchaseorder_vendorid_idx` (`vendorid`),
  KEY `purchaseorder_quoteid_idx` (`quoteid`),
  KEY `purchaseorder_contactid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_purchaseorder`
--

LOCK TABLES `vtiger_purchaseorder` WRITE;
/*!40000 ALTER TABLE `vtiger_purchaseorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_purchaseorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_purchaseordercf`
--

DROP TABLE IF EXISTS `vtiger_purchaseordercf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_purchaseordercf` (
  `purchaseorderid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`purchaseorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_purchaseordercf`
--

LOCK TABLES `vtiger_purchaseordercf` WRITE;
/*!40000 ALTER TABLE `vtiger_purchaseordercf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_purchaseordercf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_quotes`
--

DROP TABLE IF EXISTS `vtiger_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_quotes` (
  `quoteid` int(19) NOT NULL DEFAULT '0',
  `subject` varchar(100) DEFAULT NULL,
  `potentialid` int(19) DEFAULT NULL,
  `quotestage` varchar(200) DEFAULT NULL,
  `validtill` date DEFAULT NULL,
  `contactid` int(19) DEFAULT NULL,
  `quote_no` varchar(100) DEFAULT NULL,
  `subtotal` decimal(25,8) DEFAULT NULL,
  `carrier` varchar(200) DEFAULT NULL,
  `shipping` varchar(100) DEFAULT NULL,
  `inventorymanager` int(19) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `adjustment` decimal(25,8) DEFAULT NULL,
  `total` decimal(25,8) DEFAULT NULL,
  `taxtype` varchar(25) DEFAULT NULL,
  `discount_percent` decimal(25,3) DEFAULT NULL,
  `discount_amount` decimal(25,8) DEFAULT NULL,
  `s_h_amount` decimal(25,8) DEFAULT NULL,
  `accountid` int(19) DEFAULT NULL,
  `terms_conditions` text,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT '1.000',
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `s_h_percent` int(11) DEFAULT NULL,
  PRIMARY KEY (`quoteid`),
  KEY `quote_quotestage_idx` (`quotestage`),
  KEY `quotes_potentialid_idx` (`potentialid`),
  KEY `quotes_contactid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_quotes`
--

LOCK TABLES `vtiger_quotes` WRITE;
/*!40000 ALTER TABLE `vtiger_quotes` DISABLE KEYS */;
INSERT INTO `vtiger_quotes` VALUES (24,'Preventivo ABC',17,'Created','2017-04-30',6,'QUO1',10500.00000000,'','',6,NULL,0.00000000,13335.00000000,'group',NULL,NULL,0.00000000,5,'termini e condizioni',1,1.000,10500.00000000,27);
/*!40000 ALTER TABLE `vtiger_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_quotesbillads`
--

DROP TABLE IF EXISTS `vtiger_quotesbillads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_quotesbillads` (
  `quotebilladdressid` int(19) NOT NULL DEFAULT '0',
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`quotebilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_quotesbillads`
--

LOCK TABLES `vtiger_quotesbillads` WRITE;
/*!40000 ALTER TABLE `vtiger_quotesbillads` DISABLE KEYS */;
INSERT INTO `vtiger_quotesbillads` VALUES (24,'','','','','via lunga','');
/*!40000 ALTER TABLE `vtiger_quotesbillads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_quotescf`
--

DROP TABLE IF EXISTS `vtiger_quotescf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_quotescf` (
  `quoteid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`quoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_quotescf`
--

LOCK TABLES `vtiger_quotescf` WRITE;
/*!40000 ALTER TABLE `vtiger_quotescf` DISABLE KEYS */;
INSERT INTO `vtiger_quotescf` VALUES (24);
/*!40000 ALTER TABLE `vtiger_quotescf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_quotesshipads`
--

DROP TABLE IF EXISTS `vtiger_quotesshipads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_quotesshipads` (
  `quoteshipaddressid` int(19) NOT NULL DEFAULT '0',
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`quoteshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_quotesshipads`
--

LOCK TABLES `vtiger_quotesshipads` WRITE;
/*!40000 ALTER TABLE `vtiger_quotesshipads` DISABLE KEYS */;
INSERT INTO `vtiger_quotesshipads` VALUES (24,'','','','','via lunga','');
/*!40000 ALTER TABLE `vtiger_quotesshipads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_quotestage`
--

DROP TABLE IF EXISTS `vtiger_quotestage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_quotestage` (
  `quotestageid` int(19) NOT NULL AUTO_INCREMENT,
  `quotestage` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`quotestageid`),
  UNIQUE KEY `quotestage_quotestage_idx` (`quotestage`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_quotestage`
--

LOCK TABLES `vtiger_quotestage` WRITE;
/*!40000 ALTER TABLE `vtiger_quotestage` DISABLE KEYS */;
INSERT INTO `vtiger_quotestage` VALUES (1,'Created',0,139,0),(2,'Delivered',0,140,1),(3,'Reviewed',0,141,2),(4,'Accepted',0,142,3),(5,'Rejected',0,143,4);
/*!40000 ALTER TABLE `vtiger_quotestage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_quotestage_seq`
--

DROP TABLE IF EXISTS `vtiger_quotestage_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_quotestage_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_quotestage_seq`
--

LOCK TABLES `vtiger_quotestage_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_quotestage_seq` DISABLE KEYS */;
INSERT INTO `vtiger_quotestage_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_quotestage_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_quotestagehistory`
--

DROP TABLE IF EXISTS `vtiger_quotestagehistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_quotestagehistory` (
  `historyid` int(19) NOT NULL AUTO_INCREMENT,
  `quoteid` int(19) NOT NULL,
  `accountname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `quotestage` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  KEY `quotestagehistory_quoteid_idx` (`quoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_quotestagehistory`
--

LOCK TABLES `vtiger_quotestagehistory` WRITE;
/*!40000 ALTER TABLE `vtiger_quotestagehistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_quotestagehistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_rating`
--

DROP TABLE IF EXISTS `vtiger_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_rating` (
  `rating_id` int(19) NOT NULL AUTO_INCREMENT,
  `rating` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_rating`
--

LOCK TABLES `vtiger_rating` WRITE;
/*!40000 ALTER TABLE `vtiger_rating` DISABLE KEYS */;
INSERT INTO `vtiger_rating` VALUES (2,'Acquired',1,145,1),(3,'Active',1,146,2),(4,'Market Failed',1,147,3),(5,'Project Cancelled',1,148,4),(6,'Shutdown',1,149,5);
/*!40000 ALTER TABLE `vtiger_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_rating_seq`
--

DROP TABLE IF EXISTS `vtiger_rating_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_rating_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_rating_seq`
--

LOCK TABLES `vtiger_rating_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_rating_seq` DISABLE KEYS */;
INSERT INTO `vtiger_rating_seq` VALUES (6);
/*!40000 ALTER TABLE `vtiger_rating_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_recurring_frequency`
--

DROP TABLE IF EXISTS `vtiger_recurring_frequency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_recurring_frequency` (
  `recurring_frequency_id` int(11) DEFAULT NULL,
  `recurring_frequency` varchar(200) DEFAULT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_recurring_frequency`
--

LOCK TABLES `vtiger_recurring_frequency` WRITE;
/*!40000 ALTER TABLE `vtiger_recurring_frequency` DISABLE KEYS */;
INSERT INTO `vtiger_recurring_frequency` VALUES (2,'Daily',1,1),(3,'Weekly',2,1),(4,'Monthly',3,1),(5,'Quarterly',4,1),(6,'Yearly',5,1);
/*!40000 ALTER TABLE `vtiger_recurring_frequency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_recurring_frequency_seq`
--

DROP TABLE IF EXISTS `vtiger_recurring_frequency_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_recurring_frequency_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_recurring_frequency_seq`
--

LOCK TABLES `vtiger_recurring_frequency_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_recurring_frequency_seq` DISABLE KEYS */;
INSERT INTO `vtiger_recurring_frequency_seq` VALUES (6);
/*!40000 ALTER TABLE `vtiger_recurring_frequency_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_recurringevents`
--

DROP TABLE IF EXISTS `vtiger_recurringevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_recurringevents` (
  `recurringid` int(19) NOT NULL AUTO_INCREMENT,
  `activityid` int(19) NOT NULL,
  `recurringdate` date DEFAULT NULL,
  `recurringtype` varchar(30) DEFAULT NULL,
  `recurringfreq` int(19) DEFAULT NULL,
  `recurringinfo` varchar(50) DEFAULT NULL,
  `recurringenddate` date DEFAULT NULL,
  PRIMARY KEY (`recurringid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_recurringevents`
--

LOCK TABLES `vtiger_recurringevents` WRITE;
/*!40000 ALTER TABLE `vtiger_recurringevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_recurringevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_recurringtype`
--

DROP TABLE IF EXISTS `vtiger_recurringtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_recurringtype` (
  `recurringeventid` int(19) NOT NULL AUTO_INCREMENT,
  `recurringtype` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`recurringeventid`),
  UNIQUE KEY `recurringtype_status_idx` (`recurringtype`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_recurringtype`
--

LOCK TABLES `vtiger_recurringtype` WRITE;
/*!40000 ALTER TABLE `vtiger_recurringtype` DISABLE KEYS */;
INSERT INTO `vtiger_recurringtype` VALUES (2,'Daily',1,1),(3,'Weekly',2,1),(4,'Monthly',3,1),(5,'Yearly',4,1);
/*!40000 ALTER TABLE `vtiger_recurringtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_recurringtype_seq`
--

DROP TABLE IF EXISTS `vtiger_recurringtype_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_recurringtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_recurringtype_seq`
--

LOCK TABLES `vtiger_recurringtype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_recurringtype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_recurringtype_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_recurringtype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_relatedlists`
--

DROP TABLE IF EXISTS `vtiger_relatedlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_relatedlists` (
  `relation_id` int(19) NOT NULL,
  `tabid` int(10) DEFAULT NULL,
  `related_tabid` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sequence` int(10) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `presence` int(10) NOT NULL DEFAULT '0',
  `actions` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`relation_id`),
  KEY `relatedlists_relation_id_idx` (`relation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_relatedlists`
--

LOCK TABLES `vtiger_relatedlists` WRITE;
/*!40000 ALTER TABLE `vtiger_relatedlists` DISABLE KEYS */;
INSERT INTO `vtiger_relatedlists` VALUES (1,6,4,'get_contacts',1,'Contacts',0,'add'),(2,6,2,'get_opportunities',2,'Potentials',0,'add'),(3,6,20,'get_quotes',3,'Quotes',0,'add'),(4,6,22,'get_salesorder',4,'Sales Order',0,'add'),(5,6,23,'get_invoices',5,'Invoice',0,'add'),(6,6,9,'get_activities',6,'Activities',0,'add'),(7,6,10,'get_emails',7,'Emails',0,'add'),(8,6,9,'get_history',8,'Activity History',0,'add'),(9,6,8,'get_attachments',9,'Documents',0,'add,select'),(10,6,13,'get_tickets',10,'HelpDesk',0,'add'),(11,6,14,'get_products',11,'Products',0,'select'),(12,7,9,'get_activities',1,'Activities',0,'add'),(13,7,10,'get_emails',2,'Emails',0,'add'),(14,7,9,'get_history',3,'Activity History',0,'add'),(15,7,8,'get_attachments',4,'Documents',0,'add,select'),(16,7,14,'get_products',5,'Products',0,'select'),(17,7,26,'get_campaigns',6,'Campaigns',0,'select'),(18,4,2,'get_opportunities',1,'Potentials',0,'add'),(19,4,9,'get_activities',2,'Activities',0,'add'),(20,4,10,'get_emails',3,'Emails',0,'add'),(21,4,13,'get_tickets',4,'HelpDesk',0,'add'),(22,4,20,'get_quotes',5,'Quotes',0,'add'),(23,4,21,'get_purchase_orders',6,'Purchase Order',0,'add'),(24,4,22,'get_salesorder',7,'Sales Order',0,'add'),(25,4,14,'get_products',8,'Products',0,'select'),(26,4,9,'get_history',9,'Activity History',0,'add'),(27,4,8,'get_attachments',10,'Documents',0,'add,select'),(28,4,26,'get_campaigns',11,'Campaigns',0,'select'),(29,4,23,'get_invoices',12,'Invoice',0,'add'),(30,2,9,'get_activities',1,'Activities',0,'add'),(31,2,4,'get_contacts',2,'Contacts',0,'select'),(32,2,14,'get_products',3,'Products',0,'select'),(33,2,0,'get_stage_history',4,'Sales Stage History',0,''),(34,2,8,'get_attachments',5,'Documents',0,'add,select'),(35,2,20,'get_Quotes',6,'Quotes',0,'add'),(36,2,22,'get_salesorder',7,'Sales Order',0,'add'),(37,2,9,'get_history',8,'Activity History',0,''),(38,14,13,'get_tickets',1,'HelpDesk',0,'add'),(39,14,8,'get_attachments',3,'Documents',0,'add,select'),(40,14,20,'get_quotes',4,'Quotes',0,'add'),(41,14,21,'get_purchase_orders',5,'Purchase Order',0,'add'),(42,14,22,'get_salesorder',6,'Sales Order',0,'add'),(43,14,23,'get_invoices',7,'Invoice',0,'add'),(44,14,19,'get_product_pricebooks',8,'PriceBooks',0,'ADD,SELECT'),(45,14,7,'get_leads',9,'Leads',0,'select'),(46,14,6,'get_accounts',10,'Accounts',0,'select'),(47,14,4,'get_contacts',11,'Contacts',0,'select'),(48,14,2,'get_opportunities',12,'Potentials',0,'select'),(49,14,14,'get_products',13,'Product Bundles',0,'add,select'),(50,14,14,'get_parent_products',14,'Parent Product',0,''),(51,10,4,'get_contacts',1,'Contacts',0,'select,bulkmail'),(52,10,0,'get_users',2,'Users',0,''),(53,10,8,'get_attachments',3,'Documents',0,'add,select'),(54,13,9,'get_activities',1,'Activities',0,'add'),(55,13,8,'get_attachments',2,'Documents',0,'add,select'),(56,13,0,'get_ticket_history',3,'Ticket History',0,''),(57,13,9,'get_history',4,'Activity History',0,'add'),(58,19,14,'get_pricebook_products',2,'Products',0,'select'),(59,18,14,'get_products',1,'Products',0,'add,select'),(60,18,21,'get_purchase_orders',2,'Purchase Order',0,'add'),(61,18,4,'get_contacts',3,'Contacts',0,'select'),(62,18,10,'get_emails',4,'Emails',0,'add'),(63,20,22,'get_salesorder',1,'Sales Order',0,''),(64,20,9,'get_activities',2,'Activities',0,'add'),(65,20,8,'get_attachments',3,'Documents',0,'add,select'),(66,20,9,'get_history',4,'Activity History',0,''),(67,20,0,'get_quotestagehistory',5,'Quote Stage History',0,''),(68,21,9,'get_activities',1,'Activities',0,'add'),(69,21,8,'get_attachments',2,'Documents',0,'add,select'),(70,21,9,'get_history',3,'Activity History',0,''),(71,21,0,'get_postatushistory',4,'PurchaseOrder Status History',0,''),(72,22,9,'get_activities',1,'Activities',0,'add'),(73,22,8,'get_attachments',2,'Documents',0,'add,select'),(74,22,23,'get_invoices',3,'Invoice',0,''),(75,22,9,'get_history',4,'Activity History',0,''),(76,22,0,'get_sostatushistory',5,'SalesOrder Status History',0,''),(77,23,9,'get_activities',1,'Activities',0,'add'),(78,23,8,'get_attachments',2,'Documents',0,'add,select'),(79,23,9,'get_history',3,'Activity History',0,''),(80,23,0,'get_invoicestatushistory',4,'Invoice Status History',0,''),(81,9,0,'get_users',1,'Users',0,''),(82,9,4,'get_contacts',2,'Contacts',0,''),(83,26,4,'get_contacts',1,'Contacts',0,'add,select'),(84,26,7,'get_leads',2,'Leads',0,'add,select'),(85,26,2,'get_opportunities',3,'Potentials',0,'add'),(86,26,9,'get_activities',4,'Activities',0,'add'),(87,6,26,'get_campaigns',13,'Campaigns',0,'select'),(88,26,6,'get_accounts',5,'Accounts',0,'add,select'),(89,15,8,'get_attachments',1,'Documents',0,'add,select'),(90,4,33,'get_dependents_list',13,'PBXManager',0,''),(91,7,33,'get_dependents_list',7,'PBXManager',0,''),(92,6,33,'get_dependents_list',14,'PBXManager',0,''),(93,34,13,'get_related_list',1,'HelpDesk',0,'ADD,SELECT'),(94,34,20,'get_quotes',2,'Quotes',0,'ADD'),(95,34,21,'get_purchase_orders',3,'Purchase Order',0,'ADD'),(96,34,22,'get_salesorder',4,'Sales Order',0,'ADD'),(97,34,23,'get_invoices',5,'Invoice',0,'ADD'),(98,34,19,'get_service_pricebooks',6,'PriceBooks',0,'ADD'),(99,34,7,'get_related_list',7,'Leads',0,'SELECT'),(100,34,6,'get_related_list',8,'Accounts',0,'SELECT'),(101,34,4,'get_related_list',9,'Contacts',0,'SELECT'),(102,34,2,'get_related_list',10,'Potentials',0,'SELECT'),(103,34,8,'get_attachments',11,'Documents',0,'ADD,SELECT'),(104,13,34,'get_related_list',5,'Services',0,'SELECT'),(105,7,34,'get_related_list',8,'Services',0,'SELECT'),(106,6,34,'get_related_list',15,'Services',0,'SELECT'),(107,4,34,'get_related_list',14,'Services',0,'SELECT'),(108,2,34,'get_related_list',9,'Services',0,'SELECT'),(109,19,34,'get_pricebook_services',3,'Services',0,'SELECT'),(110,36,13,'get_related_list',1,'Service Requests',0,'ADD,SELECT'),(111,36,8,'get_attachments',2,'Documents',0,'ADD,SELECT'),(112,6,36,'get_dependents_list',16,'Service Contracts',0,'ADD'),(113,4,36,'get_dependents_list',15,'Service Contracts',0,'ADD'),(114,13,36,'get_related_list',6,'Service Contracts',0,'ADD,SELECT'),(121,6,42,'get_dependents_list',17,'Projects',0,'add'),(122,4,42,'get_dependents_list',16,'Projects',0,'add'),(123,13,42,'get_related_list',7,'Projects',0,'SELECT'),(124,43,13,'get_related_list',1,'HelpDesk',0,'ADD,SELECT'),(125,43,8,'get_attachments',2,'Documents',0,'ADD,SELECT'),(126,6,43,'get_dependents_list',18,'Assets',0,'ADD'),(127,14,43,'get_dependents_list',15,'Assets',0,'ADD'),(128,23,43,'get_dependents_list',5,'Assets',0,'ADD'),(129,47,6,'get_related_list',1,'Accounts',0,' '),(130,47,4,'get_related_list',2,'Contacts',0,' '),(131,47,7,'get_related_list',3,'Leads',0,' '),(132,41,8,'get_attachments',1,'Documents',0,'ADD,SELECT'),(133,42,41,'get_dependents_list',1,'Project Tasks',0,'ADD'),(134,42,40,'get_dependents_list',2,'Project Milestones',0,'ADD'),(135,42,8,'get_attachments',3,'Documents',0,'ADD,SELECT'),(136,42,13,'get_related_list',4,'HelpDesk',0,'ADD,SELECT'),(137,42,0,'get_gantt_chart',5,'Charts',0,''),(138,4,43,'get_dependents_list',17,'Assets',0,'ADD'),(139,4,18,'get_vendors',18,'Vendors',0,'SELECT');
/*!40000 ALTER TABLE `vtiger_relatedlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_relatedlists_rb`
--

DROP TABLE IF EXISTS `vtiger_relatedlists_rb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_relatedlists_rb` (
  `entityid` int(19) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `rel_table` varchar(200) DEFAULT NULL,
  `rel_column` varchar(200) DEFAULT NULL,
  `ref_column` varchar(200) DEFAULT NULL,
  `related_crm_ids` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_relatedlists_rb`
--

LOCK TABLES `vtiger_relatedlists_rb` WRITE;
/*!40000 ALTER TABLE `vtiger_relatedlists_rb` DISABLE KEYS */;
INSERT INTO `vtiger_relatedlists_rb` VALUES (2,'update','vtiger_crmentity','deleted','crmid',''),(2,'update','vtiger_crmentity','deleted','crmid',''),(32,'update','vtiger_crmentity','deleted','crmid',''),(32,'update','vtiger_crmentity','deleted','crmid',''),(32,'update','vtiger_troubletickets','parent_id','ticketid','37'),(32,'update','vtiger_potential','related_to','potentialid','39'),(32,'update','vtiger_project','linktoaccountscontacts','projectid','38');
/*!40000 ALTER TABLE `vtiger_relatedlists_rb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_relatedlists_seq`
--

DROP TABLE IF EXISTS `vtiger_relatedlists_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_relatedlists_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_relatedlists_seq`
--

LOCK TABLES `vtiger_relatedlists_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_relatedlists_seq` DISABLE KEYS */;
INSERT INTO `vtiger_relatedlists_seq` VALUES (139);
/*!40000 ALTER TABLE `vtiger_relatedlists_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_relcriteria`
--

DROP TABLE IF EXISTS `vtiger_relcriteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_relcriteria` (
  `queryid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `comparator` varchar(20) DEFAULT NULL,
  `value` varchar(512) DEFAULT NULL,
  `groupid` int(11) DEFAULT '1',
  `column_condition` varchar(256) DEFAULT 'and',
  PRIMARY KEY (`queryid`,`columnindex`),
  KEY `relcriteria_queryid_idx` (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_relcriteria`
--

LOCK TABLES `vtiger_relcriteria` WRITE;
/*!40000 ALTER TABLE `vtiger_relcriteria` DISABLE KEYS */;
INSERT INTO `vtiger_relcriteria` VALUES (1,0,'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V','n','',1,'and'),(2,0,'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V','e','',1,'and'),(3,0,'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V','n','',1,'and'),(7,0,'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V','e','Closed Won',1,'and'),(12,0,'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V','n','Closed',1,'and'),(15,0,'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V','n','Accepted',1,'and'),(15,1,'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V','n','Rejected',1,'and'),(22,0,'vtiger_email_track:access_count:Emails_Access_Count:access_count:V','n','',1,'and'),(23,0,'vtiger_email_track:access_count:Emails_Access_Count:access_count:V','n','',1,'and'),(24,0,'vtiger_email_track:access_count:Emails_Access_Count:access_count:V','n','',1,'and'),(25,0,'vtiger_email_track:access_count:Emails_Access_Count:access_count:V','n','',1,'and');
/*!40000 ALTER TABLE `vtiger_relcriteria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_relcriteria_grouping`
--

DROP TABLE IF EXISTS `vtiger_relcriteria_grouping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_relcriteria_grouping` (
  `groupid` int(11) NOT NULL,
  `queryid` int(19) NOT NULL,
  `group_condition` varchar(256) DEFAULT NULL,
  `condition_expression` text,
  PRIMARY KEY (`groupid`,`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_relcriteria_grouping`
--

LOCK TABLES `vtiger_relcriteria_grouping` WRITE;
/*!40000 ALTER TABLE `vtiger_relcriteria_grouping` DISABLE KEYS */;
INSERT INTO `vtiger_relcriteria_grouping` VALUES (1,1,'','0'),(1,2,'','0'),(1,3,'','0'),(1,7,'','0'),(1,12,'','0'),(1,15,'','0 and 1'),(1,22,'','0'),(1,23,'','0'),(1,24,'','0'),(1,25,'','0');
/*!40000 ALTER TABLE `vtiger_relcriteria_grouping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reminder_interval`
--

DROP TABLE IF EXISTS `vtiger_reminder_interval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_reminder_interval` (
  `reminder_intervalid` int(19) NOT NULL AUTO_INCREMENT,
  `reminder_interval` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL,
  `presence` int(1) NOT NULL,
  PRIMARY KEY (`reminder_intervalid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_reminder_interval`
--

LOCK TABLES `vtiger_reminder_interval` WRITE;
/*!40000 ALTER TABLE `vtiger_reminder_interval` DISABLE KEYS */;
INSERT INTO `vtiger_reminder_interval` VALUES (2,'1 Minute',1,1),(3,'5 Minutes',2,1),(4,'15 Minutes',3,1),(5,'30 Minutes',4,1),(6,'45 Minutes',5,1),(7,'1 Hour',6,1),(8,'1 Day',7,1);
/*!40000 ALTER TABLE `vtiger_reminder_interval` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reminder_interval_seq`
--

DROP TABLE IF EXISTS `vtiger_reminder_interval_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_reminder_interval_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_reminder_interval_seq`
--

LOCK TABLES `vtiger_reminder_interval_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_reminder_interval_seq` DISABLE KEYS */;
INSERT INTO `vtiger_reminder_interval_seq` VALUES (8);
/*!40000 ALTER TABLE `vtiger_reminder_interval_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_report`
--

DROP TABLE IF EXISTS `vtiger_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_report` (
  `reportid` int(19) NOT NULL,
  `folderid` int(19) NOT NULL,
  `reportname` varchar(100) DEFAULT '',
  `description` varchar(250) DEFAULT '',
  `reporttype` varchar(50) DEFAULT '',
  `queryid` int(19) NOT NULL DEFAULT '0',
  `state` varchar(50) DEFAULT 'SAVED',
  `customizable` int(1) DEFAULT '1',
  `category` int(11) DEFAULT '1',
  `owner` int(11) DEFAULT '1',
  `sharingtype` varchar(200) DEFAULT 'Private',
  PRIMARY KEY (`reportid`),
  KEY `report_queryid_idx` (`queryid`),
  KEY `report_folderid_idx` (`folderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_report`
--

LOCK TABLES `vtiger_report` WRITE;
/*!40000 ALTER TABLE `vtiger_report` DISABLE KEYS */;
INSERT INTO `vtiger_report` VALUES (1,1,'Contacts by Accounts','Contacts related to Accounts','tabular',1,'CUSTOM',1,1,1,'Public'),(2,1,'Contacts without Accounts','Contacts not related to Accounts','tabular',2,'CUSTOM',1,1,1,'Public'),(3,1,'Contacts by Potentials','Contacts related to Potentials','tabular',3,'CUSTOM',1,1,1,'Public'),(4,2,'Lead by Source','Lead by Source','summary',4,'CUSTOM',1,1,1,'Public'),(5,2,'Lead Status Report','Lead Status Report','summary',5,'CUSTOM',1,1,1,'Public'),(6,3,'Potential Pipeline','Potential Pipeline','summary',6,'CUSTOM',1,1,1,'Public'),(7,3,'Closed Potentials','Potential that have Won','tabular',7,'CUSTOM',1,1,1,'Public'),(8,4,'Last Month Activities','Last Month Activities','tabular',8,'CUSTOM',1,1,1,'Public'),(9,4,'This Month Activities','This Month Activities','tabular',9,'CUSTOM',1,1,1,'Public'),(10,5,'Tickets by Products','Tickets related to Products','tabular',10,'CUSTOM',1,1,1,'Public'),(11,5,'Tickets by Priority','Tickets by Priority','summary',11,'CUSTOM',1,1,1,'Public'),(12,5,'Open Tickets','Tickets that are Open','tabular',12,'CUSTOM',1,1,1,'Public'),(13,6,'Product Details','Product Detailed Report','tabular',13,'CUSTOM',1,1,1,'Public'),(14,6,'Products by Contacts','Products related to Contacts','tabular',14,'CUSTOM',1,1,1,'Public'),(15,7,'Open Quotes','Quotes that are Open','tabular',15,'CUSTOM',1,1,1,'Public'),(16,7,'Quotes Detailed Report','Quotes Detailed Report','tabular',16,'CUSTOM',1,1,1,'Public'),(17,8,'PurchaseOrder by Contacts','PurchaseOrder related to Contacts','tabular',17,'CUSTOM',1,1,1,'Public'),(18,8,'PurchaseOrder Detailed Report','PurchaseOrder Detailed Report','tabular',18,'CUSTOM',1,1,1,'Public'),(19,9,'Invoice Detailed Report','Invoice Detailed Report','tabular',19,'CUSTOM',1,1,1,'Public'),(20,10,'SalesOrder Detailed Report','SalesOrder Detailed Report','tabular',20,'CUSTOM',1,1,1,'Public'),(21,11,'Campaign Expectations and Actuals','Campaign Expectations and Actuals','tabular',21,'CUSTOM',1,1,1,'Public'),(22,12,'Contacts Email Report','Emails sent to Contacts','tabular',22,'CUSTOM',1,1,1,'Public'),(23,12,'Accounts Email Report','Emails sent to Organizations','tabular',23,'CUSTOM',1,1,1,'Public'),(24,12,'Leads Email Report','Emails sent to Leads','tabular',24,'CUSTOM',1,1,1,'Public'),(25,12,'Vendors Email Report','Emails sent to Vendors','tabular',25,'CUSTOM',1,1,1,'Public');
/*!40000 ALTER TABLE `vtiger_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reportdatefilter`
--

DROP TABLE IF EXISTS `vtiger_reportdatefilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_reportdatefilter` (
  `datefilterid` int(19) NOT NULL,
  `datecolumnname` varchar(250) DEFAULT '',
  `datefilter` varchar(250) DEFAULT '',
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  PRIMARY KEY (`datefilterid`),
  KEY `reportdatefilter_datefilterid_idx` (`datefilterid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_reportdatefilter`
--

LOCK TABLES `vtiger_reportdatefilter` WRITE;
/*!40000 ALTER TABLE `vtiger_reportdatefilter` DISABLE KEYS */;
INSERT INTO `vtiger_reportdatefilter` VALUES (8,'vtiger_crmentity:modifiedtime:modifiedtime:Calendar_Modified_Time','lastmonth','2005-05-01','2005-05-31'),(9,'vtiger_crmentity:modifiedtime:modifiedtime:Calendar_Modified_Time','thismonth','2005-06-01','2005-06-30');
/*!40000 ALTER TABLE `vtiger_reportdatefilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reportfilters`
--

DROP TABLE IF EXISTS `vtiger_reportfilters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_reportfilters` (
  `filterid` int(19) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_reportfilters`
--

LOCK TABLES `vtiger_reportfilters` WRITE;
/*!40000 ALTER TABLE `vtiger_reportfilters` DISABLE KEYS */;
INSERT INTO `vtiger_reportfilters` VALUES (1,'Private'),(2,'Public'),(3,'Shared');
/*!40000 ALTER TABLE `vtiger_reportfilters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reportfolder`
--

DROP TABLE IF EXISTS `vtiger_reportfolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_reportfolder` (
  `folderid` int(19) NOT NULL AUTO_INCREMENT,
  `foldername` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(250) DEFAULT '',
  `state` varchar(50) DEFAULT 'SAVED',
  PRIMARY KEY (`folderid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_reportfolder`
--

LOCK TABLES `vtiger_reportfolder` WRITE;
/*!40000 ALTER TABLE `vtiger_reportfolder` DISABLE KEYS */;
INSERT INTO `vtiger_reportfolder` VALUES (1,'Account and Contact Reports','Account and Contact Reports','SAVED'),(2,'Lead Reports','Lead Reports','SAVED'),(3,'Potential Reports','Potential Reports','SAVED'),(4,'Activity Reports','Activity Reports','SAVED'),(5,'HelpDesk Reports','HelpDesk Reports','SAVED'),(6,'Product Reports','Product Reports','SAVED'),(7,'Quote Reports','Quote Reports','SAVED'),(8,'PurchaseOrder Reports','PurchaseOrder Reports','SAVED'),(9,'Invoice Reports','Invoice Reports','SAVED'),(10,'SalesOrder Reports','SalesOrder Reports','SAVED'),(11,'Campaign Reports','Campaign Reports','SAVED'),(12,'Email Reports','Email Reports','SAVED');
/*!40000 ALTER TABLE `vtiger_reportfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reportgroupbycolumn`
--

DROP TABLE IF EXISTS `vtiger_reportgroupbycolumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_reportgroupbycolumn` (
  `reportid` int(19) DEFAULT NULL,
  `sortid` int(19) DEFAULT NULL,
  `sortcolname` varchar(250) DEFAULT NULL,
  `dategroupbycriteria` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_reportgroupbycolumn`
--

LOCK TABLES `vtiger_reportgroupbycolumn` WRITE;
/*!40000 ALTER TABLE `vtiger_reportgroupbycolumn` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_reportgroupbycolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reportmodules`
--

DROP TABLE IF EXISTS `vtiger_reportmodules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_reportmodules` (
  `reportmodulesid` int(19) NOT NULL,
  `primarymodule` varchar(50) NOT NULL DEFAULT '',
  `secondarymodules` varchar(250) DEFAULT '',
  PRIMARY KEY (`reportmodulesid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_reportmodules`
--

LOCK TABLES `vtiger_reportmodules` WRITE;
/*!40000 ALTER TABLE `vtiger_reportmodules` DISABLE KEYS */;
INSERT INTO `vtiger_reportmodules` VALUES (1,'Contacts','Accounts'),(2,'Contacts','Accounts'),(3,'Contacts','Potentials'),(4,'Leads',''),(5,'Leads',''),(6,'Potentials',''),(7,'Potentials',''),(8,'Calendar',''),(9,'Calendar',''),(10,'HelpDesk','Products'),(11,'HelpDesk',''),(12,'HelpDesk',''),(13,'Products',''),(14,'Products','Contacts'),(15,'Quotes',''),(16,'Quotes',''),(17,'PurchaseOrder','Contacts'),(18,'PurchaseOrder',''),(19,'Invoice',''),(20,'SalesOrder',''),(21,'Campaigns',''),(22,'Contacts','Emails'),(23,'Accounts','Emails'),(24,'Leads','Emails'),(25,'Vendors','Emails');
/*!40000 ALTER TABLE `vtiger_reportmodules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reportsharing`
--

DROP TABLE IF EXISTS `vtiger_reportsharing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_reportsharing` (
  `reportid` int(19) NOT NULL,
  `shareid` int(19) NOT NULL,
  `setype` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_reportsharing`
--

LOCK TABLES `vtiger_reportsharing` WRITE;
/*!40000 ALTER TABLE `vtiger_reportsharing` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_reportsharing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reportsortcol`
--

DROP TABLE IF EXISTS `vtiger_reportsortcol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_reportsortcol` (
  `sortcolid` int(19) NOT NULL,
  `reportid` int(19) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `sortorder` varchar(250) DEFAULT 'Asc',
  PRIMARY KEY (`sortcolid`,`reportid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_reportsortcol`
--

LOCK TABLES `vtiger_reportsortcol` WRITE;
/*!40000 ALTER TABLE `vtiger_reportsortcol` DISABLE KEYS */;
INSERT INTO `vtiger_reportsortcol` VALUES (1,4,'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V','Ascending'),(1,5,'vtiger_leaddetails:leadstatus:Leads_Lead_Status:leadstatus:V','Ascending'),(1,6,'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V','Ascending'),(1,11,'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V','Ascending');
/*!40000 ALTER TABLE `vtiger_reportsortcol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reportsummary`
--

DROP TABLE IF EXISTS `vtiger_reportsummary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_reportsummary` (
  `reportsummaryid` int(19) NOT NULL,
  `summarytype` int(19) NOT NULL,
  `columnname` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`reportsummaryid`,`summarytype`,`columnname`),
  KEY `reportsummary_reportsummaryid_idx` (`reportsummaryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_reportsummary`
--

LOCK TABLES `vtiger_reportsummary` WRITE;
/*!40000 ALTER TABLE `vtiger_reportsummary` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_reportsummary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_reporttype`
--

DROP TABLE IF EXISTS `vtiger_reporttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_reporttype` (
  `reportid` int(10) NOT NULL,
  `data` text,
  PRIMARY KEY (`reportid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_reporttype`
--

LOCK TABLES `vtiger_reporttype` WRITE;
/*!40000 ALTER TABLE `vtiger_reporttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_reporttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_role`
--

DROP TABLE IF EXISTS `vtiger_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_role` (
  `roleid` varchar(255) NOT NULL,
  `rolename` varchar(200) DEFAULT NULL,
  `parentrole` varchar(255) DEFAULT NULL,
  `depth` int(19) DEFAULT NULL,
  `allowassignedrecordsto` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_role`
--

LOCK TABLES `vtiger_role` WRITE;
/*!40000 ALTER TABLE `vtiger_role` DISABLE KEYS */;
INSERT INTO `vtiger_role` VALUES ('H1','Organization','H1',0,1),('H10','X-Lam (COO)','H1::H2::H10',2,1),('H11','Staff','H1::H2::H10::H11',3,2),('H12','EuroBrico (COO)','H1::H2::H12',2,1),('H13','Staff EuroBrico','H1::H2::H12::H13',3,1),('H14','Resp. Punto Vendita','H1::H2::H12::H13::H14',4,1),('H15','Addetti Punto Vendita','H1::H2::H12::H13::H14::H15',5,1),('H2','CEO','H1::H2',1,1),('H4','Sales Manager','H1::H2::H10::H4',3,1),('H5','Sales Person','H1::H2::H10::H4::H5',4,1),('H6','Technical Manager','H1::H2::H10::H6',3,1),('H7','Technical Person','H1::H2::H10::H6::H7',4,2),('H8','Agent (ext)','H1::H2::H10::H4::H5::H8',5,3),('H9','Consultant (ext)','H1::H2::H10::H6::H7::H9',5,3);
/*!40000 ALTER TABLE `vtiger_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_role2picklist`
--

DROP TABLE IF EXISTS `vtiger_role2picklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_role2picklist` (
  `roleid` varchar(255) NOT NULL,
  `picklistvalueid` int(11) NOT NULL,
  `picklistid` int(11) NOT NULL,
  `sortid` int(11) DEFAULT NULL,
  PRIMARY KEY (`roleid`,`picklistvalueid`,`picklistid`),
  KEY `role2picklist_roleid_picklistid_idx` (`roleid`,`picklistid`,`picklistvalueid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_role2picklist`
--

LOCK TABLES `vtiger_role2picklist` WRITE;
/*!40000 ALTER TABLE `vtiger_role2picklist` DISABLE KEYS */;
INSERT INTO `vtiger_role2picklist` VALUES ('H1',1,1,0),('H1',2,1,1),('H1',3,1,2),('H1',4,1,3),('H1',5,1,4),('H1',6,1,5),('H1',7,1,6),('H1',8,1,7),('H1',9,1,8),('H1',10,1,9),('H1',11,1,10),('H1',12,2,0),('H1',13,2,1),('H1',14,3,0),('H1',15,3,1),('H1',16,3,2),('H1',17,3,3),('H1',18,3,4),('H1',19,3,5),('H1',20,4,0),('H1',21,4,1),('H1',22,4,2),('H1',23,4,3),('H1',24,4,4),('H1',25,4,5),('H1',26,4,6),('H1',27,4,7),('H1',28,4,8),('H1',29,4,9),('H1',30,4,10),('H1',31,4,11),('H1',32,4,12),('H1',33,5,0),('H1',34,5,1),('H1',35,5,2),('H1',36,5,3),('H1',37,5,4),('H1',38,6,0),('H1',39,6,1),('H1',40,6,2),('H1',41,7,0),('H1',42,7,1),('H1',43,7,2),('H1',44,7,3),('H1',45,7,4),('H1',46,8,0),('H1',47,9,0),('H1',48,9,1),('H1',49,9,2),('H1',50,9,3),('H1',51,10,0),('H1',52,10,1),('H1',53,10,2),('H1',54,10,3),('H1',55,10,4),('H1',56,10,5),('H1',57,10,6),('H1',58,10,7),('H1',59,10,8),('H1',60,11,0),('H1',61,11,1),('H1',62,11,2),('H1',63,11,3),('H1',64,11,4),('H1',65,11,5),('H1',66,11,6),('H1',67,11,7),('H1',68,11,8),('H1',69,11,9),('H1',70,11,10),('H1',71,11,11),('H1',72,11,12),('H1',73,11,13),('H1',74,11,14),('H1',75,11,15),('H1',76,11,16),('H1',77,11,17),('H1',78,11,18),('H1',79,11,19),('H1',80,11,20),('H1',81,11,21),('H1',82,11,22),('H1',83,11,23),('H1',84,11,24),('H1',85,11,25),('H1',86,11,26),('H1',87,11,27),('H1',88,11,28),('H1',89,11,29),('H1',90,11,30),('H1',91,11,31),('H1',92,12,0),('H1',93,12,1),('H1',94,12,2),('H1',95,12,3),('H1',96,12,4),('H1',97,12,5),('H1',98,13,0),('H1',99,13,1),('H1',100,13,2),('H1',101,13,3),('H1',102,13,4),('H1',103,13,5),('H1',104,13,6),('H1',105,13,7),('H1',106,13,8),('H1',107,13,9),('H1',108,13,10),('H1',109,13,11),('H1',110,13,12),('H1',111,14,0),('H1',112,14,1),('H1',113,14,2),('H1',114,14,3),('H1',115,14,4),('H1',116,14,5),('H1',117,14,6),('H1',118,14,7),('H1',119,14,8),('H1',120,14,9),('H1',121,14,10),('H1',122,14,11),('H1',123,15,0),('H1',124,15,1),('H1',125,15,2),('H1',126,15,3),('H1',127,16,0),('H1',128,16,1),('H1',129,16,2),('H1',130,17,0),('H1',131,17,1),('H1',132,17,2),('H1',133,17,3),('H1',134,17,4),('H1',135,18,0),('H1',136,18,1),('H1',137,18,2),('H1',138,18,3),('H1',139,19,0),('H1',140,19,1),('H1',141,19,2),('H1',142,19,3),('H1',143,19,4),('H1',144,20,0),('H1',145,20,1),('H1',146,20,2),('H1',147,20,3),('H1',148,20,4),('H1',149,20,5),('H1',150,21,0),('H1',151,21,1),('H1',152,21,2),('H1',153,21,3),('H1',154,21,4),('H1',155,21,5),('H1',156,21,6),('H1',157,21,7),('H1',158,21,8),('H1',159,21,9),('H1',160,22,0),('H1',161,22,1),('H1',162,22,2),('H1',163,22,3),('H1',164,22,4),('H1',165,22,5),('H1',166,23,0),('H1',167,23,1),('H1',168,23,2),('H1',169,23,3),('H1',170,24,0),('H1',171,24,1),('H1',172,24,2),('H1',173,25,0),('H1',174,25,1),('H1',175,25,2),('H1',176,25,3),('H1',177,25,4),('H1',178,25,5),('H1',179,26,0),('H1',180,26,1),('H1',181,26,2),('H1',182,27,0),('H1',183,27,1),('H1',184,27,2),('H1',185,27,3),('H1',186,28,0),('H1',187,28,1),('H1',188,28,2),('H1',189,28,3),('H1',190,29,0),('H1',191,29,1),('H1',192,29,2),('H1',193,29,3),('H1',194,30,0),('H1',195,30,1),('H1',196,30,2),('H1',197,30,3),('H1',198,30,4),('H1',199,30,5),('H1',200,30,6),('H1',201,30,7),('H1',202,30,8),('H1',203,30,9),('H1',204,30,10),('H1',205,30,11),('H1',206,30,12),('H1',207,30,13),('H1',208,30,14),('H1',209,30,15),('H1',210,31,1),('H1',211,31,2),('H1',212,31,3),('H1',213,32,1),('H1',214,32,2),('H1',215,32,3),('H1',216,32,4),('H1',217,32,5),('H1',218,32,6),('H1',219,33,1),('H1',220,33,2),('H1',221,33,3),('H1',222,33,4),('H1',223,34,1),('H1',224,34,2),('H1',225,34,3),('H1',226,34,4),('H1',227,34,5),('H1',228,34,6),('H1',229,35,1),('H1',230,35,2),('H1',231,35,3),('H1',232,36,1),('H1',233,36,2),('H1',234,36,3),('H1',235,37,1),('H1',236,37,2),('H1',237,37,3),('H1',238,37,4),('H1',239,38,1),('H1',240,38,2),('H1',241,38,3),('H1',242,38,4),('H1',243,39,1),('H1',244,39,2),('H1',245,39,3),('H1',246,39,4),('H1',247,40,1),('H1',248,40,2),('H1',249,40,3),('H1',250,40,4),('H1',251,40,5),('H1',252,40,6),('H1',253,40,7),('H1',254,40,8),('H1',255,40,9),('H1',256,40,10),('H1',257,40,11),('H1',258,41,1),('H1',259,41,2),('H1',260,41,3),('H1',261,41,4),('H1',262,41,5),('H1',263,41,6),('H1',264,41,7),('H1',265,41,8),('H1',266,41,9),('H1',267,42,1),('H1',268,42,2),('H1',269,42,3),('H1',270,42,4),('H1',271,43,1),('H1',272,43,2),('H1',273,43,3),('H1',274,43,4),('H1',275,44,1),('H1',276,44,2),('H1',277,44,3),('H1',278,44,4),('H1',279,44,5),('H1',280,44,6),('H1',281,44,7),('H1',282,44,8),('H1',283,44,9),('H1',284,44,10),('H1',285,44,11),('H1',286,45,1),('H1',287,45,2),('H1',288,12,1),('H1',289,46,1),('H1',290,46,2),('H1',291,46,3),('H1',292,46,4),('H1',293,46,5),('H1',294,46,6),('H1',295,2,1),('H1',296,47,1),('H1',297,47,2),('H1',298,47,3),('H1',299,48,1),('H1',300,48,2),('H10',1,1,0),('H10',2,1,1),('H10',3,1,2),('H10',4,1,3),('H10',5,1,4),('H10',6,1,5),('H10',7,1,6),('H10',8,1,7),('H10',9,1,8),('H10',10,1,9),('H10',11,1,10),('H10',12,2,0),('H10',13,2,1),('H10',14,3,0),('H10',15,3,1),('H10',16,3,2),('H10',17,3,3),('H10',18,3,4),('H10',19,3,5),('H10',20,4,0),('H10',21,4,1),('H10',22,4,2),('H10',23,4,3),('H10',24,4,4),('H10',25,4,5),('H10',26,4,6),('H10',27,4,7),('H10',28,4,8),('H10',29,4,9),('H10',30,4,10),('H10',31,4,11),('H10',32,4,12),('H10',33,5,0),('H10',34,5,1),('H10',35,5,2),('H10',36,5,3),('H10',37,5,4),('H10',38,6,0),('H10',39,6,1),('H10',40,6,2),('H10',41,7,0),('H10',42,7,1),('H10',43,7,2),('H10',44,7,3),('H10',45,7,4),('H10',46,8,0),('H10',47,9,0),('H10',48,9,1),('H10',49,9,2),('H10',50,9,3),('H10',51,10,0),('H10',52,10,1),('H10',53,10,2),('H10',54,10,3),('H10',55,10,4),('H10',56,10,5),('H10',57,10,6),('H10',58,10,7),('H10',59,10,8),('H10',60,11,0),('H10',61,11,1),('H10',62,11,2),('H10',63,11,3),('H10',64,11,4),('H10',65,11,5),('H10',66,11,6),('H10',67,11,7),('H10',68,11,8),('H10',69,11,9),('H10',70,11,10),('H10',71,11,11),('H10',72,11,12),('H10',73,11,13),('H10',74,11,14),('H10',75,11,15),('H10',76,11,16),('H10',77,11,17),('H10',78,11,18),('H10',79,11,19),('H10',80,11,20),('H10',81,11,21),('H10',82,11,22),('H10',83,11,23),('H10',84,11,24),('H10',85,11,25),('H10',86,11,26),('H10',87,11,27),('H10',88,11,28),('H10',89,11,29),('H10',90,11,30),('H10',91,11,31),('H10',92,12,0),('H10',93,12,1),('H10',94,12,2),('H10',95,12,3),('H10',96,12,4),('H10',97,12,5),('H10',98,13,0),('H10',99,13,1),('H10',100,13,2),('H10',101,13,3),('H10',102,13,4),('H10',103,13,5),('H10',104,13,6),('H10',105,13,7),('H10',106,13,8),('H10',107,13,9),('H10',108,13,10),('H10',109,13,11),('H10',110,13,12),('H10',111,14,0),('H10',112,14,1),('H10',113,14,2),('H10',114,14,3),('H10',115,14,4),('H10',116,14,5),('H10',117,14,6),('H10',118,14,7),('H10',119,14,8),('H10',120,14,9),('H10',121,14,10),('H10',122,14,11),('H10',123,15,0),('H10',124,15,1),('H10',125,15,2),('H10',126,15,3),('H10',127,16,0),('H10',128,16,1),('H10',129,16,2),('H10',130,17,0),('H10',131,17,1),('H10',132,17,2),('H10',133,17,3),('H10',134,17,4),('H10',135,18,0),('H10',136,18,1),('H10',137,18,2),('H10',138,18,3),('H10',139,19,0),('H10',140,19,1),('H10',141,19,2),('H10',142,19,3),('H10',143,19,4),('H10',144,20,0),('H10',145,20,1),('H10',146,20,2),('H10',147,20,3),('H10',148,20,4),('H10',149,20,5),('H10',150,21,0),('H10',151,21,1),('H10',152,21,2),('H10',153,21,3),('H10',154,21,4),('H10',155,21,5),('H10',156,21,6),('H10',157,21,7),('H10',158,21,8),('H10',159,21,9),('H10',160,22,0),('H10',161,22,1),('H10',162,22,2),('H10',163,22,3),('H10',164,22,4),('H10',165,22,5),('H10',166,23,0),('H10',167,23,1),('H10',168,23,2),('H10',169,23,3),('H10',170,24,0),('H10',171,24,1),('H10',172,24,2),('H10',173,25,0),('H10',174,25,1),('H10',175,25,2),('H10',176,25,3),('H10',177,25,4),('H10',178,25,5),('H10',179,26,0),('H10',180,26,1),('H10',181,26,2),('H10',182,27,0),('H10',183,27,1),('H10',184,27,2),('H10',185,27,3),('H10',186,28,0),('H10',187,28,1),('H10',188,28,2),('H10',189,28,3),('H10',190,29,0),('H10',191,29,1),('H10',192,29,2),('H10',193,29,3),('H10',194,30,0),('H10',195,30,1),('H10',196,30,2),('H10',197,30,3),('H10',198,30,4),('H10',199,30,5),('H10',200,30,6),('H10',201,30,7),('H10',202,30,8),('H10',203,30,9),('H10',204,30,10),('H10',205,30,11),('H10',206,30,12),('H10',207,30,13),('H10',208,30,14),('H10',209,30,15),('H10',210,31,1),('H10',211,31,2),('H10',212,31,3),('H10',213,32,1),('H10',214,32,2),('H10',215,32,3),('H10',216,32,4),('H10',217,32,5),('H10',218,32,6),('H10',219,33,1),('H10',220,33,2),('H10',221,33,3),('H10',222,33,4),('H10',223,34,1),('H10',224,34,2),('H10',225,34,3),('H10',226,34,4),('H10',227,34,5),('H10',228,34,6),('H10',229,35,1),('H10',230,35,2),('H10',231,35,3),('H10',232,36,1),('H10',233,36,2),('H10',234,36,3),('H10',235,37,1),('H10',236,37,2),('H10',237,37,3),('H10',238,37,4),('H10',239,38,1),('H10',240,38,2),('H10',241,38,3),('H10',242,38,4),('H10',243,39,1),('H10',244,39,2),('H10',245,39,3),('H10',246,39,4),('H10',247,40,1),('H10',248,40,2),('H10',249,40,3),('H10',250,40,4),('H10',251,40,5),('H10',252,40,6),('H10',253,40,7),('H10',254,40,8),('H10',255,40,9),('H10',256,40,10),('H10',257,40,11),('H10',258,41,1),('H10',259,41,2),('H10',260,41,3),('H10',261,41,4),('H10',262,41,5),('H10',263,41,6),('H10',264,41,7),('H10',265,41,8),('H10',266,41,9),('H10',267,42,1),('H10',268,42,2),('H10',269,42,3),('H10',270,42,4),('H10',271,43,1),('H10',272,43,2),('H10',273,43,3),('H10',274,43,4),('H10',275,44,1),('H10',276,44,2),('H10',277,44,3),('H10',278,44,4),('H10',279,44,5),('H10',280,44,6),('H10',281,44,7),('H10',282,44,8),('H10',283,44,9),('H10',284,44,10),('H10',285,44,11),('H10',286,45,1),('H10',287,45,2),('H10',288,12,1),('H10',289,46,1),('H10',290,46,2),('H10',291,46,3),('H10',292,46,4),('H10',293,46,5),('H10',294,46,6),('H10',295,2,1),('H10',296,47,1),('H10',297,47,2),('H10',298,47,3),('H10',299,48,1),('H10',300,48,2),('H11',1,1,0),('H11',2,1,1),('H11',3,1,2),('H11',4,1,3),('H11',5,1,4),('H11',6,1,5),('H11',7,1,6),('H11',8,1,7),('H11',9,1,8),('H11',10,1,9),('H11',11,1,10),('H11',12,2,0),('H11',13,2,1),('H11',14,3,0),('H11',15,3,1),('H11',16,3,2),('H11',17,3,3),('H11',18,3,4),('H11',19,3,5),('H11',20,4,0),('H11',21,4,1),('H11',22,4,2),('H11',23,4,3),('H11',24,4,4),('H11',25,4,5),('H11',26,4,6),('H11',27,4,7),('H11',28,4,8),('H11',29,4,9),('H11',30,4,10),('H11',31,4,11),('H11',32,4,12),('H11',33,5,0),('H11',34,5,1),('H11',35,5,2),('H11',36,5,3),('H11',37,5,4),('H11',38,6,0),('H11',39,6,1),('H11',40,6,2),('H11',41,7,0),('H11',42,7,1),('H11',43,7,2),('H11',44,7,3),('H11',45,7,4),('H11',46,8,0),('H11',47,9,0),('H11',48,9,1),('H11',49,9,2),('H11',50,9,3),('H11',51,10,0),('H11',52,10,1),('H11',53,10,2),('H11',54,10,3),('H11',55,10,4),('H11',56,10,5),('H11',57,10,6),('H11',58,10,7),('H11',59,10,8),('H11',60,11,0),('H11',61,11,1),('H11',62,11,2),('H11',63,11,3),('H11',64,11,4),('H11',65,11,5),('H11',66,11,6),('H11',67,11,7),('H11',68,11,8),('H11',69,11,9),('H11',70,11,10),('H11',71,11,11),('H11',72,11,12),('H11',73,11,13),('H11',74,11,14),('H11',75,11,15),('H11',76,11,16),('H11',77,11,17),('H11',78,11,18),('H11',79,11,19),('H11',80,11,20),('H11',81,11,21),('H11',82,11,22),('H11',83,11,23),('H11',84,11,24),('H11',85,11,25),('H11',86,11,26),('H11',87,11,27),('H11',88,11,28),('H11',89,11,29),('H11',90,11,30),('H11',91,11,31),('H11',92,12,0),('H11',93,12,1),('H11',94,12,2),('H11',95,12,3),('H11',96,12,4),('H11',97,12,5),('H11',98,13,0),('H11',99,13,1),('H11',100,13,2),('H11',101,13,3),('H11',102,13,4),('H11',103,13,5),('H11',104,13,6),('H11',105,13,7),('H11',106,13,8),('H11',107,13,9),('H11',108,13,10),('H11',109,13,11),('H11',110,13,12),('H11',111,14,0),('H11',112,14,1),('H11',113,14,2),('H11',114,14,3),('H11',115,14,4),('H11',116,14,5),('H11',117,14,6),('H11',118,14,7),('H11',119,14,8),('H11',120,14,9),('H11',121,14,10),('H11',122,14,11),('H11',123,15,0),('H11',124,15,1),('H11',125,15,2),('H11',126,15,3),('H11',127,16,0),('H11',128,16,1),('H11',129,16,2),('H11',130,17,0),('H11',131,17,1),('H11',132,17,2),('H11',133,17,3),('H11',134,17,4),('H11',135,18,0),('H11',136,18,1),('H11',137,18,2),('H11',138,18,3),('H11',139,19,0),('H11',140,19,1),('H11',141,19,2),('H11',142,19,3),('H11',143,19,4),('H11',144,20,0),('H11',145,20,1),('H11',146,20,2),('H11',147,20,3),('H11',148,20,4),('H11',149,20,5),('H11',150,21,0),('H11',151,21,1),('H11',152,21,2),('H11',153,21,3),('H11',154,21,4),('H11',155,21,5),('H11',156,21,6),('H11',157,21,7),('H11',158,21,8),('H11',159,21,9),('H11',160,22,0),('H11',161,22,1),('H11',162,22,2),('H11',163,22,3),('H11',164,22,4),('H11',165,22,5),('H11',166,23,0),('H11',167,23,1),('H11',168,23,2),('H11',169,23,3),('H11',170,24,0),('H11',171,24,1),('H11',172,24,2),('H11',173,25,0),('H11',174,25,1),('H11',175,25,2),('H11',176,25,3),('H11',177,25,4),('H11',178,25,5),('H11',179,26,0),('H11',180,26,1),('H11',181,26,2),('H11',182,27,0),('H11',183,27,1),('H11',184,27,2),('H11',185,27,3),('H11',186,28,0),('H11',187,28,1),('H11',188,28,2),('H11',189,28,3),('H11',190,29,0),('H11',191,29,1),('H11',192,29,2),('H11',193,29,3),('H11',194,30,0),('H11',195,30,1),('H11',196,30,2),('H11',197,30,3),('H11',198,30,4),('H11',199,30,5),('H11',200,30,6),('H11',201,30,7),('H11',202,30,8),('H11',203,30,9),('H11',204,30,10),('H11',205,30,11),('H11',206,30,12),('H11',207,30,13),('H11',208,30,14),('H11',209,30,15),('H11',210,31,1),('H11',211,31,2),('H11',212,31,3),('H11',213,32,1),('H11',214,32,2),('H11',215,32,3),('H11',216,32,4),('H11',217,32,5),('H11',218,32,6),('H11',219,33,1),('H11',220,33,2),('H11',221,33,3),('H11',222,33,4),('H11',223,34,1),('H11',224,34,2),('H11',225,34,3),('H11',226,34,4),('H11',227,34,5),('H11',228,34,6),('H11',229,35,1),('H11',230,35,2),('H11',231,35,3),('H11',232,36,1),('H11',233,36,2),('H11',234,36,3),('H11',235,37,1),('H11',236,37,2),('H11',237,37,3),('H11',238,37,4),('H11',239,38,1),('H11',240,38,2),('H11',241,38,3),('H11',242,38,4),('H11',243,39,1),('H11',244,39,2),('H11',245,39,3),('H11',246,39,4),('H11',247,40,1),('H11',248,40,2),('H11',249,40,3),('H11',250,40,4),('H11',251,40,5),('H11',252,40,6),('H11',253,40,7),('H11',254,40,8),('H11',255,40,9),('H11',256,40,10),('H11',257,40,11),('H11',258,41,1),('H11',259,41,2),('H11',260,41,3),('H11',261,41,4),('H11',262,41,5),('H11',263,41,6),('H11',264,41,7),('H11',265,41,8),('H11',266,41,9),('H11',267,42,1),('H11',268,42,2),('H11',269,42,3),('H11',270,42,4),('H11',271,43,1),('H11',272,43,2),('H11',273,43,3),('H11',274,43,4),('H11',275,44,1),('H11',276,44,2),('H11',277,44,3),('H11',278,44,4),('H11',279,44,5),('H11',280,44,6),('H11',281,44,7),('H11',282,44,8),('H11',283,44,9),('H11',284,44,10),('H11',285,44,11),('H11',286,45,1),('H11',287,45,2),('H11',288,12,1),('H11',289,46,1),('H11',290,46,2),('H11',291,46,3),('H11',292,46,4),('H11',293,46,5),('H11',294,46,6),('H11',295,2,1),('H11',296,47,1),('H11',297,47,2),('H11',298,47,3),('H11',299,48,1),('H11',300,48,2),('H12',1,1,0),('H12',2,1,1),('H12',3,1,2),('H12',4,1,3),('H12',5,1,4),('H12',6,1,5),('H12',7,1,6),('H12',8,1,7),('H12',9,1,8),('H12',10,1,9),('H12',11,1,10),('H12',12,2,0),('H12',13,2,1),('H12',14,3,0),('H12',15,3,1),('H12',16,3,2),('H12',17,3,3),('H12',18,3,4),('H12',19,3,5),('H12',20,4,0),('H12',21,4,1),('H12',22,4,2),('H12',23,4,3),('H12',24,4,4),('H12',25,4,5),('H12',26,4,6),('H12',27,4,7),('H12',28,4,8),('H12',29,4,9),('H12',30,4,10),('H12',31,4,11),('H12',32,4,12),('H12',33,5,0),('H12',34,5,1),('H12',35,5,2),('H12',36,5,3),('H12',37,5,4),('H12',38,6,0),('H12',39,6,1),('H12',40,6,2),('H12',41,7,0),('H12',42,7,1),('H12',43,7,2),('H12',44,7,3),('H12',45,7,4),('H12',46,8,0),('H12',47,9,0),('H12',48,9,1),('H12',49,9,2),('H12',50,9,3),('H12',51,10,0),('H12',52,10,1),('H12',53,10,2),('H12',54,10,3),('H12',55,10,4),('H12',56,10,5),('H12',57,10,6),('H12',58,10,7),('H12',59,10,8),('H12',60,11,0),('H12',61,11,1),('H12',62,11,2),('H12',63,11,3),('H12',64,11,4),('H12',65,11,5),('H12',66,11,6),('H12',67,11,7),('H12',68,11,8),('H12',69,11,9),('H12',70,11,10),('H12',71,11,11),('H12',72,11,12),('H12',73,11,13),('H12',74,11,14),('H12',75,11,15),('H12',76,11,16),('H12',77,11,17),('H12',78,11,18),('H12',79,11,19),('H12',80,11,20),('H12',81,11,21),('H12',82,11,22),('H12',83,11,23),('H12',84,11,24),('H12',85,11,25),('H12',86,11,26),('H12',87,11,27),('H12',88,11,28),('H12',89,11,29),('H12',90,11,30),('H12',91,11,31),('H12',92,12,0),('H12',93,12,1),('H12',94,12,2),('H12',95,12,3),('H12',96,12,4),('H12',97,12,5),('H12',98,13,0),('H12',99,13,1),('H12',100,13,2),('H12',101,13,3),('H12',102,13,4),('H12',103,13,5),('H12',104,13,6),('H12',105,13,7),('H12',106,13,8),('H12',107,13,9),('H12',108,13,10),('H12',109,13,11),('H12',110,13,12),('H12',111,14,0),('H12',112,14,1),('H12',113,14,2),('H12',114,14,3),('H12',115,14,4),('H12',116,14,5),('H12',117,14,6),('H12',118,14,7),('H12',119,14,8),('H12',120,14,9),('H12',121,14,10),('H12',122,14,11),('H12',123,15,0),('H12',124,15,1),('H12',125,15,2),('H12',126,15,3),('H12',127,16,0),('H12',128,16,1),('H12',129,16,2),('H12',130,17,0),('H12',131,17,1),('H12',132,17,2),('H12',133,17,3),('H12',134,17,4),('H12',135,18,0),('H12',136,18,1),('H12',137,18,2),('H12',138,18,3),('H12',139,19,0),('H12',140,19,1),('H12',141,19,2),('H12',142,19,3),('H12',143,19,4),('H12',144,20,0),('H12',145,20,1),('H12',146,20,2),('H12',147,20,3),('H12',148,20,4),('H12',149,20,5),('H12',150,21,0),('H12',151,21,1),('H12',152,21,2),('H12',153,21,3),('H12',154,21,4),('H12',155,21,5),('H12',156,21,6),('H12',157,21,7),('H12',158,21,8),('H12',159,21,9),('H12',160,22,0),('H12',161,22,1),('H12',162,22,2),('H12',163,22,3),('H12',164,22,4),('H12',165,22,5),('H12',166,23,0),('H12',167,23,1),('H12',168,23,2),('H12',169,23,3),('H12',170,24,0),('H12',171,24,1),('H12',172,24,2),('H12',173,25,0),('H12',174,25,1),('H12',175,25,2),('H12',176,25,3),('H12',177,25,4),('H12',178,25,5),('H12',179,26,0),('H12',180,26,1),('H12',181,26,2),('H12',182,27,0),('H12',183,27,1),('H12',184,27,2),('H12',185,27,3),('H12',186,28,0),('H12',187,28,1),('H12',188,28,2),('H12',189,28,3),('H12',190,29,0),('H12',191,29,1),('H12',192,29,2),('H12',193,29,3),('H12',194,30,0),('H12',195,30,1),('H12',196,30,2),('H12',197,30,3),('H12',198,30,4),('H12',199,30,5),('H12',200,30,6),('H12',201,30,7),('H12',202,30,8),('H12',203,30,9),('H12',204,30,10),('H12',205,30,11),('H12',206,30,12),('H12',207,30,13),('H12',208,30,14),('H12',209,30,15),('H12',210,31,1),('H12',211,31,2),('H12',212,31,3),('H12',213,32,1),('H12',214,32,2),('H12',215,32,3),('H12',216,32,4),('H12',217,32,5),('H12',218,32,6),('H12',219,33,1),('H12',220,33,2),('H12',221,33,3),('H12',222,33,4),('H12',223,34,1),('H12',224,34,2),('H12',225,34,3),('H12',226,34,4),('H12',227,34,5),('H12',228,34,6),('H12',229,35,1),('H12',230,35,2),('H12',231,35,3),('H12',232,36,1),('H12',233,36,2),('H12',234,36,3),('H12',235,37,1),('H12',236,37,2),('H12',237,37,3),('H12',238,37,4),('H12',239,38,1),('H12',240,38,2),('H12',241,38,3),('H12',242,38,4),('H12',243,39,1),('H12',244,39,2),('H12',245,39,3),('H12',246,39,4),('H12',247,40,1),('H12',248,40,2),('H12',249,40,3),('H12',250,40,4),('H12',251,40,5),('H12',252,40,6),('H12',253,40,7),('H12',254,40,8),('H12',255,40,9),('H12',256,40,10),('H12',257,40,11),('H12',258,41,1),('H12',259,41,2),('H12',260,41,3),('H12',261,41,4),('H12',262,41,5),('H12',263,41,6),('H12',264,41,7),('H12',265,41,8),('H12',266,41,9),('H12',267,42,1),('H12',268,42,2),('H12',269,42,3),('H12',270,42,4),('H12',271,43,1),('H12',272,43,2),('H12',273,43,3),('H12',274,43,4),('H12',275,44,1),('H12',276,44,2),('H12',277,44,3),('H12',278,44,4),('H12',279,44,5),('H12',280,44,6),('H12',281,44,7),('H12',282,44,8),('H12',283,44,9),('H12',284,44,10),('H12',285,44,11),('H12',286,45,1),('H12',287,45,2),('H12',288,12,1),('H12',289,46,1),('H12',290,46,2),('H12',291,46,3),('H12',292,46,4),('H12',293,46,5),('H12',294,46,6),('H12',295,2,1),('H12',296,47,1),('H12',297,47,2),('H12',298,47,3),('H12',299,48,1),('H12',300,48,2),('H13',1,1,0),('H13',2,1,1),('H13',3,1,2),('H13',4,1,3),('H13',5,1,4),('H13',6,1,5),('H13',7,1,6),('H13',8,1,7),('H13',9,1,8),('H13',10,1,9),('H13',11,1,10),('H13',12,2,0),('H13',13,2,1),('H13',14,3,0),('H13',15,3,1),('H13',16,3,2),('H13',17,3,3),('H13',18,3,4),('H13',19,3,5),('H13',20,4,0),('H13',21,4,1),('H13',22,4,2),('H13',23,4,3),('H13',24,4,4),('H13',25,4,5),('H13',26,4,6),('H13',27,4,7),('H13',28,4,8),('H13',29,4,9),('H13',30,4,10),('H13',31,4,11),('H13',32,4,12),('H13',33,5,0),('H13',34,5,1),('H13',35,5,2),('H13',36,5,3),('H13',37,5,4),('H13',38,6,0),('H13',39,6,1),('H13',40,6,2),('H13',41,7,0),('H13',42,7,1),('H13',43,7,2),('H13',44,7,3),('H13',45,7,4),('H13',46,8,0),('H13',47,9,0),('H13',48,9,1),('H13',49,9,2),('H13',50,9,3),('H13',51,10,0),('H13',52,10,1),('H13',53,10,2),('H13',54,10,3),('H13',55,10,4),('H13',56,10,5),('H13',57,10,6),('H13',58,10,7),('H13',59,10,8),('H13',60,11,0),('H13',61,11,1),('H13',62,11,2),('H13',63,11,3),('H13',64,11,4),('H13',65,11,5),('H13',66,11,6),('H13',67,11,7),('H13',68,11,8),('H13',69,11,9),('H13',70,11,10),('H13',71,11,11),('H13',72,11,12),('H13',73,11,13),('H13',74,11,14),('H13',75,11,15),('H13',76,11,16),('H13',77,11,17),('H13',78,11,18),('H13',79,11,19),('H13',80,11,20),('H13',81,11,21),('H13',82,11,22),('H13',83,11,23),('H13',84,11,24),('H13',85,11,25),('H13',86,11,26),('H13',87,11,27),('H13',88,11,28),('H13',89,11,29),('H13',90,11,30),('H13',91,11,31),('H13',92,12,0),('H13',93,12,1),('H13',94,12,2),('H13',95,12,3),('H13',96,12,4),('H13',97,12,5),('H13',98,13,0),('H13',99,13,1),('H13',100,13,2),('H13',101,13,3),('H13',102,13,4),('H13',103,13,5),('H13',104,13,6),('H13',105,13,7),('H13',106,13,8),('H13',107,13,9),('H13',108,13,10),('H13',109,13,11),('H13',110,13,12),('H13',111,14,0),('H13',112,14,1),('H13',113,14,2),('H13',114,14,3),('H13',115,14,4),('H13',116,14,5),('H13',117,14,6),('H13',118,14,7),('H13',119,14,8),('H13',120,14,9),('H13',121,14,10),('H13',122,14,11),('H13',123,15,0),('H13',124,15,1),('H13',125,15,2),('H13',126,15,3),('H13',127,16,0),('H13',128,16,1),('H13',129,16,2),('H13',130,17,0),('H13',131,17,1),('H13',132,17,2),('H13',133,17,3),('H13',134,17,4),('H13',135,18,0),('H13',136,18,1),('H13',137,18,2),('H13',138,18,3),('H13',139,19,0),('H13',140,19,1),('H13',141,19,2),('H13',142,19,3),('H13',143,19,4),('H13',144,20,0),('H13',145,20,1),('H13',146,20,2),('H13',147,20,3),('H13',148,20,4),('H13',149,20,5),('H13',150,21,0),('H13',151,21,1),('H13',152,21,2),('H13',153,21,3),('H13',154,21,4),('H13',155,21,5),('H13',156,21,6),('H13',157,21,7),('H13',158,21,8),('H13',159,21,9),('H13',160,22,0),('H13',161,22,1),('H13',162,22,2),('H13',163,22,3),('H13',164,22,4),('H13',165,22,5),('H13',166,23,0),('H13',167,23,1),('H13',168,23,2),('H13',169,23,3),('H13',170,24,0),('H13',171,24,1),('H13',172,24,2),('H13',173,25,0),('H13',174,25,1),('H13',175,25,2),('H13',176,25,3),('H13',177,25,4),('H13',178,25,5),('H13',179,26,0),('H13',180,26,1),('H13',181,26,2),('H13',182,27,0),('H13',183,27,1),('H13',184,27,2),('H13',185,27,3),('H13',186,28,0),('H13',187,28,1),('H13',188,28,2),('H13',189,28,3),('H13',190,29,0),('H13',191,29,1),('H13',192,29,2),('H13',193,29,3),('H13',194,30,0),('H13',195,30,1),('H13',196,30,2),('H13',197,30,3),('H13',198,30,4),('H13',199,30,5),('H13',200,30,6),('H13',201,30,7),('H13',202,30,8),('H13',203,30,9),('H13',204,30,10),('H13',205,30,11),('H13',206,30,12),('H13',207,30,13),('H13',208,30,14),('H13',209,30,15),('H13',210,31,1),('H13',211,31,2),('H13',212,31,3),('H13',213,32,1),('H13',214,32,2),('H13',215,32,3),('H13',216,32,4),('H13',217,32,5),('H13',218,32,6),('H13',219,33,1),('H13',220,33,2),('H13',221,33,3),('H13',222,33,4),('H13',223,34,1),('H13',224,34,2),('H13',225,34,3),('H13',226,34,4),('H13',227,34,5),('H13',228,34,6),('H13',229,35,1),('H13',230,35,2),('H13',231,35,3),('H13',232,36,1),('H13',233,36,2),('H13',234,36,3),('H13',235,37,1),('H13',236,37,2),('H13',237,37,3),('H13',238,37,4),('H13',239,38,1),('H13',240,38,2),('H13',241,38,3),('H13',242,38,4),('H13',243,39,1),('H13',244,39,2),('H13',245,39,3),('H13',246,39,4),('H13',247,40,1),('H13',248,40,2),('H13',249,40,3),('H13',250,40,4),('H13',251,40,5),('H13',252,40,6),('H13',253,40,7),('H13',254,40,8),('H13',255,40,9),('H13',256,40,10),('H13',257,40,11),('H13',258,41,1),('H13',259,41,2),('H13',260,41,3),('H13',261,41,4),('H13',262,41,5),('H13',263,41,6),('H13',264,41,7),('H13',265,41,8),('H13',266,41,9),('H13',267,42,1),('H13',268,42,2),('H13',269,42,3),('H13',270,42,4),('H13',271,43,1),('H13',272,43,2),('H13',273,43,3),('H13',274,43,4),('H13',275,44,1),('H13',276,44,2),('H13',277,44,3),('H13',278,44,4),('H13',279,44,5),('H13',280,44,6),('H13',281,44,7),('H13',282,44,8),('H13',283,44,9),('H13',284,44,10),('H13',285,44,11),('H13',286,45,1),('H13',287,45,2),('H13',288,12,1),('H13',289,46,1),('H13',290,46,2),('H13',291,46,3),('H13',292,46,4),('H13',293,46,5),('H13',294,46,6),('H13',295,2,1),('H13',296,47,1),('H13',297,47,2),('H13',298,47,3),('H13',299,48,1),('H13',300,48,2),('H14',1,1,0),('H14',2,1,1),('H14',3,1,2),('H14',4,1,3),('H14',5,1,4),('H14',6,1,5),('H14',7,1,6),('H14',8,1,7),('H14',9,1,8),('H14',10,1,9),('H14',11,1,10),('H14',12,2,0),('H14',13,2,1),('H14',14,3,0),('H14',15,3,1),('H14',16,3,2),('H14',17,3,3),('H14',18,3,4),('H14',19,3,5),('H14',20,4,0),('H14',21,4,1),('H14',22,4,2),('H14',23,4,3),('H14',24,4,4),('H14',25,4,5),('H14',26,4,6),('H14',27,4,7),('H14',28,4,8),('H14',29,4,9),('H14',30,4,10),('H14',31,4,11),('H14',32,4,12),('H14',33,5,0),('H14',34,5,1),('H14',35,5,2),('H14',36,5,3),('H14',37,5,4),('H14',38,6,0),('H14',39,6,1),('H14',40,6,2),('H14',41,7,0),('H14',42,7,1),('H14',43,7,2),('H14',44,7,3),('H14',45,7,4),('H14',46,8,0),('H14',47,9,0),('H14',48,9,1),('H14',49,9,2),('H14',50,9,3),('H14',51,10,0),('H14',52,10,1),('H14',53,10,2),('H14',54,10,3),('H14',55,10,4),('H14',56,10,5),('H14',57,10,6),('H14',58,10,7),('H14',59,10,8),('H14',60,11,0),('H14',61,11,1),('H14',62,11,2),('H14',63,11,3),('H14',64,11,4),('H14',65,11,5),('H14',66,11,6),('H14',67,11,7),('H14',68,11,8),('H14',69,11,9),('H14',70,11,10),('H14',71,11,11),('H14',72,11,12),('H14',73,11,13),('H14',74,11,14),('H14',75,11,15),('H14',76,11,16),('H14',77,11,17),('H14',78,11,18),('H14',79,11,19),('H14',80,11,20),('H14',81,11,21),('H14',82,11,22),('H14',83,11,23),('H14',84,11,24),('H14',85,11,25),('H14',86,11,26),('H14',87,11,27),('H14',88,11,28),('H14',89,11,29),('H14',90,11,30),('H14',91,11,31),('H14',92,12,0),('H14',93,12,1),('H14',94,12,2),('H14',95,12,3),('H14',96,12,4),('H14',97,12,5),('H14',98,13,0),('H14',99,13,1),('H14',100,13,2),('H14',101,13,3),('H14',102,13,4),('H14',103,13,5),('H14',104,13,6),('H14',105,13,7),('H14',106,13,8),('H14',107,13,9),('H14',108,13,10),('H14',109,13,11),('H14',110,13,12),('H14',111,14,0),('H14',112,14,1),('H14',113,14,2),('H14',114,14,3),('H14',115,14,4),('H14',116,14,5),('H14',117,14,6),('H14',118,14,7),('H14',119,14,8),('H14',120,14,9),('H14',121,14,10),('H14',122,14,11),('H14',123,15,0),('H14',124,15,1),('H14',125,15,2),('H14',126,15,3),('H14',127,16,0),('H14',128,16,1),('H14',129,16,2),('H14',130,17,0),('H14',131,17,1),('H14',132,17,2),('H14',133,17,3),('H14',134,17,4),('H14',135,18,0),('H14',136,18,1),('H14',137,18,2),('H14',138,18,3),('H14',139,19,0),('H14',140,19,1),('H14',141,19,2),('H14',142,19,3),('H14',143,19,4),('H14',144,20,0),('H14',145,20,1),('H14',146,20,2),('H14',147,20,3),('H14',148,20,4),('H14',149,20,5),('H14',150,21,0),('H14',151,21,1),('H14',152,21,2),('H14',153,21,3),('H14',154,21,4),('H14',155,21,5),('H14',156,21,6),('H14',157,21,7),('H14',158,21,8),('H14',159,21,9),('H14',160,22,0),('H14',161,22,1),('H14',162,22,2),('H14',163,22,3),('H14',164,22,4),('H14',165,22,5),('H14',166,23,0),('H14',167,23,1),('H14',168,23,2),('H14',169,23,3),('H14',170,24,0),('H14',171,24,1),('H14',172,24,2),('H14',173,25,0),('H14',174,25,1),('H14',175,25,2),('H14',176,25,3),('H14',177,25,4),('H14',178,25,5),('H14',179,26,0),('H14',180,26,1),('H14',181,26,2),('H14',182,27,0),('H14',183,27,1),('H14',184,27,2),('H14',185,27,3),('H14',186,28,0),('H14',187,28,1),('H14',188,28,2),('H14',189,28,3),('H14',190,29,0),('H14',191,29,1),('H14',192,29,2),('H14',193,29,3),('H14',194,30,0),('H14',195,30,1),('H14',196,30,2),('H14',197,30,3),('H14',198,30,4),('H14',199,30,5),('H14',200,30,6),('H14',201,30,7),('H14',202,30,8),('H14',203,30,9),('H14',204,30,10),('H14',205,30,11),('H14',206,30,12),('H14',207,30,13),('H14',208,30,14),('H14',209,30,15),('H14',210,31,1),('H14',211,31,2),('H14',212,31,3),('H14',213,32,1),('H14',214,32,2),('H14',215,32,3),('H14',216,32,4),('H14',217,32,5),('H14',218,32,6),('H14',219,33,1),('H14',220,33,2),('H14',221,33,3),('H14',222,33,4),('H14',223,34,1),('H14',224,34,2),('H14',225,34,3),('H14',226,34,4),('H14',227,34,5),('H14',228,34,6),('H14',229,35,1),('H14',230,35,2),('H14',231,35,3),('H14',232,36,1),('H14',233,36,2),('H14',234,36,3),('H14',235,37,1),('H14',236,37,2),('H14',237,37,3),('H14',238,37,4),('H14',239,38,1),('H14',240,38,2),('H14',241,38,3),('H14',242,38,4),('H14',243,39,1),('H14',244,39,2),('H14',245,39,3),('H14',246,39,4),('H14',247,40,1),('H14',248,40,2),('H14',249,40,3),('H14',250,40,4),('H14',251,40,5),('H14',252,40,6),('H14',253,40,7),('H14',254,40,8),('H14',255,40,9),('H14',256,40,10),('H14',257,40,11),('H14',258,41,1),('H14',259,41,2),('H14',260,41,3),('H14',261,41,4),('H14',262,41,5),('H14',263,41,6),('H14',264,41,7),('H14',265,41,8),('H14',266,41,9),('H14',267,42,1),('H14',268,42,2),('H14',269,42,3),('H14',270,42,4),('H14',271,43,1),('H14',272,43,2),('H14',273,43,3),('H14',274,43,4),('H14',275,44,1),('H14',276,44,2),('H14',277,44,3),('H14',278,44,4),('H14',279,44,5),('H14',280,44,6),('H14',281,44,7),('H14',282,44,8),('H14',283,44,9),('H14',284,44,10),('H14',285,44,11),('H14',286,45,1),('H14',287,45,2),('H14',288,12,1),('H14',289,46,1),('H14',290,46,2),('H14',291,46,3),('H14',292,46,4),('H14',293,46,5),('H14',294,46,6),('H14',295,2,1),('H14',296,47,1),('H14',297,47,2),('H14',298,47,3),('H14',299,48,1),('H14',300,48,2),('H15',1,1,0),('H15',2,1,1),('H15',3,1,2),('H15',4,1,3),('H15',5,1,4),('H15',6,1,5),('H15',7,1,6),('H15',8,1,7),('H15',9,1,8),('H15',10,1,9),('H15',11,1,10),('H15',12,2,0),('H15',13,2,1),('H15',14,3,0),('H15',15,3,1),('H15',16,3,2),('H15',17,3,3),('H15',18,3,4),('H15',19,3,5),('H15',20,4,0),('H15',21,4,1),('H15',22,4,2),('H15',23,4,3),('H15',24,4,4),('H15',25,4,5),('H15',26,4,6),('H15',27,4,7),('H15',28,4,8),('H15',29,4,9),('H15',30,4,10),('H15',31,4,11),('H15',32,4,12),('H15',33,5,0),('H15',34,5,1),('H15',35,5,2),('H15',36,5,3),('H15',37,5,4),('H15',38,6,0),('H15',39,6,1),('H15',40,6,2),('H15',41,7,0),('H15',42,7,1),('H15',43,7,2),('H15',44,7,3),('H15',45,7,4),('H15',46,8,0),('H15',47,9,0),('H15',48,9,1),('H15',49,9,2),('H15',50,9,3),('H15',51,10,0),('H15',52,10,1),('H15',53,10,2),('H15',54,10,3),('H15',55,10,4),('H15',56,10,5),('H15',57,10,6),('H15',58,10,7),('H15',59,10,8),('H15',60,11,0),('H15',61,11,1),('H15',62,11,2),('H15',63,11,3),('H15',64,11,4),('H15',65,11,5),('H15',66,11,6),('H15',67,11,7),('H15',68,11,8),('H15',69,11,9),('H15',70,11,10),('H15',71,11,11),('H15',72,11,12),('H15',73,11,13),('H15',74,11,14),('H15',75,11,15),('H15',76,11,16),('H15',77,11,17),('H15',78,11,18),('H15',79,11,19),('H15',80,11,20),('H15',81,11,21),('H15',82,11,22),('H15',83,11,23),('H15',84,11,24),('H15',85,11,25),('H15',86,11,26),('H15',87,11,27),('H15',88,11,28),('H15',89,11,29),('H15',90,11,30),('H15',91,11,31),('H15',92,12,0),('H15',93,12,1),('H15',94,12,2),('H15',95,12,3),('H15',96,12,4),('H15',97,12,5),('H15',98,13,0),('H15',99,13,1),('H15',100,13,2),('H15',101,13,3),('H15',102,13,4),('H15',103,13,5),('H15',104,13,6),('H15',105,13,7),('H15',106,13,8),('H15',107,13,9),('H15',108,13,10),('H15',109,13,11),('H15',110,13,12),('H15',111,14,0),('H15',112,14,1),('H15',113,14,2),('H15',114,14,3),('H15',115,14,4),('H15',116,14,5),('H15',117,14,6),('H15',118,14,7),('H15',119,14,8),('H15',120,14,9),('H15',121,14,10),('H15',122,14,11),('H15',123,15,0),('H15',124,15,1),('H15',125,15,2),('H15',126,15,3),('H15',127,16,0),('H15',128,16,1),('H15',129,16,2),('H15',130,17,0),('H15',131,17,1),('H15',132,17,2),('H15',133,17,3),('H15',134,17,4),('H15',135,18,0),('H15',136,18,1),('H15',137,18,2),('H15',138,18,3),('H15',139,19,0),('H15',140,19,1),('H15',141,19,2),('H15',142,19,3),('H15',143,19,4),('H15',144,20,0),('H15',145,20,1),('H15',146,20,2),('H15',147,20,3),('H15',148,20,4),('H15',149,20,5),('H15',150,21,0),('H15',151,21,1),('H15',152,21,2),('H15',153,21,3),('H15',154,21,4),('H15',155,21,5),('H15',156,21,6),('H15',157,21,7),('H15',158,21,8),('H15',159,21,9),('H15',160,22,0),('H15',161,22,1),('H15',162,22,2),('H15',163,22,3),('H15',164,22,4),('H15',165,22,5),('H15',166,23,0),('H15',167,23,1),('H15',168,23,2),('H15',169,23,3),('H15',170,24,0),('H15',171,24,1),('H15',172,24,2),('H15',173,25,0),('H15',174,25,1),('H15',175,25,2),('H15',176,25,3),('H15',177,25,4),('H15',178,25,5),('H15',179,26,0),('H15',180,26,1),('H15',181,26,2),('H15',182,27,0),('H15',183,27,1),('H15',184,27,2),('H15',185,27,3),('H15',186,28,0),('H15',187,28,1),('H15',188,28,2),('H15',189,28,3),('H15',190,29,0),('H15',191,29,1),('H15',192,29,2),('H15',193,29,3),('H15',194,30,0),('H15',195,30,1),('H15',196,30,2),('H15',197,30,3),('H15',198,30,4),('H15',199,30,5),('H15',200,30,6),('H15',201,30,7),('H15',202,30,8),('H15',203,30,9),('H15',204,30,10),('H15',205,30,11),('H15',206,30,12),('H15',207,30,13),('H15',208,30,14),('H15',209,30,15),('H15',210,31,1),('H15',211,31,2),('H15',212,31,3),('H15',213,32,1),('H15',214,32,2),('H15',215,32,3),('H15',216,32,4),('H15',217,32,5),('H15',218,32,6),('H15',219,33,1),('H15',220,33,2),('H15',221,33,3),('H15',222,33,4),('H15',223,34,1),('H15',224,34,2),('H15',225,34,3),('H15',226,34,4),('H15',227,34,5),('H15',228,34,6),('H15',229,35,1),('H15',230,35,2),('H15',231,35,3),('H15',232,36,1),('H15',233,36,2),('H15',234,36,3),('H15',235,37,1),('H15',236,37,2),('H15',237,37,3),('H15',238,37,4),('H15',239,38,1),('H15',240,38,2),('H15',241,38,3),('H15',242,38,4),('H15',243,39,1),('H15',244,39,2),('H15',245,39,3),('H15',246,39,4),('H15',247,40,1),('H15',248,40,2),('H15',249,40,3),('H15',250,40,4),('H15',251,40,5),('H15',252,40,6),('H15',253,40,7),('H15',254,40,8),('H15',255,40,9),('H15',256,40,10),('H15',257,40,11),('H15',258,41,1),('H15',259,41,2),('H15',260,41,3),('H15',261,41,4),('H15',262,41,5),('H15',263,41,6),('H15',264,41,7),('H15',265,41,8),('H15',266,41,9),('H15',267,42,1),('H15',268,42,2),('H15',269,42,3),('H15',270,42,4),('H15',271,43,1),('H15',272,43,2),('H15',273,43,3),('H15',274,43,4),('H15',275,44,1),('H15',276,44,2),('H15',277,44,3),('H15',278,44,4),('H15',279,44,5),('H15',280,44,6),('H15',281,44,7),('H15',282,44,8),('H15',283,44,9),('H15',284,44,10),('H15',285,44,11),('H15',286,45,1),('H15',287,45,2),('H15',288,12,1),('H15',289,46,1),('H15',290,46,2),('H15',291,46,3),('H15',292,46,4),('H15',293,46,5),('H15',294,46,6),('H15',295,2,1),('H15',296,47,1),('H15',297,47,2),('H15',298,47,3),('H15',299,48,1),('H15',300,48,2),('H2',1,1,0),('H2',2,1,1),('H2',3,1,2),('H2',4,1,3),('H2',5,1,4),('H2',6,1,5),('H2',7,1,6),('H2',8,1,7),('H2',9,1,8),('H2',10,1,9),('H2',11,1,10),('H2',12,2,0),('H2',13,2,1),('H2',14,3,0),('H2',15,3,1),('H2',16,3,2),('H2',17,3,3),('H2',18,3,4),('H2',19,3,5),('H2',20,4,0),('H2',21,4,1),('H2',22,4,2),('H2',23,4,3),('H2',24,4,4),('H2',25,4,5),('H2',26,4,6),('H2',27,4,7),('H2',28,4,8),('H2',29,4,9),('H2',30,4,10),('H2',31,4,11),('H2',32,4,12),('H2',33,5,0),('H2',34,5,1),('H2',35,5,2),('H2',36,5,3),('H2',37,5,4),('H2',38,6,0),('H2',39,6,1),('H2',40,6,2),('H2',41,7,0),('H2',42,7,1),('H2',43,7,2),('H2',44,7,3),('H2',45,7,4),('H2',46,8,0),('H2',47,9,0),('H2',48,9,1),('H2',49,9,2),('H2',50,9,3),('H2',51,10,0),('H2',52,10,1),('H2',53,10,2),('H2',54,10,3),('H2',55,10,4),('H2',56,10,5),('H2',57,10,6),('H2',58,10,7),('H2',59,10,8),('H2',60,11,0),('H2',61,11,1),('H2',62,11,2),('H2',63,11,3),('H2',64,11,4),('H2',65,11,5),('H2',66,11,6),('H2',67,11,7),('H2',68,11,8),('H2',69,11,9),('H2',70,11,10),('H2',71,11,11),('H2',72,11,12),('H2',73,11,13),('H2',74,11,14),('H2',75,11,15),('H2',76,11,16),('H2',77,11,17),('H2',78,11,18),('H2',79,11,19),('H2',80,11,20),('H2',81,11,21),('H2',82,11,22),('H2',83,11,23),('H2',84,11,24),('H2',85,11,25),('H2',86,11,26),('H2',87,11,27),('H2',88,11,28),('H2',89,11,29),('H2',90,11,30),('H2',91,11,31),('H2',92,12,0),('H2',93,12,1),('H2',94,12,2),('H2',95,12,3),('H2',96,12,4),('H2',97,12,5),('H2',98,13,0),('H2',99,13,1),('H2',100,13,2),('H2',101,13,3),('H2',102,13,4),('H2',103,13,5),('H2',104,13,6),('H2',105,13,7),('H2',106,13,8),('H2',107,13,9),('H2',108,13,10),('H2',109,13,11),('H2',110,13,12),('H2',111,14,0),('H2',112,14,1),('H2',113,14,2),('H2',114,14,3),('H2',115,14,4),('H2',116,14,5),('H2',117,14,6),('H2',118,14,7),('H2',119,14,8),('H2',120,14,9),('H2',121,14,10),('H2',122,14,11),('H2',123,15,0),('H2',124,15,1),('H2',125,15,2),('H2',126,15,3),('H2',127,16,0),('H2',128,16,1),('H2',129,16,2),('H2',130,17,0),('H2',131,17,1),('H2',132,17,2),('H2',133,17,3),('H2',134,17,4),('H2',135,18,0),('H2',136,18,1),('H2',137,18,2),('H2',138,18,3),('H2',139,19,0),('H2',140,19,1),('H2',141,19,2),('H2',142,19,3),('H2',143,19,4),('H2',144,20,0),('H2',145,20,1),('H2',146,20,2),('H2',147,20,3),('H2',148,20,4),('H2',149,20,5),('H2',150,21,0),('H2',151,21,1),('H2',152,21,2),('H2',153,21,3),('H2',154,21,4),('H2',155,21,5),('H2',156,21,6),('H2',157,21,7),('H2',158,21,8),('H2',159,21,9),('H2',160,22,0),('H2',161,22,1),('H2',162,22,2),('H2',163,22,3),('H2',164,22,4),('H2',165,22,5),('H2',166,23,0),('H2',167,23,1),('H2',168,23,2),('H2',169,23,3),('H2',170,24,0),('H2',171,24,1),('H2',172,24,2),('H2',173,25,0),('H2',174,25,1),('H2',175,25,2),('H2',176,25,3),('H2',177,25,4),('H2',178,25,5),('H2',179,26,0),('H2',180,26,1),('H2',181,26,2),('H2',182,27,0),('H2',183,27,1),('H2',184,27,2),('H2',185,27,3),('H2',186,28,0),('H2',187,28,1),('H2',188,28,2),('H2',189,28,3),('H2',190,29,0),('H2',191,29,1),('H2',192,29,2),('H2',193,29,3),('H2',194,30,0),('H2',195,30,1),('H2',196,30,2),('H2',197,30,3),('H2',198,30,4),('H2',199,30,5),('H2',200,30,6),('H2',201,30,7),('H2',202,30,8),('H2',203,30,9),('H2',204,30,10),('H2',205,30,11),('H2',206,30,12),('H2',207,30,13),('H2',208,30,14),('H2',209,30,15),('H2',210,31,1),('H2',211,31,2),('H2',212,31,3),('H2',213,32,1),('H2',214,32,2),('H2',215,32,3),('H2',216,32,4),('H2',217,32,5),('H2',218,32,6),('H2',219,33,1),('H2',220,33,2),('H2',221,33,3),('H2',222,33,4),('H2',223,34,1),('H2',224,34,2),('H2',225,34,3),('H2',226,34,4),('H2',227,34,5),('H2',228,34,6),('H2',229,35,1),('H2',230,35,2),('H2',231,35,3),('H2',232,36,1),('H2',233,36,2),('H2',234,36,3),('H2',235,37,1),('H2',236,37,2),('H2',237,37,3),('H2',238,37,4),('H2',239,38,1),('H2',240,38,2),('H2',241,38,3),('H2',242,38,4),('H2',243,39,1),('H2',244,39,2),('H2',245,39,3),('H2',246,39,4),('H2',247,40,1),('H2',248,40,2),('H2',249,40,3),('H2',250,40,4),('H2',251,40,5),('H2',252,40,6),('H2',253,40,7),('H2',254,40,8),('H2',255,40,9),('H2',256,40,10),('H2',257,40,11),('H2',258,41,1),('H2',259,41,2),('H2',260,41,3),('H2',261,41,4),('H2',262,41,5),('H2',263,41,6),('H2',264,41,7),('H2',265,41,8),('H2',266,41,9),('H2',267,42,1),('H2',268,42,2),('H2',269,42,3),('H2',270,42,4),('H2',271,43,1),('H2',272,43,2),('H2',273,43,3),('H2',274,43,4),('H2',275,44,1),('H2',276,44,2),('H2',277,44,3),('H2',278,44,4),('H2',279,44,5),('H2',280,44,6),('H2',281,44,7),('H2',282,44,8),('H2',283,44,9),('H2',284,44,10),('H2',285,44,11),('H2',286,45,1),('H2',287,45,2),('H2',288,12,1),('H2',289,46,1),('H2',290,46,2),('H2',291,46,3),('H2',292,46,4),('H2',293,46,5),('H2',294,46,6),('H2',295,2,1),('H2',296,47,1),('H2',297,47,2),('H2',298,47,3),('H2',299,48,1),('H2',300,48,2),('H3',1,1,0),('H3',2,1,1),('H3',3,1,2),('H3',4,1,3),('H3',5,1,4),('H3',6,1,5),('H3',7,1,6),('H3',8,1,7),('H3',9,1,8),('H3',10,1,9),('H3',11,1,10),('H3',12,2,0),('H3',13,2,1),('H3',14,3,0),('H3',15,3,1),('H3',16,3,2),('H3',17,3,3),('H3',18,3,4),('H3',19,3,5),('H3',20,4,0),('H3',21,4,1),('H3',22,4,2),('H3',23,4,3),('H3',24,4,4),('H3',25,4,5),('H3',26,4,6),('H3',27,4,7),('H3',28,4,8),('H3',29,4,9),('H3',30,4,10),('H3',31,4,11),('H3',32,4,12),('H3',33,5,0),('H3',34,5,1),('H3',35,5,2),('H3',36,5,3),('H3',37,5,4),('H3',38,6,0),('H3',39,6,1),('H3',40,6,2),('H3',41,7,0),('H3',42,7,1),('H3',43,7,2),('H3',44,7,3),('H3',45,7,4),('H3',46,8,0),('H3',47,9,0),('H3',48,9,1),('H3',49,9,2),('H3',50,9,3),('H3',51,10,0),('H3',52,10,1),('H3',53,10,2),('H3',54,10,3),('H3',55,10,4),('H3',56,10,5),('H3',57,10,6),('H3',58,10,7),('H3',59,10,8),('H3',60,11,0),('H3',61,11,1),('H3',62,11,2),('H3',63,11,3),('H3',64,11,4),('H3',65,11,5),('H3',66,11,6),('H3',67,11,7),('H3',68,11,8),('H3',69,11,9),('H3',70,11,10),('H3',71,11,11),('H3',72,11,12),('H3',73,11,13),('H3',74,11,14),('H3',75,11,15),('H3',76,11,16),('H3',77,11,17),('H3',78,11,18),('H3',79,11,19),('H3',80,11,20),('H3',81,11,21),('H3',82,11,22),('H3',83,11,23),('H3',84,11,24),('H3',85,11,25),('H3',86,11,26),('H3',87,11,27),('H3',88,11,28),('H3',89,11,29),('H3',90,11,30),('H3',91,11,31),('H3',92,12,0),('H3',93,12,1),('H3',94,12,2),('H3',95,12,3),('H3',96,12,4),('H3',97,12,5),('H3',98,13,0),('H3',99,13,1),('H3',100,13,2),('H3',101,13,3),('H3',102,13,4),('H3',103,13,5),('H3',104,13,6),('H3',105,13,7),('H3',106,13,8),('H3',107,13,9),('H3',108,13,10),('H3',109,13,11),('H3',110,13,12),('H3',111,14,0),('H3',112,14,1),('H3',113,14,2),('H3',114,14,3),('H3',115,14,4),('H3',116,14,5),('H3',117,14,6),('H3',118,14,7),('H3',119,14,8),('H3',120,14,9),('H3',121,14,10),('H3',122,14,11),('H3',123,15,0),('H3',124,15,1),('H3',125,15,2),('H3',126,15,3),('H3',127,16,0),('H3',128,16,1),('H3',129,16,2),('H3',130,17,0),('H3',131,17,1),('H3',132,17,2),('H3',133,17,3),('H3',134,17,4),('H3',135,18,0),('H3',136,18,1),('H3',137,18,2),('H3',138,18,3),('H3',139,19,0),('H3',140,19,1),('H3',141,19,2),('H3',142,19,3),('H3',143,19,4),('H3',144,20,0),('H3',145,20,1),('H3',146,20,2),('H3',147,20,3),('H3',148,20,4),('H3',149,20,5),('H3',150,21,0),('H3',151,21,1),('H3',152,21,2),('H3',153,21,3),('H3',154,21,4),('H3',155,21,5),('H3',156,21,6),('H3',157,21,7),('H3',158,21,8),('H3',159,21,9),('H3',160,22,0),('H3',161,22,1),('H3',162,22,2),('H3',163,22,3),('H3',164,22,4),('H3',165,22,5),('H3',166,23,0),('H3',167,23,1),('H3',168,23,2),('H3',169,23,3),('H3',170,24,0),('H3',171,24,1),('H3',172,24,2),('H3',173,25,0),('H3',174,25,1),('H3',175,25,2),('H3',176,25,3),('H3',177,25,4),('H3',178,25,5),('H3',179,26,0),('H3',180,26,1),('H3',181,26,2),('H3',182,27,0),('H3',183,27,1),('H3',184,27,2),('H3',185,27,3),('H3',186,28,0),('H3',187,28,1),('H3',188,28,2),('H3',189,28,3),('H3',190,29,0),('H3',191,29,1),('H3',192,29,2),('H3',193,29,3),('H3',194,30,0),('H3',195,30,1),('H3',196,30,2),('H3',197,30,3),('H3',198,30,4),('H3',199,30,5),('H3',200,30,6),('H3',201,30,7),('H3',202,30,8),('H3',203,30,9),('H3',204,30,10),('H3',205,30,11),('H3',206,30,12),('H3',207,30,13),('H3',208,30,14),('H3',209,30,15),('H3',210,31,1),('H3',211,31,2),('H3',212,31,3),('H3',213,32,1),('H3',214,32,2),('H3',215,32,3),('H3',216,32,4),('H3',217,32,5),('H3',218,32,6),('H3',219,33,1),('H3',220,33,2),('H3',221,33,3),('H3',222,33,4),('H3',223,34,1),('H3',224,34,2),('H3',225,34,3),('H3',226,34,4),('H3',227,34,5),('H3',228,34,6),('H3',229,35,1),('H3',230,35,2),('H3',231,35,3),('H3',232,36,1),('H3',233,36,2),('H3',234,36,3),('H3',235,37,1),('H3',236,37,2),('H3',237,37,3),('H3',238,37,4),('H3',239,38,1),('H3',240,38,2),('H3',241,38,3),('H3',242,38,4),('H3',243,39,1),('H3',244,39,2),('H3',245,39,3),('H3',246,39,4),('H3',247,40,1),('H3',248,40,2),('H3',249,40,3),('H3',250,40,4),('H3',251,40,5),('H3',252,40,6),('H3',253,40,7),('H3',254,40,8),('H3',255,40,9),('H3',256,40,10),('H3',257,40,11),('H3',258,41,1),('H3',259,41,2),('H3',260,41,3),('H3',261,41,4),('H3',262,41,5),('H3',263,41,6),('H3',264,41,7),('H3',265,41,8),('H3',266,41,9),('H3',267,42,1),('H3',268,42,2),('H3',269,42,3),('H3',270,42,4),('H3',271,43,1),('H3',272,43,2),('H3',273,43,3),('H3',274,43,4),('H3',275,44,1),('H3',276,44,2),('H3',277,44,3),('H3',278,44,4),('H3',279,44,5),('H3',280,44,6),('H3',281,44,7),('H3',282,44,8),('H3',283,44,9),('H3',284,44,10),('H3',285,44,11),('H3',286,45,1),('H3',287,45,2),('H3',288,12,1),('H3',289,46,1),('H3',290,46,2),('H3',291,46,3),('H3',292,46,4),('H3',293,46,5),('H3',294,46,6),('H3',295,2,1),('H3',296,47,1),('H3',297,47,2),('H3',298,47,3),('H3',299,48,1),('H3',300,48,2),('H4',1,1,0),('H4',2,1,1),('H4',3,1,2),('H4',4,1,3),('H4',5,1,4),('H4',6,1,5),('H4',7,1,6),('H4',8,1,7),('H4',9,1,8),('H4',10,1,9),('H4',11,1,10),('H4',12,2,0),('H4',13,2,1),('H4',14,3,0),('H4',15,3,1),('H4',16,3,2),('H4',17,3,3),('H4',18,3,4),('H4',19,3,5),('H4',20,4,0),('H4',21,4,1),('H4',22,4,2),('H4',23,4,3),('H4',24,4,4),('H4',25,4,5),('H4',26,4,6),('H4',27,4,7),('H4',28,4,8),('H4',29,4,9),('H4',30,4,10),('H4',31,4,11),('H4',32,4,12),('H4',33,5,0),('H4',34,5,1),('H4',35,5,2),('H4',36,5,3),('H4',37,5,4),('H4',38,6,0),('H4',39,6,1),('H4',40,6,2),('H4',41,7,0),('H4',42,7,1),('H4',43,7,2),('H4',44,7,3),('H4',45,7,4),('H4',46,8,0),('H4',47,9,0),('H4',48,9,1),('H4',49,9,2),('H4',50,9,3),('H4',51,10,0),('H4',52,10,1),('H4',53,10,2),('H4',54,10,3),('H4',55,10,4),('H4',56,10,5),('H4',57,10,6),('H4',58,10,7),('H4',59,10,8),('H4',60,11,0),('H4',61,11,1),('H4',62,11,2),('H4',63,11,3),('H4',64,11,4),('H4',65,11,5),('H4',66,11,6),('H4',67,11,7),('H4',68,11,8),('H4',69,11,9),('H4',70,11,10),('H4',71,11,11),('H4',72,11,12),('H4',73,11,13),('H4',74,11,14),('H4',75,11,15),('H4',76,11,16),('H4',77,11,17),('H4',78,11,18),('H4',79,11,19),('H4',80,11,20),('H4',81,11,21),('H4',82,11,22),('H4',83,11,23),('H4',84,11,24),('H4',85,11,25),('H4',86,11,26),('H4',87,11,27),('H4',88,11,28),('H4',89,11,29),('H4',90,11,30),('H4',91,11,31),('H4',92,12,0),('H4',93,12,1),('H4',94,12,2),('H4',95,12,3),('H4',96,12,4),('H4',97,12,5),('H4',98,13,0),('H4',99,13,1),('H4',100,13,2),('H4',101,13,3),('H4',102,13,4),('H4',103,13,5),('H4',104,13,6),('H4',105,13,7),('H4',106,13,8),('H4',107,13,9),('H4',108,13,10),('H4',109,13,11),('H4',110,13,12),('H4',111,14,0),('H4',112,14,1),('H4',113,14,2),('H4',114,14,3),('H4',115,14,4),('H4',116,14,5),('H4',117,14,6),('H4',118,14,7),('H4',119,14,8),('H4',120,14,9),('H4',121,14,10),('H4',122,14,11),('H4',123,15,0),('H4',124,15,1),('H4',125,15,2),('H4',126,15,3),('H4',127,16,0),('H4',128,16,1),('H4',129,16,2),('H4',130,17,0),('H4',131,17,1),('H4',132,17,2),('H4',133,17,3),('H4',134,17,4),('H4',135,18,0),('H4',136,18,1),('H4',137,18,2),('H4',138,18,3),('H4',139,19,0),('H4',140,19,1),('H4',141,19,2),('H4',142,19,3),('H4',143,19,4),('H4',144,20,0),('H4',145,20,1),('H4',146,20,2),('H4',147,20,3),('H4',148,20,4),('H4',149,20,5),('H4',150,21,0),('H4',151,21,1),('H4',152,21,2),('H4',153,21,3),('H4',154,21,4),('H4',155,21,5),('H4',156,21,6),('H4',157,21,7),('H4',158,21,8),('H4',159,21,9),('H4',160,22,0),('H4',161,22,1),('H4',162,22,2),('H4',163,22,3),('H4',164,22,4),('H4',165,22,5),('H4',166,23,0),('H4',167,23,1),('H4',168,23,2),('H4',169,23,3),('H4',170,24,0),('H4',171,24,1),('H4',172,24,2),('H4',173,25,0),('H4',174,25,1),('H4',175,25,2),('H4',176,25,3),('H4',177,25,4),('H4',178,25,5),('H4',179,26,0),('H4',180,26,1),('H4',181,26,2),('H4',182,27,0),('H4',183,27,1),('H4',184,27,2),('H4',185,27,3),('H4',186,28,0),('H4',187,28,1),('H4',188,28,2),('H4',189,28,3),('H4',190,29,0),('H4',191,29,1),('H4',192,29,2),('H4',193,29,3),('H4',194,30,0),('H4',195,30,1),('H4',196,30,2),('H4',197,30,3),('H4',198,30,4),('H4',199,30,5),('H4',200,30,6),('H4',201,30,7),('H4',202,30,8),('H4',203,30,9),('H4',204,30,10),('H4',205,30,11),('H4',206,30,12),('H4',207,30,13),('H4',208,30,14),('H4',209,30,15),('H4',210,31,1),('H4',211,31,2),('H4',212,31,3),('H4',213,32,1),('H4',214,32,2),('H4',215,32,3),('H4',216,32,4),('H4',217,32,5),('H4',218,32,6),('H4',219,33,1),('H4',220,33,2),('H4',221,33,3),('H4',222,33,4),('H4',223,34,1),('H4',224,34,2),('H4',225,34,3),('H4',226,34,4),('H4',227,34,5),('H4',228,34,6),('H4',229,35,1),('H4',230,35,2),('H4',231,35,3),('H4',232,36,1),('H4',233,36,2),('H4',234,36,3),('H4',235,37,1),('H4',236,37,2),('H4',237,37,3),('H4',238,37,4),('H4',239,38,1),('H4',240,38,2),('H4',241,38,3),('H4',242,38,4),('H4',243,39,1),('H4',244,39,2),('H4',245,39,3),('H4',246,39,4),('H4',247,40,1),('H4',248,40,2),('H4',249,40,3),('H4',250,40,4),('H4',251,40,5),('H4',252,40,6),('H4',253,40,7),('H4',254,40,8),('H4',255,40,9),('H4',256,40,10),('H4',257,40,11),('H4',258,41,1),('H4',259,41,2),('H4',260,41,3),('H4',261,41,4),('H4',262,41,5),('H4',263,41,6),('H4',264,41,7),('H4',265,41,8),('H4',266,41,9),('H4',267,42,1),('H4',268,42,2),('H4',269,42,3),('H4',270,42,4),('H4',271,43,1),('H4',272,43,2),('H4',273,43,3),('H4',274,43,4),('H4',275,44,1),('H4',276,44,2),('H4',277,44,3),('H4',278,44,4),('H4',279,44,5),('H4',280,44,6),('H4',281,44,7),('H4',282,44,8),('H4',283,44,9),('H4',284,44,10),('H4',285,44,11),('H4',286,45,1),('H4',287,45,2),('H4',288,12,1),('H4',289,46,1),('H4',290,46,2),('H4',291,46,3),('H4',292,46,4),('H4',293,46,5),('H4',294,46,6),('H4',295,2,1),('H4',296,47,1),('H4',297,47,2),('H4',298,47,3),('H4',299,48,1),('H4',300,48,2),('H5',1,1,0),('H5',2,1,1),('H5',3,1,2),('H5',4,1,3),('H5',5,1,4),('H5',6,1,5),('H5',7,1,6),('H5',8,1,7),('H5',9,1,8),('H5',10,1,9),('H5',11,1,10),('H5',12,2,0),('H5',13,2,1),('H5',14,3,0),('H5',15,3,1),('H5',16,3,2),('H5',17,3,3),('H5',18,3,4),('H5',19,3,5),('H5',20,4,0),('H5',21,4,1),('H5',22,4,2),('H5',23,4,3),('H5',24,4,4),('H5',25,4,5),('H5',26,4,6),('H5',27,4,7),('H5',28,4,8),('H5',29,4,9),('H5',30,4,10),('H5',31,4,11),('H5',32,4,12),('H5',33,5,0),('H5',34,5,1),('H5',35,5,2),('H5',36,5,3),('H5',37,5,4),('H5',38,6,0),('H5',39,6,1),('H5',40,6,2),('H5',41,7,0),('H5',42,7,1),('H5',43,7,2),('H5',44,7,3),('H5',45,7,4),('H5',46,8,0),('H5',47,9,0),('H5',48,9,1),('H5',49,9,2),('H5',50,9,3),('H5',51,10,0),('H5',52,10,1),('H5',53,10,2),('H5',54,10,3),('H5',55,10,4),('H5',56,10,5),('H5',57,10,6),('H5',58,10,7),('H5',59,10,8),('H5',60,11,0),('H5',61,11,1),('H5',62,11,2),('H5',63,11,3),('H5',64,11,4),('H5',65,11,5),('H5',66,11,6),('H5',67,11,7),('H5',68,11,8),('H5',69,11,9),('H5',70,11,10),('H5',71,11,11),('H5',72,11,12),('H5',73,11,13),('H5',74,11,14),('H5',75,11,15),('H5',76,11,16),('H5',77,11,17),('H5',78,11,18),('H5',79,11,19),('H5',80,11,20),('H5',81,11,21),('H5',82,11,22),('H5',83,11,23),('H5',84,11,24),('H5',85,11,25),('H5',86,11,26),('H5',87,11,27),('H5',88,11,28),('H5',89,11,29),('H5',90,11,30),('H5',91,11,31),('H5',92,12,0),('H5',93,12,1),('H5',94,12,2),('H5',95,12,3),('H5',96,12,4),('H5',97,12,5),('H5',98,13,0),('H5',99,13,1),('H5',100,13,2),('H5',101,13,3),('H5',102,13,4),('H5',103,13,5),('H5',104,13,6),('H5',105,13,7),('H5',106,13,8),('H5',107,13,9),('H5',108,13,10),('H5',109,13,11),('H5',110,13,12),('H5',111,14,0),('H5',112,14,1),('H5',113,14,2),('H5',114,14,3),('H5',115,14,4),('H5',116,14,5),('H5',117,14,6),('H5',118,14,7),('H5',119,14,8),('H5',120,14,9),('H5',121,14,10),('H5',122,14,11),('H5',123,15,0),('H5',124,15,1),('H5',125,15,2),('H5',126,15,3),('H5',127,16,0),('H5',128,16,1),('H5',129,16,2),('H5',130,17,0),('H5',131,17,1),('H5',132,17,2),('H5',133,17,3),('H5',134,17,4),('H5',135,18,0),('H5',136,18,1),('H5',137,18,2),('H5',138,18,3),('H5',139,19,0),('H5',140,19,1),('H5',141,19,2),('H5',142,19,3),('H5',143,19,4),('H5',144,20,0),('H5',145,20,1),('H5',146,20,2),('H5',147,20,3),('H5',148,20,4),('H5',149,20,5),('H5',150,21,0),('H5',151,21,1),('H5',152,21,2),('H5',153,21,3),('H5',154,21,4),('H5',155,21,5),('H5',156,21,6),('H5',157,21,7),('H5',158,21,8),('H5',159,21,9),('H5',160,22,0),('H5',161,22,1),('H5',162,22,2),('H5',163,22,3),('H5',164,22,4),('H5',165,22,5),('H5',166,23,0),('H5',167,23,1),('H5',168,23,2),('H5',169,23,3),('H5',170,24,0),('H5',171,24,1),('H5',172,24,2),('H5',173,25,0),('H5',174,25,1),('H5',175,25,2),('H5',176,25,3),('H5',177,25,4),('H5',178,25,5),('H5',179,26,0),('H5',180,26,1),('H5',181,26,2),('H5',182,27,0),('H5',183,27,1),('H5',184,27,2),('H5',185,27,3),('H5',186,28,0),('H5',187,28,1),('H5',188,28,2),('H5',189,28,3),('H5',190,29,0),('H5',191,29,1),('H5',192,29,2),('H5',193,29,3),('H5',194,30,0),('H5',195,30,1),('H5',196,30,2),('H5',197,30,3),('H5',198,30,4),('H5',199,30,5),('H5',200,30,6),('H5',201,30,7),('H5',202,30,8),('H5',203,30,9),('H5',204,30,10),('H5',205,30,11),('H5',206,30,12),('H5',207,30,13),('H5',208,30,14),('H5',209,30,15),('H5',210,31,1),('H5',211,31,2),('H5',212,31,3),('H5',213,32,1),('H5',214,32,2),('H5',215,32,3),('H5',216,32,4),('H5',217,32,5),('H5',218,32,6),('H5',219,33,1),('H5',220,33,2),('H5',221,33,3),('H5',222,33,4),('H5',223,34,1),('H5',224,34,2),('H5',225,34,3),('H5',226,34,4),('H5',227,34,5),('H5',228,34,6),('H5',229,35,1),('H5',230,35,2),('H5',231,35,3),('H5',232,36,1),('H5',233,36,2),('H5',234,36,3),('H5',235,37,1),('H5',236,37,2),('H5',237,37,3),('H5',238,37,4),('H5',239,38,1),('H5',240,38,2),('H5',241,38,3),('H5',242,38,4),('H5',243,39,1),('H5',244,39,2),('H5',245,39,3),('H5',246,39,4),('H5',247,40,1),('H5',248,40,2),('H5',249,40,3),('H5',250,40,4),('H5',251,40,5),('H5',252,40,6),('H5',253,40,7),('H5',254,40,8),('H5',255,40,9),('H5',256,40,10),('H5',257,40,11),('H5',258,41,1),('H5',259,41,2),('H5',260,41,3),('H5',261,41,4),('H5',262,41,5),('H5',263,41,6),('H5',264,41,7),('H5',265,41,8),('H5',266,41,9),('H5',267,42,1),('H5',268,42,2),('H5',269,42,3),('H5',270,42,4),('H5',271,43,1),('H5',272,43,2),('H5',273,43,3),('H5',274,43,4),('H5',275,44,1),('H5',276,44,2),('H5',277,44,3),('H5',278,44,4),('H5',279,44,5),('H5',280,44,6),('H5',281,44,7),('H5',282,44,8),('H5',283,44,9),('H5',284,44,10),('H5',285,44,11),('H5',286,45,1),('H5',287,45,2),('H5',288,12,1),('H5',289,46,1),('H5',290,46,2),('H5',291,46,3),('H5',292,46,4),('H5',293,46,5),('H5',294,46,6),('H5',295,2,1),('H5',296,47,1),('H5',297,47,2),('H5',298,47,3),('H5',299,48,1),('H5',300,48,2),('H6',1,1,0),('H6',2,1,1),('H6',3,1,2),('H6',4,1,3),('H6',5,1,4),('H6',6,1,5),('H6',7,1,6),('H6',8,1,7),('H6',9,1,8),('H6',10,1,9),('H6',11,1,10),('H6',12,2,0),('H6',13,2,1),('H6',14,3,0),('H6',15,3,1),('H6',16,3,2),('H6',17,3,3),('H6',18,3,4),('H6',19,3,5),('H6',20,4,0),('H6',21,4,1),('H6',22,4,2),('H6',23,4,3),('H6',24,4,4),('H6',25,4,5),('H6',26,4,6),('H6',27,4,7),('H6',28,4,8),('H6',29,4,9),('H6',30,4,10),('H6',31,4,11),('H6',32,4,12),('H6',33,5,0),('H6',34,5,1),('H6',35,5,2),('H6',36,5,3),('H6',37,5,4),('H6',38,6,0),('H6',39,6,1),('H6',40,6,2),('H6',41,7,0),('H6',42,7,1),('H6',43,7,2),('H6',44,7,3),('H6',45,7,4),('H6',46,8,0),('H6',47,9,0),('H6',48,9,1),('H6',49,9,2),('H6',50,9,3),('H6',51,10,0),('H6',52,10,1),('H6',53,10,2),('H6',54,10,3),('H6',55,10,4),('H6',56,10,5),('H6',57,10,6),('H6',58,10,7),('H6',59,10,8),('H6',60,11,0),('H6',61,11,1),('H6',62,11,2),('H6',63,11,3),('H6',64,11,4),('H6',65,11,5),('H6',66,11,6),('H6',67,11,7),('H6',68,11,8),('H6',69,11,9),('H6',70,11,10),('H6',71,11,11),('H6',72,11,12),('H6',73,11,13),('H6',74,11,14),('H6',75,11,15),('H6',76,11,16),('H6',77,11,17),('H6',78,11,18),('H6',79,11,19),('H6',80,11,20),('H6',81,11,21),('H6',82,11,22),('H6',83,11,23),('H6',84,11,24),('H6',85,11,25),('H6',86,11,26),('H6',87,11,27),('H6',88,11,28),('H6',89,11,29),('H6',90,11,30),('H6',91,11,31),('H6',92,12,0),('H6',93,12,1),('H6',94,12,2),('H6',95,12,3),('H6',96,12,4),('H6',97,12,5),('H6',98,13,0),('H6',99,13,1),('H6',100,13,2),('H6',101,13,3),('H6',102,13,4),('H6',103,13,5),('H6',104,13,6),('H6',105,13,7),('H6',106,13,8),('H6',107,13,9),('H6',108,13,10),('H6',109,13,11),('H6',110,13,12),('H6',111,14,0),('H6',112,14,1),('H6',113,14,2),('H6',114,14,3),('H6',115,14,4),('H6',116,14,5),('H6',117,14,6),('H6',118,14,7),('H6',119,14,8),('H6',120,14,9),('H6',121,14,10),('H6',122,14,11),('H6',123,15,0),('H6',124,15,1),('H6',125,15,2),('H6',126,15,3),('H6',127,16,0),('H6',128,16,1),('H6',129,16,2),('H6',130,17,0),('H6',131,17,1),('H6',132,17,2),('H6',133,17,3),('H6',134,17,4),('H6',135,18,0),('H6',136,18,1),('H6',137,18,2),('H6',138,18,3),('H6',139,19,0),('H6',140,19,1),('H6',141,19,2),('H6',142,19,3),('H6',143,19,4),('H6',144,20,0),('H6',145,20,1),('H6',146,20,2),('H6',147,20,3),('H6',148,20,4),('H6',149,20,5),('H6',150,21,0),('H6',151,21,1),('H6',152,21,2),('H6',153,21,3),('H6',154,21,4),('H6',155,21,5),('H6',156,21,6),('H6',157,21,7),('H6',158,21,8),('H6',159,21,9),('H6',160,22,0),('H6',161,22,1),('H6',162,22,2),('H6',163,22,3),('H6',164,22,4),('H6',165,22,5),('H6',166,23,0),('H6',167,23,1),('H6',168,23,2),('H6',169,23,3),('H6',170,24,0),('H6',171,24,1),('H6',172,24,2),('H6',173,25,0),('H6',174,25,1),('H6',175,25,2),('H6',176,25,3),('H6',177,25,4),('H6',178,25,5),('H6',179,26,0),('H6',180,26,1),('H6',181,26,2),('H6',182,27,0),('H6',183,27,1),('H6',184,27,2),('H6',185,27,3),('H6',186,28,0),('H6',187,28,1),('H6',188,28,2),('H6',189,28,3),('H6',190,29,0),('H6',191,29,1),('H6',192,29,2),('H6',193,29,3),('H6',194,30,0),('H6',195,30,1),('H6',196,30,2),('H6',197,30,3),('H6',198,30,4),('H6',199,30,5),('H6',200,30,6),('H6',201,30,7),('H6',202,30,8),('H6',203,30,9),('H6',204,30,10),('H6',205,30,11),('H6',206,30,12),('H6',207,30,13),('H6',208,30,14),('H6',209,30,15),('H6',210,31,1),('H6',211,31,2),('H6',212,31,3),('H6',213,32,1),('H6',214,32,2),('H6',215,32,3),('H6',216,32,4),('H6',217,32,5),('H6',218,32,6),('H6',219,33,1),('H6',220,33,2),('H6',221,33,3),('H6',222,33,4),('H6',223,34,1),('H6',224,34,2),('H6',225,34,3),('H6',226,34,4),('H6',227,34,5),('H6',228,34,6),('H6',229,35,1),('H6',230,35,2),('H6',231,35,3),('H6',232,36,1),('H6',233,36,2),('H6',234,36,3),('H6',235,37,1),('H6',236,37,2),('H6',237,37,3),('H6',238,37,4),('H6',239,38,1),('H6',240,38,2),('H6',241,38,3),('H6',242,38,4),('H6',243,39,1),('H6',244,39,2),('H6',245,39,3),('H6',246,39,4),('H6',247,40,1),('H6',248,40,2),('H6',249,40,3),('H6',250,40,4),('H6',251,40,5),('H6',252,40,6),('H6',253,40,7),('H6',254,40,8),('H6',255,40,9),('H6',256,40,10),('H6',257,40,11),('H6',258,41,1),('H6',259,41,2),('H6',260,41,3),('H6',261,41,4),('H6',262,41,5),('H6',263,41,6),('H6',264,41,7),('H6',265,41,8),('H6',266,41,9),('H6',267,42,1),('H6',268,42,2),('H6',269,42,3),('H6',270,42,4),('H6',271,43,1),('H6',272,43,2),('H6',273,43,3),('H6',274,43,4),('H6',275,44,1),('H6',276,44,2),('H6',277,44,3),('H6',278,44,4),('H6',279,44,5),('H6',280,44,6),('H6',281,44,7),('H6',282,44,8),('H6',283,44,9),('H6',284,44,10),('H6',285,44,11),('H6',286,45,1),('H6',287,45,2),('H6',288,12,1),('H6',289,46,1),('H6',290,46,2),('H6',291,46,3),('H6',292,46,4),('H6',293,46,5),('H6',294,46,6),('H6',295,2,1),('H6',296,47,1),('H6',297,47,2),('H6',298,47,3),('H6',299,48,1),('H6',300,48,2),('H7',1,1,0),('H7',2,1,1),('H7',3,1,2),('H7',4,1,3),('H7',5,1,4),('H7',6,1,5),('H7',7,1,6),('H7',8,1,7),('H7',9,1,8),('H7',10,1,9),('H7',11,1,10),('H7',12,2,0),('H7',13,2,1),('H7',14,3,0),('H7',15,3,1),('H7',16,3,2),('H7',17,3,3),('H7',18,3,4),('H7',19,3,5),('H7',20,4,0),('H7',21,4,1),('H7',22,4,2),('H7',23,4,3),('H7',24,4,4),('H7',25,4,5),('H7',26,4,6),('H7',27,4,7),('H7',28,4,8),('H7',29,4,9),('H7',30,4,10),('H7',31,4,11),('H7',32,4,12),('H7',33,5,0),('H7',34,5,1),('H7',35,5,2),('H7',36,5,3),('H7',37,5,4),('H7',38,6,0),('H7',39,6,1),('H7',40,6,2),('H7',41,7,0),('H7',42,7,1),('H7',43,7,2),('H7',44,7,3),('H7',45,7,4),('H7',46,8,0),('H7',47,9,0),('H7',48,9,1),('H7',49,9,2),('H7',50,9,3),('H7',51,10,0),('H7',52,10,1),('H7',53,10,2),('H7',54,10,3),('H7',55,10,4),('H7',56,10,5),('H7',57,10,6),('H7',58,10,7),('H7',59,10,8),('H7',60,11,0),('H7',61,11,1),('H7',62,11,2),('H7',63,11,3),('H7',64,11,4),('H7',65,11,5),('H7',66,11,6),('H7',67,11,7),('H7',68,11,8),('H7',69,11,9),('H7',70,11,10),('H7',71,11,11),('H7',72,11,12),('H7',73,11,13),('H7',74,11,14),('H7',75,11,15),('H7',76,11,16),('H7',77,11,17),('H7',78,11,18),('H7',79,11,19),('H7',80,11,20),('H7',81,11,21),('H7',82,11,22),('H7',83,11,23),('H7',84,11,24),('H7',85,11,25),('H7',86,11,26),('H7',87,11,27),('H7',88,11,28),('H7',89,11,29),('H7',90,11,30),('H7',91,11,31),('H7',92,12,0),('H7',93,12,1),('H7',94,12,2),('H7',95,12,3),('H7',96,12,4),('H7',97,12,5),('H7',98,13,0),('H7',99,13,1),('H7',100,13,2),('H7',101,13,3),('H7',102,13,4),('H7',103,13,5),('H7',104,13,6),('H7',105,13,7),('H7',106,13,8),('H7',107,13,9),('H7',108,13,10),('H7',109,13,11),('H7',110,13,12),('H7',111,14,0),('H7',112,14,1),('H7',113,14,2),('H7',114,14,3),('H7',115,14,4),('H7',116,14,5),('H7',117,14,6),('H7',118,14,7),('H7',119,14,8),('H7',120,14,9),('H7',121,14,10),('H7',122,14,11),('H7',123,15,0),('H7',124,15,1),('H7',125,15,2),('H7',126,15,3),('H7',127,16,0),('H7',128,16,1),('H7',129,16,2),('H7',130,17,0),('H7',131,17,1),('H7',132,17,2),('H7',133,17,3),('H7',134,17,4),('H7',135,18,0),('H7',136,18,1),('H7',137,18,2),('H7',138,18,3),('H7',139,19,0),('H7',140,19,1),('H7',141,19,2),('H7',142,19,3),('H7',143,19,4),('H7',144,20,0),('H7',145,20,1),('H7',146,20,2),('H7',147,20,3),('H7',148,20,4),('H7',149,20,5),('H7',150,21,0),('H7',151,21,1),('H7',152,21,2),('H7',153,21,3),('H7',154,21,4),('H7',155,21,5),('H7',156,21,6),('H7',157,21,7),('H7',158,21,8),('H7',159,21,9),('H7',160,22,0),('H7',161,22,1),('H7',162,22,2),('H7',163,22,3),('H7',164,22,4),('H7',165,22,5),('H7',166,23,0),('H7',167,23,1),('H7',168,23,2),('H7',169,23,3),('H7',170,24,0),('H7',171,24,1),('H7',172,24,2),('H7',173,25,0),('H7',174,25,1),('H7',175,25,2),('H7',176,25,3),('H7',177,25,4),('H7',178,25,5),('H7',179,26,0),('H7',180,26,1),('H7',181,26,2),('H7',182,27,0),('H7',183,27,1),('H7',184,27,2),('H7',185,27,3),('H7',186,28,0),('H7',187,28,1),('H7',188,28,2),('H7',189,28,3),('H7',190,29,0),('H7',191,29,1),('H7',192,29,2),('H7',193,29,3),('H7',194,30,0),('H7',195,30,1),('H7',196,30,2),('H7',197,30,3),('H7',198,30,4),('H7',199,30,5),('H7',200,30,6),('H7',201,30,7),('H7',202,30,8),('H7',203,30,9),('H7',204,30,10),('H7',205,30,11),('H7',206,30,12),('H7',207,30,13),('H7',208,30,14),('H7',209,30,15),('H7',210,31,1),('H7',211,31,2),('H7',212,31,3),('H7',213,32,1),('H7',214,32,2),('H7',215,32,3),('H7',216,32,4),('H7',217,32,5),('H7',218,32,6),('H7',219,33,1),('H7',220,33,2),('H7',221,33,3),('H7',222,33,4),('H7',223,34,1),('H7',224,34,2),('H7',225,34,3),('H7',226,34,4),('H7',227,34,5),('H7',228,34,6),('H7',229,35,1),('H7',230,35,2),('H7',231,35,3),('H7',232,36,1),('H7',233,36,2),('H7',234,36,3),('H7',235,37,1),('H7',236,37,2),('H7',237,37,3),('H7',238,37,4),('H7',239,38,1),('H7',240,38,2),('H7',241,38,3),('H7',242,38,4),('H7',243,39,1),('H7',244,39,2),('H7',245,39,3),('H7',246,39,4),('H7',247,40,1),('H7',248,40,2),('H7',249,40,3),('H7',250,40,4),('H7',251,40,5),('H7',252,40,6),('H7',253,40,7),('H7',254,40,8),('H7',255,40,9),('H7',256,40,10),('H7',257,40,11),('H7',258,41,1),('H7',259,41,2),('H7',260,41,3),('H7',261,41,4),('H7',262,41,5),('H7',263,41,6),('H7',264,41,7),('H7',265,41,8),('H7',266,41,9),('H7',267,42,1),('H7',268,42,2),('H7',269,42,3),('H7',270,42,4),('H7',271,43,1),('H7',272,43,2),('H7',273,43,3),('H7',274,43,4),('H7',275,44,1),('H7',276,44,2),('H7',277,44,3),('H7',278,44,4),('H7',279,44,5),('H7',280,44,6),('H7',281,44,7),('H7',282,44,8),('H7',283,44,9),('H7',284,44,10),('H7',285,44,11),('H7',286,45,1),('H7',287,45,2),('H7',288,12,1),('H7',289,46,1),('H7',290,46,2),('H7',291,46,3),('H7',292,46,4),('H7',293,46,5),('H7',294,46,6),('H7',295,2,1),('H7',296,47,1),('H7',297,47,2),('H7',298,47,3),('H7',299,48,1),('H7',300,48,2),('H8',1,1,0),('H8',2,1,1),('H8',3,1,2),('H8',4,1,3),('H8',5,1,4),('H8',6,1,5),('H8',7,1,6),('H8',8,1,7),('H8',9,1,8),('H8',10,1,9),('H8',11,1,10),('H8',12,2,0),('H8',13,2,1),('H8',14,3,0),('H8',15,3,1),('H8',16,3,2),('H8',17,3,3),('H8',18,3,4),('H8',19,3,5),('H8',20,4,0),('H8',21,4,1),('H8',22,4,2),('H8',23,4,3),('H8',24,4,4),('H8',25,4,5),('H8',26,4,6),('H8',27,4,7),('H8',28,4,8),('H8',29,4,9),('H8',30,4,10),('H8',31,4,11),('H8',32,4,12),('H8',33,5,0),('H8',34,5,1),('H8',35,5,2),('H8',36,5,3),('H8',37,5,4),('H8',38,6,0),('H8',39,6,1),('H8',40,6,2),('H8',41,7,0),('H8',42,7,1),('H8',43,7,2),('H8',44,7,3),('H8',45,7,4),('H8',46,8,0),('H8',47,9,0),('H8',48,9,1),('H8',49,9,2),('H8',50,9,3),('H8',51,10,0),('H8',52,10,1),('H8',53,10,2),('H8',54,10,3),('H8',55,10,4),('H8',56,10,5),('H8',57,10,6),('H8',58,10,7),('H8',59,10,8),('H8',60,11,0),('H8',61,11,1),('H8',62,11,2),('H8',63,11,3),('H8',64,11,4),('H8',65,11,5),('H8',66,11,6),('H8',67,11,7),('H8',68,11,8),('H8',69,11,9),('H8',70,11,10),('H8',71,11,11),('H8',72,11,12),('H8',73,11,13),('H8',74,11,14),('H8',75,11,15),('H8',76,11,16),('H8',77,11,17),('H8',78,11,18),('H8',79,11,19),('H8',80,11,20),('H8',81,11,21),('H8',82,11,22),('H8',83,11,23),('H8',84,11,24),('H8',85,11,25),('H8',86,11,26),('H8',87,11,27),('H8',88,11,28),('H8',89,11,29),('H8',90,11,30),('H8',91,11,31),('H8',92,12,0),('H8',93,12,1),('H8',94,12,2),('H8',95,12,3),('H8',96,12,4),('H8',97,12,5),('H8',98,13,0),('H8',99,13,1),('H8',100,13,2),('H8',101,13,3),('H8',102,13,4),('H8',103,13,5),('H8',104,13,6),('H8',105,13,7),('H8',106,13,8),('H8',107,13,9),('H8',108,13,10),('H8',109,13,11),('H8',110,13,12),('H8',111,14,0),('H8',112,14,1),('H8',113,14,2),('H8',114,14,3),('H8',115,14,4),('H8',116,14,5),('H8',117,14,6),('H8',118,14,7),('H8',119,14,8),('H8',120,14,9),('H8',121,14,10),('H8',122,14,11),('H8',123,15,0),('H8',124,15,1),('H8',125,15,2),('H8',126,15,3),('H8',127,16,0),('H8',128,16,1),('H8',129,16,2),('H8',130,17,0),('H8',131,17,1),('H8',132,17,2),('H8',133,17,3),('H8',134,17,4),('H8',135,18,0),('H8',136,18,1),('H8',137,18,2),('H8',138,18,3),('H8',139,19,0),('H8',140,19,1),('H8',141,19,2),('H8',142,19,3),('H8',143,19,4),('H8',144,20,0),('H8',145,20,1),('H8',146,20,2),('H8',147,20,3),('H8',148,20,4),('H8',149,20,5),('H8',150,21,0),('H8',151,21,1),('H8',152,21,2),('H8',153,21,3),('H8',154,21,4),('H8',155,21,5),('H8',156,21,6),('H8',157,21,7),('H8',158,21,8),('H8',159,21,9),('H8',160,22,0),('H8',161,22,1),('H8',162,22,2),('H8',163,22,3),('H8',164,22,4),('H8',165,22,5),('H8',166,23,0),('H8',167,23,1),('H8',168,23,2),('H8',169,23,3),('H8',170,24,0),('H8',171,24,1),('H8',172,24,2),('H8',173,25,0),('H8',174,25,1),('H8',175,25,2),('H8',176,25,3),('H8',177,25,4),('H8',178,25,5),('H8',179,26,0),('H8',180,26,1),('H8',181,26,2),('H8',182,27,0),('H8',183,27,1),('H8',184,27,2),('H8',185,27,3),('H8',186,28,0),('H8',187,28,1),('H8',188,28,2),('H8',189,28,3),('H8',190,29,0),('H8',191,29,1),('H8',192,29,2),('H8',193,29,3),('H8',194,30,0),('H8',195,30,1),('H8',196,30,2),('H8',197,30,3),('H8',198,30,4),('H8',199,30,5),('H8',200,30,6),('H8',201,30,7),('H8',202,30,8),('H8',203,30,9),('H8',204,30,10),('H8',205,30,11),('H8',206,30,12),('H8',207,30,13),('H8',208,30,14),('H8',209,30,15),('H8',210,31,1),('H8',211,31,2),('H8',212,31,3),('H8',213,32,1),('H8',214,32,2),('H8',215,32,3),('H8',216,32,4),('H8',217,32,5),('H8',218,32,6),('H8',219,33,1),('H8',220,33,2),('H8',221,33,3),('H8',222,33,4),('H8',223,34,1),('H8',224,34,2),('H8',225,34,3),('H8',226,34,4),('H8',227,34,5),('H8',228,34,6),('H8',229,35,1),('H8',230,35,2),('H8',231,35,3),('H8',232,36,1),('H8',233,36,2),('H8',234,36,3),('H8',235,37,1),('H8',236,37,2),('H8',237,37,3),('H8',238,37,4),('H8',239,38,1),('H8',240,38,2),('H8',241,38,3),('H8',242,38,4),('H8',243,39,1),('H8',244,39,2),('H8',245,39,3),('H8',246,39,4),('H8',247,40,1),('H8',248,40,2),('H8',249,40,3),('H8',250,40,4),('H8',251,40,5),('H8',252,40,6),('H8',253,40,7),('H8',254,40,8),('H8',255,40,9),('H8',256,40,10),('H8',257,40,11),('H8',258,41,1),('H8',259,41,2),('H8',260,41,3),('H8',261,41,4),('H8',262,41,5),('H8',263,41,6),('H8',264,41,7),('H8',265,41,8),('H8',266,41,9),('H8',267,42,1),('H8',268,42,2),('H8',269,42,3),('H8',270,42,4),('H8',271,43,1),('H8',272,43,2),('H8',273,43,3),('H8',274,43,4),('H8',275,44,1),('H8',276,44,2),('H8',277,44,3),('H8',278,44,4),('H8',279,44,5),('H8',280,44,6),('H8',281,44,7),('H8',282,44,8),('H8',283,44,9),('H8',284,44,10),('H8',285,44,11),('H8',286,45,1),('H8',287,45,2),('H8',288,12,1),('H8',289,46,1),('H8',290,46,2),('H8',291,46,3),('H8',292,46,4),('H8',293,46,5),('H8',294,46,6),('H8',295,2,1),('H8',296,47,1),('H8',297,47,2),('H8',298,47,3),('H8',299,48,1),('H8',300,48,2),('H9',1,1,0),('H9',2,1,1),('H9',3,1,2),('H9',4,1,3),('H9',5,1,4),('H9',6,1,5),('H9',7,1,6),('H9',8,1,7),('H9',9,1,8),('H9',10,1,9),('H9',11,1,10),('H9',12,2,0),('H9',13,2,1),('H9',14,3,0),('H9',15,3,1),('H9',16,3,2),('H9',17,3,3),('H9',18,3,4),('H9',19,3,5),('H9',20,4,0),('H9',21,4,1),('H9',22,4,2),('H9',23,4,3),('H9',24,4,4),('H9',25,4,5),('H9',26,4,6),('H9',27,4,7),('H9',28,4,8),('H9',29,4,9),('H9',30,4,10),('H9',31,4,11),('H9',32,4,12),('H9',33,5,0),('H9',34,5,1),('H9',35,5,2),('H9',36,5,3),('H9',37,5,4),('H9',38,6,0),('H9',39,6,1),('H9',40,6,2),('H9',41,7,0),('H9',42,7,1),('H9',43,7,2),('H9',44,7,3),('H9',45,7,4),('H9',46,8,0),('H9',47,9,0),('H9',48,9,1),('H9',49,9,2),('H9',50,9,3),('H9',51,10,0),('H9',52,10,1),('H9',53,10,2),('H9',54,10,3),('H9',55,10,4),('H9',56,10,5),('H9',57,10,6),('H9',58,10,7),('H9',59,10,8),('H9',60,11,0),('H9',61,11,1),('H9',62,11,2),('H9',63,11,3),('H9',64,11,4),('H9',65,11,5),('H9',66,11,6),('H9',67,11,7),('H9',68,11,8),('H9',69,11,9),('H9',70,11,10),('H9',71,11,11),('H9',72,11,12),('H9',73,11,13),('H9',74,11,14),('H9',75,11,15),('H9',76,11,16),('H9',77,11,17),('H9',78,11,18),('H9',79,11,19),('H9',80,11,20),('H9',81,11,21),('H9',82,11,22),('H9',83,11,23),('H9',84,11,24),('H9',85,11,25),('H9',86,11,26),('H9',87,11,27),('H9',88,11,28),('H9',89,11,29),('H9',90,11,30),('H9',91,11,31),('H9',92,12,0),('H9',93,12,1),('H9',94,12,2),('H9',95,12,3),('H9',96,12,4),('H9',97,12,5),('H9',98,13,0),('H9',99,13,1),('H9',100,13,2),('H9',101,13,3),('H9',102,13,4),('H9',103,13,5),('H9',104,13,6),('H9',105,13,7),('H9',106,13,8),('H9',107,13,9),('H9',108,13,10),('H9',109,13,11),('H9',110,13,12),('H9',111,14,0),('H9',112,14,1),('H9',113,14,2),('H9',114,14,3),('H9',115,14,4),('H9',116,14,5),('H9',117,14,6),('H9',118,14,7),('H9',119,14,8),('H9',120,14,9),('H9',121,14,10),('H9',122,14,11),('H9',123,15,0),('H9',124,15,1),('H9',125,15,2),('H9',126,15,3),('H9',127,16,0),('H9',128,16,1),('H9',129,16,2),('H9',130,17,0),('H9',131,17,1),('H9',132,17,2),('H9',133,17,3),('H9',134,17,4),('H9',135,18,0),('H9',136,18,1),('H9',137,18,2),('H9',138,18,3),('H9',139,19,0),('H9',140,19,1),('H9',141,19,2),('H9',142,19,3),('H9',143,19,4),('H9',144,20,0),('H9',145,20,1),('H9',146,20,2),('H9',147,20,3),('H9',148,20,4),('H9',149,20,5),('H9',150,21,0),('H9',151,21,1),('H9',152,21,2),('H9',153,21,3),('H9',154,21,4),('H9',155,21,5),('H9',156,21,6),('H9',157,21,7),('H9',158,21,8),('H9',159,21,9),('H9',160,22,0),('H9',161,22,1),('H9',162,22,2),('H9',163,22,3),('H9',164,22,4),('H9',165,22,5),('H9',166,23,0),('H9',167,23,1),('H9',168,23,2),('H9',169,23,3),('H9',170,24,0),('H9',171,24,1),('H9',172,24,2),('H9',173,25,0),('H9',174,25,1),('H9',175,25,2),('H9',176,25,3),('H9',177,25,4),('H9',178,25,5),('H9',179,26,0),('H9',180,26,1),('H9',181,26,2),('H9',182,27,0),('H9',183,27,1),('H9',184,27,2),('H9',185,27,3),('H9',186,28,0),('H9',187,28,1),('H9',188,28,2),('H9',189,28,3),('H9',190,29,0),('H9',191,29,1),('H9',192,29,2),('H9',193,29,3),('H9',194,30,0),('H9',195,30,1),('H9',196,30,2),('H9',197,30,3),('H9',198,30,4),('H9',199,30,5),('H9',200,30,6),('H9',201,30,7),('H9',202,30,8),('H9',203,30,9),('H9',204,30,10),('H9',205,30,11),('H9',206,30,12),('H9',207,30,13),('H9',208,30,14),('H9',209,30,15),('H9',210,31,1),('H9',211,31,2),('H9',212,31,3),('H9',213,32,1),('H9',214,32,2),('H9',215,32,3),('H9',216,32,4),('H9',217,32,5),('H9',218,32,6),('H9',219,33,1),('H9',220,33,2),('H9',221,33,3),('H9',222,33,4),('H9',223,34,1),('H9',224,34,2),('H9',225,34,3),('H9',226,34,4),('H9',227,34,5),('H9',228,34,6),('H9',229,35,1),('H9',230,35,2),('H9',231,35,3),('H9',232,36,1),('H9',233,36,2),('H9',234,36,3),('H9',235,37,1),('H9',236,37,2),('H9',237,37,3),('H9',238,37,4),('H9',239,38,1),('H9',240,38,2),('H9',241,38,3),('H9',242,38,4),('H9',243,39,1),('H9',244,39,2),('H9',245,39,3),('H9',246,39,4),('H9',247,40,1),('H9',248,40,2),('H9',249,40,3),('H9',250,40,4),('H9',251,40,5),('H9',252,40,6),('H9',253,40,7),('H9',254,40,8),('H9',255,40,9),('H9',256,40,10),('H9',257,40,11),('H9',258,41,1),('H9',259,41,2),('H9',260,41,3),('H9',261,41,4),('H9',262,41,5),('H9',263,41,6),('H9',264,41,7),('H9',265,41,8),('H9',266,41,9),('H9',267,42,1),('H9',268,42,2),('H9',269,42,3),('H9',270,42,4),('H9',271,43,1),('H9',272,43,2),('H9',273,43,3),('H9',274,43,4),('H9',275,44,1),('H9',276,44,2),('H9',277,44,3),('H9',278,44,4),('H9',279,44,5),('H9',280,44,6),('H9',281,44,7),('H9',282,44,8),('H9',283,44,9),('H9',284,44,10),('H9',285,44,11),('H9',286,45,1),('H9',287,45,2),('H9',288,12,1),('H9',289,46,1),('H9',290,46,2),('H9',291,46,3),('H9',292,46,4),('H9',293,46,5),('H9',294,46,6),('H9',295,2,1),('H9',296,47,1),('H9',297,47,2),('H9',298,47,3),('H9',299,48,1),('H9',300,48,2);
/*!40000 ALTER TABLE `vtiger_role2picklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_role2profile`
--

DROP TABLE IF EXISTS `vtiger_role2profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_role2profile` (
  `roleid` varchar(255) NOT NULL,
  `profileid` int(11) NOT NULL,
  PRIMARY KEY (`roleid`,`profileid`),
  KEY `role2profile_roleid_profileid_idx` (`roleid`,`profileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_role2profile`
--

LOCK TABLES `vtiger_role2profile` WRITE;
/*!40000 ALTER TABLE `vtiger_role2profile` DISABLE KEYS */;
INSERT INTO `vtiger_role2profile` VALUES ('H10',1),('H11',9),('H12',1),('H13',10),('H14',11),('H15',12),('H2',1),('H4',2),('H5',2),('H6',5),('H7',6),('H8',7),('H9',8);
/*!40000 ALTER TABLE `vtiger_role2profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_role_seq`
--

DROP TABLE IF EXISTS `vtiger_role_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_role_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_role_seq`
--

LOCK TABLES `vtiger_role_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_role_seq` DISABLE KEYS */;
INSERT INTO `vtiger_role_seq` VALUES (15);
/*!40000 ALTER TABLE `vtiger_role_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_rowheight`
--

DROP TABLE IF EXISTS `vtiger_rowheight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_rowheight` (
  `rowheightid` int(11) NOT NULL AUTO_INCREMENT,
  `rowheight` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowheightid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_rowheight`
--

LOCK TABLES `vtiger_rowheight` WRITE;
/*!40000 ALTER TABLE `vtiger_rowheight` DISABLE KEYS */;
INSERT INTO `vtiger_rowheight` VALUES (1,'wide',1,1),(2,'medium',2,1),(3,'narrow',3,1);
/*!40000 ALTER TABLE `vtiger_rowheight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_rowheight_seq`
--

DROP TABLE IF EXISTS `vtiger_rowheight_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_rowheight_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_rowheight_seq`
--

LOCK TABLES `vtiger_rowheight_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_rowheight_seq` DISABLE KEYS */;
INSERT INTO `vtiger_rowheight_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_rowheight_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_rss`
--

DROP TABLE IF EXISTS `vtiger_rss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_rss` (
  `rssid` int(19) NOT NULL,
  `rssurl` varchar(200) NOT NULL DEFAULT '',
  `rsstitle` varchar(200) DEFAULT NULL,
  `rsstype` int(10) DEFAULT '0',
  `starred` int(1) DEFAULT '0',
  PRIMARY KEY (`rssid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_rss`
--

LOCK TABLES `vtiger_rss` WRITE;
/*!40000 ALTER TABLE `vtiger_rss` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_rss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_sales_stage`
--

DROP TABLE IF EXISTS `vtiger_sales_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_sales_stage` (
  `sales_stage_id` int(19) NOT NULL AUTO_INCREMENT,
  `sales_stage` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`sales_stage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_sales_stage`
--

LOCK TABLES `vtiger_sales_stage` WRITE;
/*!40000 ALTER TABLE `vtiger_sales_stage` DISABLE KEYS */;
INSERT INTO `vtiger_sales_stage` VALUES (1,'Prospecting',1,150,0),(2,'Qualification',1,151,1),(3,'Needs Analysis',1,152,2),(4,'Value Proposition',1,153,3),(5,'Id. Decision Makers',1,154,4),(6,'Perception Analysis',1,155,5),(7,'Proposal or Price Quote',1,156,6),(8,'Negotiation or Review',1,157,7),(9,'Closed Won',0,158,8),(10,'Closed Lost',0,159,9);
/*!40000 ALTER TABLE `vtiger_sales_stage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_sales_stage_seq`
--

DROP TABLE IF EXISTS `vtiger_sales_stage_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_sales_stage_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_sales_stage_seq`
--

LOCK TABLES `vtiger_sales_stage_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_sales_stage_seq` DISABLE KEYS */;
INSERT INTO `vtiger_sales_stage_seq` VALUES (10);
/*!40000 ALTER TABLE `vtiger_sales_stage_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_salesmanactivityrel`
--

DROP TABLE IF EXISTS `vtiger_salesmanactivityrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_salesmanactivityrel` (
  `smid` int(19) NOT NULL DEFAULT '0',
  `activityid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`smid`,`activityid`),
  KEY `salesmanactivityrel_activityid_idx` (`activityid`),
  KEY `salesmanactivityrel_smid_idx` (`smid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_salesmanactivityrel`
--

LOCK TABLES `vtiger_salesmanactivityrel` WRITE;
/*!40000 ALTER TABLE `vtiger_salesmanactivityrel` DISABLE KEYS */;
INSERT INTO `vtiger_salesmanactivityrel` VALUES (1,3),(13,18),(13,19),(13,20),(7,25),(7,29);
/*!40000 ALTER TABLE `vtiger_salesmanactivityrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_salesmanattachmentsrel`
--

DROP TABLE IF EXISTS `vtiger_salesmanattachmentsrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_salesmanattachmentsrel` (
  `smid` int(19) NOT NULL DEFAULT '0',
  `attachmentsid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`smid`,`attachmentsid`),
  KEY `salesmanattachmentsrel_smid_idx` (`smid`),
  KEY `salesmanattachmentsrel_attachmentsid_idx` (`attachmentsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_salesmanattachmentsrel`
--

LOCK TABLES `vtiger_salesmanattachmentsrel` WRITE;
/*!40000 ALTER TABLE `vtiger_salesmanattachmentsrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_salesmanattachmentsrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_salesmanticketrel`
--

DROP TABLE IF EXISTS `vtiger_salesmanticketrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_salesmanticketrel` (
  `smid` int(19) NOT NULL DEFAULT '0',
  `id` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`smid`,`id`),
  KEY `salesmanticketrel_smid_idx` (`smid`),
  KEY `salesmanticketrel_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_salesmanticketrel`
--

LOCK TABLES `vtiger_salesmanticketrel` WRITE;
/*!40000 ALTER TABLE `vtiger_salesmanticketrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_salesmanticketrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_salesorder`
--

DROP TABLE IF EXISTS `vtiger_salesorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_salesorder` (
  `salesorderid` int(19) NOT NULL DEFAULT '0',
  `subject` varchar(100) DEFAULT NULL,
  `potentialid` int(19) DEFAULT NULL,
  `customerno` varchar(100) DEFAULT NULL,
  `salesorder_no` varchar(100) DEFAULT NULL,
  `quoteid` int(19) DEFAULT NULL,
  `vendorterms` varchar(100) DEFAULT NULL,
  `contactid` int(19) DEFAULT NULL,
  `vendorid` int(19) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `carrier` varchar(200) DEFAULT NULL,
  `pending` varchar(200) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `adjustment` decimal(25,8) DEFAULT NULL,
  `salescommission` decimal(25,3) DEFAULT NULL,
  `exciseduty` decimal(25,3) DEFAULT NULL,
  `total` decimal(25,8) DEFAULT NULL,
  `subtotal` decimal(25,8) DEFAULT NULL,
  `taxtype` varchar(25) DEFAULT NULL,
  `discount_percent` decimal(25,3) DEFAULT NULL,
  `discount_amount` decimal(25,8) DEFAULT NULL,
  `s_h_amount` decimal(25,8) DEFAULT NULL,
  `accountid` int(19) DEFAULT NULL,
  `terms_conditions` text,
  `purchaseorder` varchar(200) DEFAULT NULL,
  `sostatus` varchar(200) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT '1.000',
  `enable_recurring` int(11) DEFAULT '0',
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `s_h_percent` int(11) DEFAULT NULL,
  PRIMARY KEY (`salesorderid`),
  KEY `salesorder_vendorid_idx` (`vendorid`),
  KEY `salesorder_contactid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_salesorder`
--

LOCK TABLES `vtiger_salesorder` WRITE;
/*!40000 ALTER TABLE `vtiger_salesorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_salesorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_salesordercf`
--

DROP TABLE IF EXISTS `vtiger_salesordercf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_salesordercf` (
  `salesorderid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`salesorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_salesordercf`
--

LOCK TABLES `vtiger_salesordercf` WRITE;
/*!40000 ALTER TABLE `vtiger_salesordercf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_salesordercf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_salutationtype`
--

DROP TABLE IF EXISTS `vtiger_salutationtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_salutationtype` (
  `salutationid` int(19) NOT NULL AUTO_INCREMENT,
  `salutationtype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`salutationid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_salutationtype`
--

LOCK TABLES `vtiger_salutationtype` WRITE;
/*!40000 ALTER TABLE `vtiger_salutationtype` DISABLE KEYS */;
INSERT INTO `vtiger_salutationtype` VALUES (2,'Mr.',1,161,1),(3,'Ms.',1,162,2),(4,'Mrs.',1,163,3),(5,'Dr.',1,164,4),(6,'Prof.',1,165,5);
/*!40000 ALTER TABLE `vtiger_salutationtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_salutationtype_seq`
--

DROP TABLE IF EXISTS `vtiger_salutationtype_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_salutationtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_salutationtype_seq`
--

LOCK TABLES `vtiger_salutationtype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_salutationtype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_salutationtype_seq` VALUES (6);
/*!40000 ALTER TABLE `vtiger_salutationtype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_scheduled_reports`
--

DROP TABLE IF EXISTS `vtiger_scheduled_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_scheduled_reports` (
  `reportid` int(11) NOT NULL,
  `recipients` text,
  `schedule` text,
  `format` varchar(10) DEFAULT NULL,
  `next_trigger_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`reportid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_scheduled_reports`
--

LOCK TABLES `vtiger_scheduled_reports` WRITE;
/*!40000 ALTER TABLE `vtiger_scheduled_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_scheduled_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_schedulereports`
--

DROP TABLE IF EXISTS `vtiger_schedulereports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_schedulereports` (
  `reportid` int(10) DEFAULT NULL,
  `scheduleid` int(3) DEFAULT NULL,
  `recipients` text,
  `schdate` varchar(20) DEFAULT NULL,
  `schtime` time DEFAULT NULL,
  `schdayoftheweek` varchar(100) DEFAULT NULL,
  `schdayofthemonth` varchar(100) DEFAULT NULL,
  `schannualdates` varchar(500) DEFAULT NULL,
  `specificemails` varchar(500) DEFAULT NULL,
  `next_trigger_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_schedulereports`
--

LOCK TABLES `vtiger_schedulereports` WRITE;
/*!40000 ALTER TABLE `vtiger_schedulereports` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_schedulereports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_seactivityrel`
--

DROP TABLE IF EXISTS `vtiger_seactivityrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_seactivityrel` (
  `crmid` int(19) NOT NULL,
  `activityid` int(19) NOT NULL,
  PRIMARY KEY (`crmid`,`activityid`),
  KEY `seactivityrel_activityid_idx` (`activityid`),
  KEY `seactivityrel_crmid_idx` (`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_seactivityrel`
--

LOCK TABLES `vtiger_seactivityrel` WRITE;
/*!40000 ALTER TABLE `vtiger_seactivityrel` DISABLE KEYS */;
INSERT INTO `vtiger_seactivityrel` VALUES (17,18),(17,19),(17,20),(24,25),(26,27),(30,31),(32,33),(5,34);
/*!40000 ALTER TABLE `vtiger_seactivityrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_seactivityrel_seq`
--

DROP TABLE IF EXISTS `vtiger_seactivityrel_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_seactivityrel_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_seactivityrel_seq`
--

LOCK TABLES `vtiger_seactivityrel_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_seactivityrel_seq` DISABLE KEYS */;
INSERT INTO `vtiger_seactivityrel_seq` VALUES (1);
/*!40000 ALTER TABLE `vtiger_seactivityrel_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_seattachmentsrel`
--

DROP TABLE IF EXISTS `vtiger_seattachmentsrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_seattachmentsrel` (
  `crmid` int(19) NOT NULL DEFAULT '0',
  `attachmentsid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`crmid`,`attachmentsid`),
  KEY `seattachmentsrel_attachmentsid_idx` (`attachmentsid`),
  KEY `seattachmentsrel_crmid_idx` (`crmid`),
  KEY `seattachmentsrel_attachmentsid_crmid_idx` (`attachmentsid`,`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_seattachmentsrel`
--

LOCK TABLES `vtiger_seattachmentsrel` WRITE;
/*!40000 ALTER TABLE `vtiger_seattachmentsrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_seattachmentsrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_selectcolumn`
--

DROP TABLE IF EXISTS `vtiger_selectcolumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_selectcolumn` (
  `queryid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL DEFAULT '0',
  `columnname` varchar(250) DEFAULT '',
  PRIMARY KEY (`queryid`,`columnindex`),
  KEY `selectcolumn_queryid_idx` (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_selectcolumn`
--

LOCK TABLES `vtiger_selectcolumn` WRITE;
/*!40000 ALTER TABLE `vtiger_selectcolumn` DISABLE KEYS */;
INSERT INTO `vtiger_selectcolumn` VALUES (1,0,'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),(1,1,'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),(1,2,'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),(1,3,'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V'),(1,4,'vtiger_account:industry:Accounts_industry:industry:V'),(1,5,'vtiger_contactdetails:email:Contacts_Email:email:E'),(2,0,'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),(2,1,'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),(2,2,'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),(2,3,'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V'),(2,4,'vtiger_account:industry:Accounts_industry:industry:V'),(2,5,'vtiger_contactdetails:email:Contacts_Email:email:E'),(3,0,'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),(3,1,'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),(3,2,'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V'),(3,3,'vtiger_contactdetails:email:Contacts_Email:email:E'),(3,4,'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V'),(3,5,'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V'),(4,0,'vtiger_leaddetails:firstname:Leads_First_Name:firstname:V'),(4,1,'vtiger_leaddetails:lastname:Leads_Last_Name:lastname:V'),(4,2,'vtiger_leaddetails:company:Leads_Company:company:V'),(4,3,'vtiger_leaddetails:email:Leads_Email:email:E'),(4,4,'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V'),(5,0,'vtiger_leaddetails:firstname:Leads_First_Name:firstname:V'),(5,1,'vtiger_leaddetails:lastname:Leads_Last_Name:lastname:V'),(5,2,'vtiger_leaddetails:company:Leads_Company:company:V'),(5,3,'vtiger_leaddetails:email:Leads_Email:email:E'),(5,4,'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V'),(5,5,'vtiger_leaddetails:leadstatus:Leads_Lead_Status:leadstatus:V'),(6,0,'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V'),(6,1,'vtiger_potential:amount:Potentials_Amount:amount:N'),(6,2,'vtiger_potential:potentialtype:Potentials_Type:opportunity_type:V'),(6,3,'vtiger_potential:leadsource:Potentials_Lead_Source:leadsource:V'),(6,4,'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V'),(7,0,'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V'),(7,1,'vtiger_potential:amount:Potentials_Amount:amount:N'),(7,2,'vtiger_potential:potentialtype:Potentials_Type:opportunity_type:V'),(7,3,'vtiger_potential:leadsource:Potentials_Lead_Source:leadsource:V'),(7,4,'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V'),(8,0,'vtiger_activity:subject:Calendar_Subject:subject:V'),(8,1,'vtiger_contactdetailsCalendar:lastname:Calendar_Contact_Name:contact_id:I'),(8,2,'vtiger_activity:status:Calendar_Status:taskstatus:V'),(8,3,'vtiger_activity:priority:Calendar_Priority:taskpriority:V'),(8,4,'vtiger_usersCalendar:user_name:Calendar_Assigned_To:assigned_user_id:V'),(9,0,'vtiger_activity:subject:Calendar_Subject:subject:V'),(9,1,'vtiger_contactdetailsCalendar:lastname:Calendar_Contact_Name:contact_id:I'),(9,2,'vtiger_activity:status:Calendar_Status:taskstatus:V'),(9,3,'vtiger_activity:priority:Calendar_Priority:taskpriority:V'),(9,4,'vtiger_usersCalendar:user_name:Calendar_Assigned_To:assigned_user_id:V'),(10,0,'vtiger_troubletickets:title:HelpDesk_Title:ticket_title:V'),(10,1,'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V'),(10,2,'vtiger_products:productname:Products_Product_Name:productname:V'),(10,3,'vtiger_products:discontinued:Products_Product_Active:discontinued:V'),(10,4,'vtiger_products:productcategory:Products_Product_Category:productcategory:V'),(10,5,'vtiger_products:manufacturer:Products_Manufacturer:manufacturer:V'),(11,0,'vtiger_troubletickets:title:HelpDesk_Title:ticket_title:V'),(11,1,'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V'),(11,2,'vtiger_troubletickets:severity:HelpDesk_Severity:ticketseverities:V'),(11,3,'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V'),(11,4,'vtiger_troubletickets:category:HelpDesk_Category:ticketcategories:V'),(11,5,'vtiger_usersHelpDesk:user_name:HelpDesk_Assigned_To:assigned_user_id:V'),(12,0,'vtiger_troubletickets:title:HelpDesk_Title:ticket_title:V'),(12,1,'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V'),(12,2,'vtiger_troubletickets:severity:HelpDesk_Severity:ticketseverities:V'),(12,3,'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V'),(12,4,'vtiger_troubletickets:category:HelpDesk_Category:ticketcategories:V'),(12,5,'vtiger_usersHelpDesk:user_name:HelpDesk_Assigned_To:assigned_user_id:V'),(13,0,'vtiger_products:productname:Products_Product_Name:productname:V'),(13,1,'vtiger_products:productcode:Products_Product_Code:productcode:V'),(13,2,'vtiger_products:discontinued:Products_Product_Active:discontinued:V'),(13,3,'vtiger_products:productcategory:Products_Product_Category:productcategory:V'),(13,4,'vtiger_products:website:Products_Website:website:V'),(13,5,'vtiger_vendorRelProducts:vendorname:Products_Vendor_Name:vendor_id:I'),(13,6,'vtiger_products:mfr_part_no:Products_Mfr_PartNo:mfr_part_no:V'),(14,0,'vtiger_products:productname:Products_Product_Name:productname:V'),(14,1,'vtiger_products:manufacturer:Products_Manufacturer:manufacturer:V'),(14,2,'vtiger_products:productcategory:Products_Product_Category:productcategory:V'),(14,3,'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),(14,4,'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),(14,5,'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),(15,0,'vtiger_quotes:subject:Quotes_Subject:subject:V'),(15,1,'vtiger_potentialRelQuotes:potentialname:Quotes_Potential_Name:potential_id:I'),(15,2,'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V'),(15,3,'vtiger_quotes:contactid:Quotes_Contact_Name:contact_id:V'),(15,4,'vtiger_usersRel1:user_name:Quotes_Inventory_Manager:assigned_user_id1:I'),(15,5,'vtiger_accountQuotes:accountname:Quotes_Account_Name:account_id:I'),(16,0,'vtiger_quotes:subject:Quotes_Subject:subject:V'),(16,1,'vtiger_potentialRelQuotes:potentialname:Quotes_Potential_Name:potential_id:I'),(16,2,'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V'),(16,3,'vtiger_quotes:contactid:Quotes_Contact_Name:contact_id:V'),(16,4,'vtiger_usersRel1:user_name:Quotes_Inventory_Manager:assigned_user_id1:I'),(16,5,'vtiger_accountQuotes:accountname:Quotes_Account_Name:account_id:I'),(16,6,'vtiger_quotes:carrier:Quotes_Carrier:carrier:V'),(16,7,'vtiger_quotes:shipping:Quotes_Shipping:shipping:V'),(17,0,'vtiger_purchaseorder:subject:PurchaseOrder_Subject:subject:V'),(17,1,'vtiger_vendorRelPurchaseOrder:vendorname:PurchaseOrder_Vendor_Name:vendor_id:I'),(17,2,'vtiger_purchaseorder:tracking_no:PurchaseOrder_Tracking_Number:tracking_no:V'),(17,3,'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),(17,4,'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),(17,5,'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),(17,6,'vtiger_contactdetails:email:Contacts_Email:email:E'),(18,0,'vtiger_purchaseorder:subject:PurchaseOrder_Subject:subject:V'),(18,1,'vtiger_vendorRelPurchaseOrder:vendorname:PurchaseOrder_Vendor_Name:vendor_id:I'),(18,2,'vtiger_purchaseorder:requisition_no:PurchaseOrder_Requisition_No:requisition_no:V'),(18,3,'vtiger_purchaseorder:tracking_no:PurchaseOrder_Tracking_Number:tracking_no:V'),(18,4,'vtiger_contactdetailsPurchaseOrder:lastname:PurchaseOrder_Contact_Name:contact_id:I'),(18,5,'vtiger_purchaseorder:carrier:PurchaseOrder_Carrier:carrier:V'),(18,6,'vtiger_purchaseorder:salescommission:PurchaseOrder_Sales_Commission:salescommission:N'),(18,7,'vtiger_purchaseorder:exciseduty:PurchaseOrder_Excise_Duty:exciseduty:N'),(18,8,'vtiger_usersPurchaseOrder:user_name:PurchaseOrder_Assigned_To:assigned_user_id:V'),(19,0,'vtiger_invoice:subject:Invoice_Subject:subject:V'),(19,1,'vtiger_invoice:salesorderid:Invoice_Sales_Order:salesorder_id:I'),(19,2,'vtiger_invoice:customerno:Invoice_Customer_No:customerno:V'),(19,3,'vtiger_invoice:exciseduty:Invoice_Excise_Duty:exciseduty:N'),(19,4,'vtiger_invoice:salescommission:Invoice_Sales_Commission:salescommission:N'),(19,5,'vtiger_accountInvoice:accountname:Invoice_Account_Name:account_id:I'),(20,0,'vtiger_salesorder:subject:SalesOrder_Subject:subject:V'),(20,1,'vtiger_quotesSalesOrder:subject:SalesOrder_Quote_Name:quote_id:I'),(20,2,'vtiger_contactdetailsSalesOrder:lastname:SalesOrder_Contact_Name:contact_id:I'),(20,3,'vtiger_salesorder:duedate:SalesOrder_Due_Date:duedate:D'),(20,4,'vtiger_salesorder:carrier:SalesOrder_Carrier:carrier:V'),(20,5,'vtiger_salesorder:sostatus:SalesOrder_Status:sostatus:V'),(20,6,'vtiger_accountSalesOrder:accountname:SalesOrder_Account_Name:account_id:I'),(20,7,'vtiger_salesorder:salescommission:SalesOrder_Sales_Commission:salescommission:N'),(20,8,'vtiger_salesorder:exciseduty:SalesOrder_Excise_Duty:exciseduty:N'),(20,9,'vtiger_usersSalesOrder:user_name:SalesOrder_Assigned_To:assigned_user_id:V'),(21,0,'vtiger_campaign:campaignname:Campaigns_Campaign_Name:campaignname:V'),(21,1,'vtiger_campaign:campaigntype:Campaigns_Campaign_Type:campaigntype:V'),(21,2,'vtiger_campaign:targetaudience:Campaigns_Target_Audience:targetaudience:V'),(21,3,'vtiger_campaign:budgetcost:Campaigns_Budget_Cost:budgetcost:I'),(21,4,'vtiger_campaign:actualcost:Campaigns_Actual_Cost:actualcost:I'),(21,5,'vtiger_campaign:expectedrevenue:Campaigns_Expected_Revenue:expectedrevenue:I'),(21,6,'vtiger_campaign:expectedsalescount:Campaigns_Expected_Sales_Count:expectedsalescount:N'),(21,7,'vtiger_campaign:actualsalescount:Campaigns_Actual_Sales_Count:actualsalescount:N'),(21,8,'vtiger_usersCampaigns:user_name:Campaigns_Assigned_To:assigned_user_id:V'),(22,0,'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),(22,1,'vtiger_contactdetails:email:Contacts_Email:email:E'),(22,2,'vtiger_activity:subject:Emails_Subject:subject:V'),(22,3,'vtiger_email_track:access_count:Emails_Access_Count:access_count:V'),(23,0,'vtiger_account:accountname:Accounts_Account_Name:accountname:V'),(23,1,'vtiger_account:phone:Accounts_Phone:phone:V'),(23,2,'vtiger_account:email1:Accounts_Email:email1:E'),(23,3,'vtiger_activity:subject:Emails_Subject:subject:V'),(23,4,'vtiger_email_track:access_count:Emails_Access_Count:access_count:V'),(24,0,'vtiger_leaddetails:lastname:Leads_Last_Name:lastname:V'),(24,1,'vtiger_leaddetails:company:Leads_Company:company:V'),(24,2,'vtiger_leaddetails:email:Leads_Email:email:E'),(24,3,'vtiger_activity:subject:Emails_Subject:subject:V'),(24,4,'vtiger_email_track:access_count:Emails_Access_Count:access_count:V'),(25,0,'vtiger_vendor:vendorname:Vendors_Vendor_Name:vendorname:V'),(25,1,'vtiger_vendor:glacct:Vendors_GL_Account:glacct:V'),(25,2,'vtiger_vendor:email:Vendors_Email:email:E'),(25,3,'vtiger_activity:subject:Emails_Subject:subject:V'),(25,4,'vtiger_email_track:access_count:Emails_Access_Count:access_count:V');
/*!40000 ALTER TABLE `vtiger_selectcolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_selectquery`
--

DROP TABLE IF EXISTS `vtiger_selectquery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_selectquery` (
  `queryid` int(19) NOT NULL,
  `startindex` int(19) DEFAULT '0',
  `numofobjects` int(19) DEFAULT '0',
  PRIMARY KEY (`queryid`),
  KEY `selectquery_queryid_idx` (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_selectquery`
--

LOCK TABLES `vtiger_selectquery` WRITE;
/*!40000 ALTER TABLE `vtiger_selectquery` DISABLE KEYS */;
INSERT INTO `vtiger_selectquery` VALUES (1,0,0),(2,0,0),(3,0,0),(4,0,0),(5,0,0),(6,0,0),(7,0,0),(8,0,0),(9,0,0),(10,0,0),(11,0,0),(12,0,0),(13,0,0),(14,0,0),(15,0,0),(16,0,0),(17,0,0),(18,0,0),(19,0,0),(20,0,0),(21,0,0),(22,0,0),(23,0,0),(24,0,0),(25,0,0);
/*!40000 ALTER TABLE `vtiger_selectquery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_selectquery_seq`
--

DROP TABLE IF EXISTS `vtiger_selectquery_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_selectquery_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_selectquery_seq`
--

LOCK TABLES `vtiger_selectquery_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_selectquery_seq` DISABLE KEYS */;
INSERT INTO `vtiger_selectquery_seq` VALUES (25);
/*!40000 ALTER TABLE `vtiger_selectquery_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_senotesrel`
--

DROP TABLE IF EXISTS `vtiger_senotesrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_senotesrel` (
  `crmid` int(19) NOT NULL DEFAULT '0',
  `notesid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`crmid`,`notesid`),
  KEY `senotesrel_notesid_idx` (`notesid`),
  KEY `senotesrel_crmid_idx` (`crmid`),
  CONSTRAINT `fk1_crmid` FOREIGN KEY (`crmid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_senotesrel`
--

LOCK TABLES `vtiger_senotesrel` WRITE;
/*!40000 ALTER TABLE `vtiger_senotesrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_senotesrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_seproductsrel`
--

DROP TABLE IF EXISTS `vtiger_seproductsrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_seproductsrel` (
  `crmid` int(19) NOT NULL DEFAULT '0',
  `productid` int(19) NOT NULL DEFAULT '0',
  `setype` varchar(30) NOT NULL,
  PRIMARY KEY (`crmid`,`productid`),
  KEY `seproductsrel_productid_idx` (`productid`),
  KEY `seproductrel_crmid_idx` (`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_seproductsrel`
--

LOCK TABLES `vtiger_seproductsrel` WRITE;
/*!40000 ALTER TABLE `vtiger_seproductsrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_seproductsrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_service`
--

DROP TABLE IF EXISTS `vtiger_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_service` (
  `serviceid` int(11) NOT NULL,
  `service_no` varchar(100) NOT NULL,
  `servicename` varchar(50) NOT NULL,
  `servicecategory` varchar(200) DEFAULT NULL,
  `qty_per_unit` decimal(11,2) DEFAULT '0.00',
  `unit_price` decimal(25,8) DEFAULT NULL,
  `sales_start_date` date DEFAULT NULL,
  `sales_end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `discontinued` int(1) NOT NULL DEFAULT '0',
  `service_usageunit` varchar(200) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `taxclass` varchar(200) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `commissionrate` decimal(7,3) DEFAULT NULL,
  PRIMARY KEY (`serviceid`),
  CONSTRAINT `fk_1_vtiger_service` FOREIGN KEY (`serviceid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_service`
--

LOCK TABLES `vtiger_service` WRITE;
/*!40000 ALTER TABLE `vtiger_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_service_usageunit`
--

DROP TABLE IF EXISTS `vtiger_service_usageunit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_service_usageunit` (
  `service_usageunitid` int(11) NOT NULL AUTO_INCREMENT,
  `service_usageunit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`service_usageunitid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_service_usageunit`
--

LOCK TABLES `vtiger_service_usageunit` WRITE;
/*!40000 ALTER TABLE `vtiger_service_usageunit` DISABLE KEYS */;
INSERT INTO `vtiger_service_usageunit` VALUES (1,'Hours',1,210,1),(2,'Days',1,211,2),(3,'Incidents',1,212,3);
/*!40000 ALTER TABLE `vtiger_service_usageunit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_service_usageunit_seq`
--

DROP TABLE IF EXISTS `vtiger_service_usageunit_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_service_usageunit_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_service_usageunit_seq`
--

LOCK TABLES `vtiger_service_usageunit_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_service_usageunit_seq` DISABLE KEYS */;
INSERT INTO `vtiger_service_usageunit_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_service_usageunit_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_servicecategory`
--

DROP TABLE IF EXISTS `vtiger_servicecategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_servicecategory` (
  `servicecategoryid` int(11) NOT NULL AUTO_INCREMENT,
  `servicecategory` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`servicecategoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_servicecategory`
--

LOCK TABLES `vtiger_servicecategory` WRITE;
/*!40000 ALTER TABLE `vtiger_servicecategory` DISABLE KEYS */;
INSERT INTO `vtiger_servicecategory` VALUES (2,'Support',1,214,2),(3,'Installation',1,215,3),(4,'Migration',1,216,4),(5,'Customization',1,217,5),(6,'Training',1,218,6);
/*!40000 ALTER TABLE `vtiger_servicecategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_servicecategory_seq`
--

DROP TABLE IF EXISTS `vtiger_servicecategory_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_servicecategory_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_servicecategory_seq`
--

LOCK TABLES `vtiger_servicecategory_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_servicecategory_seq` DISABLE KEYS */;
INSERT INTO `vtiger_servicecategory_seq` VALUES (6);
/*!40000 ALTER TABLE `vtiger_servicecategory_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_servicecf`
--

DROP TABLE IF EXISTS `vtiger_servicecf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_servicecf` (
  `serviceid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_servicecf`
--

LOCK TABLES `vtiger_servicecf` WRITE;
/*!40000 ALTER TABLE `vtiger_servicecf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_servicecf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_servicecontracts`
--

DROP TABLE IF EXISTS `vtiger_servicecontracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_servicecontracts` (
  `servicecontractsid` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `sc_related_to` int(11) DEFAULT NULL,
  `tracking_unit` varchar(100) DEFAULT NULL,
  `total_units` decimal(5,2) DEFAULT NULL,
  `used_units` decimal(5,2) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `planned_duration` varchar(256) DEFAULT NULL,
  `actual_duration` varchar(256) DEFAULT NULL,
  `contract_status` varchar(200) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `contract_type` varchar(200) DEFAULT NULL,
  `progress` decimal(5,2) DEFAULT NULL,
  `contract_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_servicecontracts`
--

LOCK TABLES `vtiger_servicecontracts` WRITE;
/*!40000 ALTER TABLE `vtiger_servicecontracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_servicecontracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_servicecontractscf`
--

DROP TABLE IF EXISTS `vtiger_servicecontractscf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_servicecontractscf` (
  `servicecontractsid` int(11) NOT NULL,
  PRIMARY KEY (`servicecontractsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_servicecontractscf`
--

LOCK TABLES `vtiger_servicecontractscf` WRITE;
/*!40000 ALTER TABLE `vtiger_servicecontractscf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_servicecontractscf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_seticketsrel`
--

DROP TABLE IF EXISTS `vtiger_seticketsrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_seticketsrel` (
  `crmid` int(19) NOT NULL DEFAULT '0',
  `ticketid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`crmid`,`ticketid`),
  KEY `seticketsrel_crmid_idx` (`crmid`),
  KEY `seticketsrel_ticketid_idx` (`ticketid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_seticketsrel`
--

LOCK TABLES `vtiger_seticketsrel` WRITE;
/*!40000 ALTER TABLE `vtiger_seticketsrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_seticketsrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_settings_blocks`
--

DROP TABLE IF EXISTS `vtiger_settings_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_settings_blocks` (
  `blockid` int(19) NOT NULL,
  `label` varchar(250) DEFAULT NULL,
  `sequence` int(19) DEFAULT NULL,
  PRIMARY KEY (`blockid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_settings_blocks`
--

LOCK TABLES `vtiger_settings_blocks` WRITE;
/*!40000 ALTER TABLE `vtiger_settings_blocks` DISABLE KEYS */;
INSERT INTO `vtiger_settings_blocks` VALUES (1,'LBL_USER_MANAGEMENT',1),(2,'LBL_STUDIO',2),(3,'LBL_COMMUNICATION_TEMPLATES',3),(4,'LBL_OTHER_SETTINGS',4),(5,'LBL_INTEGRATION',5);
/*!40000 ALTER TABLE `vtiger_settings_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_settings_blocks_seq`
--

DROP TABLE IF EXISTS `vtiger_settings_blocks_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_settings_blocks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_settings_blocks_seq`
--

LOCK TABLES `vtiger_settings_blocks_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_settings_blocks_seq` DISABLE KEYS */;
INSERT INTO `vtiger_settings_blocks_seq` VALUES (5);
/*!40000 ALTER TABLE `vtiger_settings_blocks_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_settings_field`
--

DROP TABLE IF EXISTS `vtiger_settings_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_settings_field` (
  `fieldid` int(19) NOT NULL,
  `blockid` int(19) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `iconpath` varchar(300) DEFAULT NULL,
  `description` text,
  `linkto` text,
  `sequence` int(19) DEFAULT NULL,
  `active` int(19) DEFAULT '0',
  `pinned` int(1) DEFAULT '0',
  PRIMARY KEY (`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_settings_field`
--

LOCK TABLES `vtiger_settings_field` WRITE;
/*!40000 ALTER TABLE `vtiger_settings_field` DISABLE KEYS */;
INSERT INTO `vtiger_settings_field` VALUES (1,1,'LBL_USERS','ico-users.gif','LBL_USER_DESCRIPTION','index.php?module=Users&parent=Settings&view=List',1,0,1),(2,1,'LBL_ROLES','ico-roles.gif','LBL_ROLE_DESCRIPTION','index.php?module=Roles&parent=Settings&view=Index',2,0,0),(3,1,'LBL_PROFILES','ico-profile.gif','LBL_PROFILE_DESCRIPTION','index.php?module=Profiles&parent=Settings&view=List',3,0,0),(4,1,'USERGROUPLIST','ico-groups.gif','LBL_GROUP_DESCRIPTION','index.php?module=Groups&parent=Settings&view=List',4,0,0),(5,1,'LBL_SHARING_ACCESS','shareaccess.gif','LBL_SHARING_ACCESS_DESCRIPTION','index.php?module=SharingAccess&parent=Settings&view=Index',5,0,0),(6,1,'LBL_FIELDS_ACCESS','orgshar.gif','LBL_SHARING_FIELDS_DESCRIPTION','index.php?module=FieldAccess&parent=Settings&view=Index',6,0,0),(7,1,'LBL_LOGIN_HISTORY_DETAILS','set-IcoLoginHistory.gif','LBL_LOGIN_HISTORY_DESCRIPTION','index.php?module=LoginHistory&parent=Settings&view=List',7,0,0),(8,2,'VTLIB_LBL_MODULE_MANAGER','vtlib_modmng.gif','VTLIB_LBL_MODULE_MANAGER_DESCRIPTION','index.php?module=ModuleManager&parent=Settings&view=List',8,0,1),(9,2,'LBL_PICKLIST_EDITOR','picklist.gif','LBL_PICKLIST_DESCRIPTION','index.php?parent=Settings&module=Picklist&view=Index',1,0,1),(10,2,'LBL_PICKLIST_DEPENDENCY_SETUP','picklistdependency.gif','LBL_PICKLIST_DEPENDENCY_DESCRIPTION','index.php?parent=Settings&module=PickListDependency&view=List',2,0,0),(11,2,'LBL_MENU_EDITOR','menueditor.png','LBL_MENU_DESC','index.php?module=MenuEditor&parent=Settings&view=Index',3,0,0),(12,3,'NOTIFICATIONSCHEDULERS','notification.gif','LBL_NOTIF_SCHED_DESCRIPTION','index.php?module=Settings&view=listnotificationschedulers&parenttab=Settings',4,0,0),(13,3,'INVENTORYNOTIFICATION','inventory.gif','LBL_INV_NOTIF_DESCRIPTION','index.php?module=Settings&view=listinventorynotifications&parenttab=Settings',1,0,0),(14,3,'LBL_COMPANY_DETAILS','company.gif','LBL_COMPANY_DESCRIPTION','index.php?parent=Settings&module=Vtiger&view=CompanyDetails',2,0,0),(15,4,'LBL_MAIL_SERVER_SETTINGS','ogmailserver.gif','LBL_MAIL_SERVER_DESCRIPTION','index.php?parent=Settings&module=Vtiger&view=OutgoingServerDetail',3,0,0),(16,4,'LBL_CURRENCY_SETTINGS','currency.gif','LBL_CURRENCY_DESCRIPTION','index.php?parent=Settings&module=Currency&view=List',4,0,0),(17,4,'LBL_TAX_SETTINGS','taxConfiguration.gif','LBL_TAX_DESCRIPTION','index.php?module=Vtiger&parent=Settings&view=TaxIndex',5,0,0),(18,4,'LBL_SYSTEM_INFO','system.gif','LBL_SYSTEM_DESCRIPTION','index.php?module=Settings&submodule=Server&view=ProxyConfig',6,1,0),(19,4,'LBL_ANNOUNCEMENT','announ.gif','LBL_ANNOUNCEMENT_DESCRIPTION','index.php?parent=Settings&module=Vtiger&view=AnnouncementEdit',1,0,0),(20,4,'LBL_DEFAULT_MODULE_VIEW','set-IcoTwoTabConfig.gif','LBL_DEFAULT_MODULE_VIEW_DESC','index.php?module=Settings&action=DefModuleView&parenttab=Settings',2,0,0),(21,4,'INVENTORYTERMSANDCONDITIONS','terms.gif','LBL_INV_TANDC_DESCRIPTION','index.php?parent=Settings&module=Vtiger&view=TermsAndConditionsEdit',3,0,0),(22,4,'LBL_CUSTOMIZE_MODENT_NUMBER','settingsInvNumber.gif','LBL_CUSTOMIZE_MODENT_NUMBER_DESCRIPTION','index.php?module=Vtiger&parent=Settings&view=CustomRecordNumbering',4,0,0),(23,4,'LBL_MAIL_SCANNER','mailScanner.gif','LBL_MAIL_SCANNER_DESCRIPTION','index.php?parent=Settings&module=MailConverter&view=List',5,0,0),(24,4,'LBL_LIST_WORKFLOWS','settingsWorkflow.png','LBL_LIST_WORKFLOWS_DESCRIPTION','index.php?module=Workflows&parent=Settings&view=List',6,0,1),(25,4,'LBL_CONFIG_EDITOR','migrate.gif','LBL_CONFIG_EDITOR_DESCRIPTION','index.php?module=Vtiger&parent=Settings&view=ConfigEditorDetail',7,0,0),(26,4,'Scheduler','Cron.png','Allows you to Configure Cron Task','index.php?module=CronTasks&parent=Settings&view=List',8,0,0),(27,4,'LBL_WORKFLOW_LIST','settingsWorkflow.png','LBL_AVAILABLE_WORKLIST_LIST','index.php?module=com_vtiger_workflow&action=workflowlist',8,0,0),(28,5,'LBL_PBXMANAGER','','PBXManager module Configuration','index.php?module=PBXManager&parent=Settings&view=Index',2,0,0),(29,4,'ModTracker','set-IcoLoginHistory.gif','LBL_MODTRACKER_DESCRIPTION','index.php?module=ModTracker&action=BasicSettings&parenttab=Settings&formodule=ModTracker',9,0,0),(30,4,'LBL_CUSTOMER_PORTAL','portal_icon.png','PORTAL_EXTENSION_DESCRIPTION','index.php?module=CustomerPortal&action=index&parenttab=Settings',10,0,0),(31,4,'Webforms','modules/Webforms/img/Webform.png','LBL_WEBFORMS_DESCRIPTION','index.php?module=Webforms&action=index&parenttab=Settings',11,0,0),(32,2,'LBL_EDIT_FIELDS','','LBL_LAYOUT_EDITOR_DESCRIPTION','index.php?module=LayoutEditor&parent=Settings&view=Index',NULL,0,0);
/*!40000 ALTER TABLE `vtiger_settings_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_settings_field_seq`
--

DROP TABLE IF EXISTS `vtiger_settings_field_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_settings_field_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_settings_field_seq`
--

LOCK TABLES `vtiger_settings_field_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_settings_field_seq` DISABLE KEYS */;
INSERT INTO `vtiger_settings_field_seq` VALUES (32);
/*!40000 ALTER TABLE `vtiger_settings_field_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_sharedcalendar`
--

DROP TABLE IF EXISTS `vtiger_sharedcalendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_sharedcalendar` (
  `userid` int(19) NOT NULL,
  `sharedid` int(19) NOT NULL,
  PRIMARY KEY (`userid`,`sharedid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_sharedcalendar`
--

LOCK TABLES `vtiger_sharedcalendar` WRITE;
/*!40000 ALTER TABLE `vtiger_sharedcalendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_sharedcalendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_shareduserinfo`
--

DROP TABLE IF EXISTS `vtiger_shareduserinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_shareduserinfo` (
  `userid` int(19) NOT NULL DEFAULT '0',
  `shareduserid` int(19) NOT NULL DEFAULT '0',
  `color` varchar(50) DEFAULT NULL,
  `visible` int(19) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_shareduserinfo`
--

LOCK TABLES `vtiger_shareduserinfo` WRITE;
/*!40000 ALTER TABLE `vtiger_shareduserinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_shareduserinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_shippingtaxinfo`
--

DROP TABLE IF EXISTS `vtiger_shippingtaxinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_shippingtaxinfo` (
  `taxid` int(3) NOT NULL,
  `taxname` varchar(50) DEFAULT NULL,
  `taxlabel` varchar(50) DEFAULT NULL,
  `percentage` decimal(7,3) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`taxid`),
  KEY `shippingtaxinfo_taxname_idx` (`taxname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_shippingtaxinfo`
--

LOCK TABLES `vtiger_shippingtaxinfo` WRITE;
/*!40000 ALTER TABLE `vtiger_shippingtaxinfo` DISABLE KEYS */;
INSERT INTO `vtiger_shippingtaxinfo` VALUES (1,'shtax1','VAT',4.500,0),(2,'shtax2','Sales',10.000,0),(3,'shtax3','Service',12.500,0);
/*!40000 ALTER TABLE `vtiger_shippingtaxinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_shippingtaxinfo_seq`
--

DROP TABLE IF EXISTS `vtiger_shippingtaxinfo_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_shippingtaxinfo_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_shippingtaxinfo_seq`
--

LOCK TABLES `vtiger_shippingtaxinfo_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_shippingtaxinfo_seq` DISABLE KEYS */;
INSERT INTO `vtiger_shippingtaxinfo_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_shippingtaxinfo_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_shorturls`
--

DROP TABLE IF EXISTS `vtiger_shorturls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_shorturls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) DEFAULT NULL,
  `handler_path` varchar(400) DEFAULT NULL,
  `handler_class` varchar(100) DEFAULT NULL,
  `handler_function` varchar(100) DEFAULT NULL,
  `handler_data` varchar(255) DEFAULT NULL,
  `onetime` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_shorturls`
--

LOCK TABLES `vtiger_shorturls` WRITE;
/*!40000 ALTER TABLE `vtiger_shorturls` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_shorturls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_smsnotifier`
--

DROP TABLE IF EXISTS `vtiger_smsnotifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_smsnotifier` (
  `smsnotifierid` int(11) DEFAULT NULL,
  `message` text,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_smsnotifier`
--

LOCK TABLES `vtiger_smsnotifier` WRITE;
/*!40000 ALTER TABLE `vtiger_smsnotifier` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_smsnotifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_smsnotifier_servers`
--

DROP TABLE IF EXISTS `vtiger_smsnotifier_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_smsnotifier_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `isactive` int(1) DEFAULT NULL,
  `providertype` varchar(50) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `parameters` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_smsnotifier_servers`
--

LOCK TABLES `vtiger_smsnotifier_servers` WRITE;
/*!40000 ALTER TABLE `vtiger_smsnotifier_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_smsnotifier_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_smsnotifier_status`
--

DROP TABLE IF EXISTS `vtiger_smsnotifier_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_smsnotifier_status` (
  `smsnotifierid` int(11) DEFAULT NULL,
  `tonumber` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `smsmessageid` varchar(50) DEFAULT NULL,
  `needlookup` int(1) DEFAULT '1',
  `statusid` int(11) NOT NULL AUTO_INCREMENT,
  `statusmessage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`statusid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_smsnotifier_status`
--

LOCK TABLES `vtiger_smsnotifier_status` WRITE;
/*!40000 ALTER TABLE `vtiger_smsnotifier_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_smsnotifier_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_smsnotifiercf`
--

DROP TABLE IF EXISTS `vtiger_smsnotifiercf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_smsnotifiercf` (
  `smsnotifierid` int(11) NOT NULL,
  PRIMARY KEY (`smsnotifierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_smsnotifiercf`
--

LOCK TABLES `vtiger_smsnotifiercf` WRITE;
/*!40000 ALTER TABLE `vtiger_smsnotifiercf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_smsnotifiercf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_soapservice`
--

DROP TABLE IF EXISTS `vtiger_soapservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_soapservice` (
  `id` int(19) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `sessionid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_soapservice`
--

LOCK TABLES `vtiger_soapservice` WRITE;
/*!40000 ALTER TABLE `vtiger_soapservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_soapservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_sobillads`
--

DROP TABLE IF EXISTS `vtiger_sobillads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_sobillads` (
  `sobilladdressid` int(19) NOT NULL DEFAULT '0',
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sobilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_sobillads`
--

LOCK TABLES `vtiger_sobillads` WRITE;
/*!40000 ALTER TABLE `vtiger_sobillads` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_sobillads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_soshipads`
--

DROP TABLE IF EXISTS `vtiger_soshipads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_soshipads` (
  `soshipaddressid` int(19) NOT NULL DEFAULT '0',
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`soshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_soshipads`
--

LOCK TABLES `vtiger_soshipads` WRITE;
/*!40000 ALTER TABLE `vtiger_soshipads` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_soshipads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_sostatus`
--

DROP TABLE IF EXISTS `vtiger_sostatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_sostatus` (
  `sostatusid` int(19) NOT NULL AUTO_INCREMENT,
  `sostatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`sostatusid`),
  UNIQUE KEY `sostatus_sostatus_idx` (`sostatus`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_sostatus`
--

LOCK TABLES `vtiger_sostatus` WRITE;
/*!40000 ALTER TABLE `vtiger_sostatus` DISABLE KEYS */;
INSERT INTO `vtiger_sostatus` VALUES (1,'Created',0,166,0),(2,'Approved',0,167,1),(3,'Delivered',0,168,2),(4,'Cancelled',0,169,3);
/*!40000 ALTER TABLE `vtiger_sostatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_sostatus_seq`
--

DROP TABLE IF EXISTS `vtiger_sostatus_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_sostatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_sostatus_seq`
--

LOCK TABLES `vtiger_sostatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_sostatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_sostatus_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_sostatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_sostatushistory`
--

DROP TABLE IF EXISTS `vtiger_sostatushistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_sostatushistory` (
  `historyid` int(19) NOT NULL AUTO_INCREMENT,
  `salesorderid` int(19) NOT NULL,
  `accountname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `sostatus` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  KEY `sostatushistory_salesorderid_idx` (`salesorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_sostatushistory`
--

LOCK TABLES `vtiger_sostatushistory` WRITE;
/*!40000 ALTER TABLE `vtiger_sostatushistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_sostatushistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_sqltimelog`
--

DROP TABLE IF EXISTS `vtiger_sqltimelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_sqltimelog` (
  `id` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `data` text,
  `started` decimal(20,6) DEFAULT NULL,
  `ended` decimal(20,6) DEFAULT NULL,
  `loggedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_sqltimelog`
--

LOCK TABLES `vtiger_sqltimelog` WRITE;
/*!40000 ALTER TABLE `vtiger_sqltimelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_sqltimelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_start_hour`
--

DROP TABLE IF EXISTS `vtiger_start_hour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_start_hour` (
  `start_hourid` int(11) NOT NULL AUTO_INCREMENT,
  `start_hour` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`start_hourid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_start_hour`
--

LOCK TABLES `vtiger_start_hour` WRITE;
/*!40000 ALTER TABLE `vtiger_start_hour` DISABLE KEYS */;
INSERT INTO `vtiger_start_hour` VALUES (1,'00:00',1,1),(2,'01:00',2,1),(3,'02:00',3,1),(4,'03:00',4,1),(5,'04:00',5,1),(6,'05:00',6,1),(7,'06:00',7,1),(8,'07:00',8,1),(9,'08:00',9,1),(10,'09:00',10,1),(11,'10:00',11,1),(12,'11:00',12,1),(13,'12:00',13,1),(14,'13:00',14,1),(15,'14:00',15,1),(16,'15:00',16,1),(17,'16:00',17,1),(18,'17:00',18,1),(19,'18:00',19,1),(20,'19:00',20,1),(21,'20:00',21,1),(22,'21:00',22,1),(23,'22:00',23,1),(24,'23:00',24,1);
/*!40000 ALTER TABLE `vtiger_start_hour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_start_hour_seq`
--

DROP TABLE IF EXISTS `vtiger_start_hour_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_start_hour_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_start_hour_seq`
--

LOCK TABLES `vtiger_start_hour_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_start_hour_seq` DISABLE KEYS */;
INSERT INTO `vtiger_start_hour_seq` VALUES (24);
/*!40000 ALTER TABLE `vtiger_start_hour_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_status`
--

DROP TABLE IF EXISTS `vtiger_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_status` (
  `statusid` int(19) NOT NULL AUTO_INCREMENT,
  `status` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`statusid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_status`
--

LOCK TABLES `vtiger_status` WRITE;
/*!40000 ALTER TABLE `vtiger_status` DISABLE KEYS */;
INSERT INTO `vtiger_status` VALUES (1,'Active',0,1),(2,'Inactive',1,1);
/*!40000 ALTER TABLE `vtiger_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_status_seq`
--

DROP TABLE IF EXISTS `vtiger_status_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_status_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_status_seq`
--

LOCK TABLES `vtiger_status_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_status_seq` DISABLE KEYS */;
INSERT INTO `vtiger_status_seq` VALUES (2);
/*!40000 ALTER TABLE `vtiger_status_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_systems`
--

DROP TABLE IF EXISTS `vtiger_systems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_systems` (
  `id` int(19) NOT NULL,
  `server` varchar(100) DEFAULT NULL,
  `server_port` int(19) DEFAULT NULL,
  `server_username` varchar(100) DEFAULT NULL,
  `server_password` varchar(100) DEFAULT NULL,
  `server_type` varchar(20) DEFAULT NULL,
  `smtp_auth` varchar(5) DEFAULT NULL,
  `server_path` varchar(256) DEFAULT NULL,
  `from_email_field` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_systems`
--

LOCK TABLES `vtiger_systems` WRITE;
/*!40000 ALTER TABLE `vtiger_systems` DISABLE KEYS */;
INSERT INTO `vtiger_systems` VALUES (1,'ssl://smtp.gmail.com:465',0,'danzi.tn@gmail.com','1298qazplm!','email','1','0','danzi.tn@gmail.com');
/*!40000 ALTER TABLE `vtiger_systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_systems_seq`
--

DROP TABLE IF EXISTS `vtiger_systems_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_systems_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_systems_seq`
--

LOCK TABLES `vtiger_systems_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_systems_seq` DISABLE KEYS */;
INSERT INTO `vtiger_systems_seq` VALUES (1);
/*!40000 ALTER TABLE `vtiger_systems_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tab`
--

DROP TABLE IF EXISTS `vtiger_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_tab` (
  `tabid` int(19) NOT NULL DEFAULT '0',
  `name` varchar(25) NOT NULL,
  `presence` int(19) NOT NULL DEFAULT '1',
  `tabsequence` int(10) DEFAULT NULL,
  `tablabel` varchar(25) NOT NULL,
  `modifiedby` int(19) DEFAULT NULL,
  `modifiedtime` int(19) DEFAULT NULL,
  `customized` int(19) DEFAULT NULL,
  `ownedby` int(19) DEFAULT NULL,
  `isentitytype` int(11) NOT NULL DEFAULT '1',
  `trial` int(1) NOT NULL DEFAULT '0',
  `version` varchar(10) DEFAULT NULL,
  `parent` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tabid`),
  UNIQUE KEY `tab_name_idx` (`name`),
  KEY `tab_modifiedby_idx` (`modifiedby`),
  KEY `tab_tabid_idx` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_tab`
--

LOCK TABLES `vtiger_tab` WRITE;
/*!40000 ALTER TABLE `vtiger_tab` DISABLE KEYS */;
INSERT INTO `vtiger_tab` VALUES (1,'Dashboard',0,-1,'Dashboards',NULL,NULL,0,1,0,0,NULL,'Analytics'),(2,'Potentials',0,5,'Potentials',NULL,NULL,0,0,1,0,NULL,'Sales'),(3,'Home',0,-1,'Home',NULL,NULL,0,1,0,0,NULL,NULL),(4,'Contacts',0,4,'Contacts',NULL,NULL,0,0,1,0,NULL,'Sales'),(6,'Accounts',0,3,'Accounts',NULL,NULL,0,0,1,0,NULL,'Sales'),(7,'Leads',0,2,'Leads',NULL,NULL,0,0,1,0,NULL,'Sales'),(8,'Documents',0,-1,'Documents',NULL,NULL,0,0,1,0,NULL,'Tools'),(9,'Calendar',0,1,'Calendar',NULL,NULL,0,0,1,0,NULL,'Tools'),(10,'Emails',0,-1,'Emails',NULL,NULL,0,1,1,0,NULL,'Tools'),(13,'HelpDesk',0,8,'HelpDesk',NULL,NULL,0,0,1,0,NULL,'Support'),(14,'Products',0,-1,'Products',NULL,NULL,0,0,1,0,NULL,'Inventory'),(15,'Faq',0,-1,'Faq',NULL,NULL,0,1,1,0,NULL,'Support'),(16,'Events',2,-1,'Events',NULL,NULL,0,0,1,0,NULL,NULL),(18,'Vendors',0,-1,'Vendors',NULL,NULL,0,0,1,0,NULL,'Inventory'),(19,'PriceBooks',0,-1,'PriceBooks',NULL,NULL,0,1,1,0,NULL,'Inventory'),(20,'Quotes',0,-1,'Quotes',NULL,NULL,0,0,1,0,NULL,'Sales'),(21,'PurchaseOrder',0,-1,'PurchaseOrder',NULL,NULL,0,0,1,0,NULL,'Inventory'),(22,'SalesOrder',0,-1,'SalesOrder',NULL,NULL,0,0,1,0,NULL,'Sales'),(23,'Invoice',0,-1,'Invoice',NULL,NULL,0,0,1,0,NULL,'Sales'),(24,'Rss',0,-1,'Rss',NULL,NULL,0,1,0,0,NULL,'Tools'),(25,'Reports',0,-1,'Reports',NULL,NULL,0,1,0,0,NULL,'Analytics'),(26,'Campaigns',0,-1,'Campaigns',NULL,NULL,0,0,1,0,NULL,'Marketing'),(27,'Portal',0,-1,'Portal',NULL,NULL,0,1,0,0,NULL,'Tools'),(28,'Webmails',0,-1,'Webmails',NULL,NULL,0,1,1,0,NULL,NULL),(29,'Users',0,-1,'Users',NULL,NULL,0,1,0,0,NULL,NULL),(30,'MailManager',0,6,'MailManager',NULL,NULL,1,0,0,0,'1.9','Tools'),(31,'Import',0,-1,'Import',NULL,NULL,1,0,0,0,'1.7',''),(32,'WSAPP',0,-1,'WSAPP',NULL,NULL,1,0,0,0,'3.4.4',''),(33,'PBXManager',0,-1,'PBXManager',NULL,NULL,1,0,1,0,'2.2','Tools'),(34,'Services',0,-1,'Services',NULL,NULL,0,0,1,0,'2.6','Inventory'),(35,'ModTracker',0,-1,'ModTracker',NULL,NULL,0,0,0,0,'1.2',''),(36,'ServiceContracts',0,-1,'Service Contracts',NULL,NULL,0,0,1,0,'2.4','Support'),(37,'Mobile',0,-1,'Mobile',NULL,NULL,1,0,0,0,'2.0',''),(38,'EmailTemplates',0,-1,'Email Templates',NULL,NULL,1,0,0,0,'1.0','Tools'),(39,'CustomerPortal',0,-1,'CustomerPortal',NULL,NULL,0,0,0,0,'1.4',''),(40,'ProjectMilestone',0,-1,'ProjectMilestone',NULL,NULL,0,0,1,0,'3.0','Support'),(41,'ProjectTask',0,-1,'ProjectTask',NULL,NULL,0,0,1,0,'3.1','Support'),(42,'Project',0,7,'Project',NULL,NULL,0,0,1,0,'3.3','Support'),(43,'Assets',0,-1,'Assets',NULL,NULL,0,0,1,0,'2.0','Inventory'),(44,'Google',0,-1,'Google',NULL,NULL,0,0,0,0,'1.5',''),(45,'ModComments',0,-1,'Comments',NULL,NULL,0,0,1,0,'2.1','Tools'),(46,'Webforms',0,-1,'Webforms',NULL,NULL,0,0,0,0,'1.6',''),(47,'SMSNotifier',0,-1,'SMSNotifier',NULL,NULL,0,0,1,0,'1.9','Tools'),(48,'RecycleBin',0,-1,'Recycle Bin',NULL,NULL,0,0,0,0,'1.5','Tools'),(49,'ExtensionStore',0,-1,'Extension Store',NULL,NULL,1,0,0,0,'1.2','Settings');
/*!40000 ALTER TABLE `vtiger_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tab_info`
--

DROP TABLE IF EXISTS `vtiger_tab_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_tab_info` (
  `tabid` int(19) DEFAULT NULL,
  `prefname` varchar(256) DEFAULT NULL,
  `prefvalue` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_tab_info`
--

LOCK TABLES `vtiger_tab_info` WRITE;
/*!40000 ALTER TABLE `vtiger_tab_info` DISABLE KEYS */;
INSERT INTO `vtiger_tab_info` VALUES (30,'vtiger_min_version','6.0.0RC'),(31,'vtiger_min_version','6.0.0rc'),(31,'vtiger_max_version','6.*'),(32,'vtiger_min_version','6.0.0rc'),(33,'vtiger_min_version','6.0.0'),(33,'vtiger_max_version','6.*'),(34,'vtiger_min_version','6.0.0rc'),(34,'vtiger_max_version','6.*'),(35,'vtiger_min_version','6.0.0rc'),(36,'vtiger_min_version','6.0.0rc'),(37,'vtiger_min_version','6.0.0rc'),(38,'vtiger_min_version','6.0.0rc'),(38,'vtiger_max_version','6.*'),(39,'vtiger_min_version','6.0.0rc'),(39,'vtiger_max_version','6.*'),(40,'vtiger_min_version','6.0.0rc'),(40,'vtiger_max_version','6.*'),(41,'vtiger_min_version','6.0.0rc'),(42,'vtiger_min_version','6.0.0rc'),(43,'vtiger_min_version','6.0.0rc'),(43,'vtiger_max_version','6.*'),(44,'vtiger_min_version','6.0.0rc'),(44,'vtiger_max_version','6.*'),(45,'vtiger_min_version','6.0.0rc'),(45,'vtiger_max_version','6.*'),(46,'vtiger_min_version','6.0.0rc'),(46,'vtiger_max_version','6.*'),(47,'vtiger_min_version','6.0.0rc'),(47,'vtiger_max_version','6.*'),(48,'vtiger_min_version','6.0.0rc'),(48,'vtiger_max_version','6.*'),(49,'vtiger_min_version','6.0.0'),(49,'vtiger_max_version','6.*');
/*!40000 ALTER TABLE `vtiger_tab_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_taskpriority`
--

DROP TABLE IF EXISTS `vtiger_taskpriority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_taskpriority` (
  `taskpriorityid` int(19) NOT NULL AUTO_INCREMENT,
  `taskpriority` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`taskpriorityid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_taskpriority`
--

LOCK TABLES `vtiger_taskpriority` WRITE;
/*!40000 ALTER TABLE `vtiger_taskpriority` DISABLE KEYS */;
INSERT INTO `vtiger_taskpriority` VALUES (1,'High',1,170,0),(2,'Medium',1,171,1),(3,'Low',1,172,2);
/*!40000 ALTER TABLE `vtiger_taskpriority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_taskpriority_seq`
--

DROP TABLE IF EXISTS `vtiger_taskpriority_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_taskpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_taskpriority_seq`
--

LOCK TABLES `vtiger_taskpriority_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_taskpriority_seq` DISABLE KEYS */;
INSERT INTO `vtiger_taskpriority_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_taskpriority_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_taskstatus`
--

DROP TABLE IF EXISTS `vtiger_taskstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_taskstatus` (
  `taskstatusid` int(19) NOT NULL AUTO_INCREMENT,
  `taskstatus` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`taskstatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_taskstatus`
--

LOCK TABLES `vtiger_taskstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_taskstatus` DISABLE KEYS */;
INSERT INTO `vtiger_taskstatus` VALUES (1,'Not Started',0,173,0),(2,'In Progress',0,174,1),(3,'Completed',0,175,2),(4,'Pending Input',0,176,3),(5,'Deferred',0,177,4),(6,'Planned',0,178,5);
/*!40000 ALTER TABLE `vtiger_taskstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_taskstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_taskstatus_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_taskstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_taskstatus_seq`
--

LOCK TABLES `vtiger_taskstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_taskstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_taskstatus_seq` VALUES (6);
/*!40000 ALTER TABLE `vtiger_taskstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_taxclass`
--

DROP TABLE IF EXISTS `vtiger_taxclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_taxclass` (
  `taxclassid` int(19) NOT NULL AUTO_INCREMENT,
  `taxclass` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`taxclassid`),
  UNIQUE KEY `taxclass_carrier_idx` (`taxclass`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_taxclass`
--

LOCK TABLES `vtiger_taxclass` WRITE;
/*!40000 ALTER TABLE `vtiger_taxclass` DISABLE KEYS */;
INSERT INTO `vtiger_taxclass` VALUES (1,'SalesTax',0,1),(2,'Vat',1,1);
/*!40000 ALTER TABLE `vtiger_taxclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_taxclass_seq`
--

DROP TABLE IF EXISTS `vtiger_taxclass_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_taxclass_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_taxclass_seq`
--

LOCK TABLES `vtiger_taxclass_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_taxclass_seq` DISABLE KEYS */;
INSERT INTO `vtiger_taxclass_seq` VALUES (2);
/*!40000 ALTER TABLE `vtiger_taxclass_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketcategories`
--

DROP TABLE IF EXISTS `vtiger_ticketcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ticketcategories` (
  `ticketcategories_id` int(19) NOT NULL AUTO_INCREMENT,
  `ticketcategories` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '0',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketcategories_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ticketcategories`
--

LOCK TABLES `vtiger_ticketcategories` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketcategories` DISABLE KEYS */;
INSERT INTO `vtiger_ticketcategories` VALUES (1,'Big Problem',1,179,0),(2,'Small Problem',1,180,1),(3,'Other Problem',1,181,2);
/*!40000 ALTER TABLE `vtiger_ticketcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketcategories_seq`
--

DROP TABLE IF EXISTS `vtiger_ticketcategories_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ticketcategories_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ticketcategories_seq`
--

LOCK TABLES `vtiger_ticketcategories_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketcategories_seq` DISABLE KEYS */;
INSERT INTO `vtiger_ticketcategories_seq` VALUES (3);
/*!40000 ALTER TABLE `vtiger_ticketcategories_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketcf`
--

DROP TABLE IF EXISTS `vtiger_ticketcf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ticketcf` (
  `ticketid` int(19) NOT NULL DEFAULT '0',
  `from_portal` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`ticketid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ticketcf`
--

LOCK TABLES `vtiger_ticketcf` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketcf` DISABLE KEYS */;
INSERT INTO `vtiger_ticketcf` VALUES (37,'0');
/*!40000 ALTER TABLE `vtiger_ticketcf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketcomments`
--

DROP TABLE IF EXISTS `vtiger_ticketcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ticketcomments` (
  `commentid` int(19) NOT NULL AUTO_INCREMENT,
  `ticketid` int(19) DEFAULT NULL,
  `comments` text,
  `ownerid` int(19) NOT NULL DEFAULT '0',
  `ownertype` varchar(10) DEFAULT NULL,
  `createdtime` datetime NOT NULL,
  PRIMARY KEY (`commentid`),
  KEY `ticketcomments_ticketid_idx` (`ticketid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ticketcomments`
--

LOCK TABLES `vtiger_ticketcomments` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_ticketcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketpriorities`
--

DROP TABLE IF EXISTS `vtiger_ticketpriorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ticketpriorities` (
  `ticketpriorities_id` int(19) NOT NULL AUTO_INCREMENT,
  `ticketpriorities` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '0',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketpriorities_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ticketpriorities`
--

LOCK TABLES `vtiger_ticketpriorities` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketpriorities` DISABLE KEYS */;
INSERT INTO `vtiger_ticketpriorities` VALUES (1,'Low',1,182,0),(2,'Normal',1,183,1),(3,'High',1,184,2),(4,'Urgent',1,185,3);
/*!40000 ALTER TABLE `vtiger_ticketpriorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketpriorities_seq`
--

DROP TABLE IF EXISTS `vtiger_ticketpriorities_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ticketpriorities_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ticketpriorities_seq`
--

LOCK TABLES `vtiger_ticketpriorities_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketpriorities_seq` DISABLE KEYS */;
INSERT INTO `vtiger_ticketpriorities_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_ticketpriorities_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketseverities`
--

DROP TABLE IF EXISTS `vtiger_ticketseverities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ticketseverities` (
  `ticketseverities_id` int(19) NOT NULL AUTO_INCREMENT,
  `ticketseverities` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '0',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketseverities_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ticketseverities`
--

LOCK TABLES `vtiger_ticketseverities` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketseverities` DISABLE KEYS */;
INSERT INTO `vtiger_ticketseverities` VALUES (1,'Minor',1,186,0),(2,'Major',1,187,1),(3,'Feature',1,188,2),(4,'Critical',1,189,3);
/*!40000 ALTER TABLE `vtiger_ticketseverities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketseverities_seq`
--

DROP TABLE IF EXISTS `vtiger_ticketseverities_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ticketseverities_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ticketseverities_seq`
--

LOCK TABLES `vtiger_ticketseverities_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketseverities_seq` DISABLE KEYS */;
INSERT INTO `vtiger_ticketseverities_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_ticketseverities_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketstatus`
--

DROP TABLE IF EXISTS `vtiger_ticketstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ticketstatus` (
  `ticketstatus_id` int(19) NOT NULL AUTO_INCREMENT,
  `ticketstatus` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '0',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketstatus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ticketstatus`
--

LOCK TABLES `vtiger_ticketstatus` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketstatus` DISABLE KEYS */;
INSERT INTO `vtiger_ticketstatus` VALUES (1,'Open',0,190,0),(2,'In Progress',0,191,1),(3,'Wait For Response',0,192,2),(4,'Closed',0,193,3);
/*!40000 ALTER TABLE `vtiger_ticketstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ticketstatus_seq`
--

DROP TABLE IF EXISTS `vtiger_ticketstatus_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ticketstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ticketstatus_seq`
--

LOCK TABLES `vtiger_ticketstatus_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_ticketstatus_seq` DISABLE KEYS */;
INSERT INTO `vtiger_ticketstatus_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_ticketstatus_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_time_zone`
--

DROP TABLE IF EXISTS `vtiger_time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_time_zone` (
  `time_zoneid` int(19) NOT NULL AUTO_INCREMENT,
  `time_zone` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`time_zoneid`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_time_zone`
--

LOCK TABLES `vtiger_time_zone` WRITE;
/*!40000 ALTER TABLE `vtiger_time_zone` DISABLE KEYS */;
INSERT INTO `vtiger_time_zone` VALUES (1,'Pacific/Midway',0,1),(2,'Pacific/Samoa',1,1),(3,'Pacific/Honolulu',2,1),(4,'America/Anchorage',3,1),(5,'America/Los_Angeles',4,1),(6,'America/Tijuana',5,1),(7,'America/Denver',6,1),(8,'America/Chihuahua',7,1),(9,'America/Mazatlan',8,1),(10,'America/Phoenix',9,1),(11,'America/Regina',10,1),(12,'America/Tegucigalpa',11,1),(13,'America/Chicago',12,1),(14,'America/Mexico_City',13,1),(15,'America/Monterrey',14,1),(16,'America/New_York',15,1),(17,'America/Bogota',16,1),(18,'America/Lima',17,1),(19,'America/Rio_Branco',18,1),(20,'America/Indiana/Indianapolis',19,1),(21,'America/Caracas',20,1),(22,'America/Halifax',21,1),(23,'America/Manaus',22,1),(24,'America/Santiago',23,1),(25,'America/La_Paz',24,1),(26,'America/Cuiaba',25,1),(27,'America/Asuncion',26,1),(28,'America/St_Johns',27,1),(29,'America/Argentina/Buenos_Aires',28,1),(30,'America/Sao_Paulo',29,1),(31,'America/Godthab',30,1),(32,'America/Montevideo',31,1),(33,'Atlantic/South_Georgia',32,1),(34,'Atlantic/Azores',33,1),(35,'Atlantic/Cape_Verde',34,1),(36,'Europe/London',35,1),(37,'UTC',36,1),(38,'Africa/Monrovia',37,1),(39,'Africa/Casablanca',38,1),(40,'Europe/Belgrade',39,1),(41,'Europe/Sarajevo',40,1),(42,'Europe/Brussels',41,1),(43,'Africa/Algiers',42,1),(44,'Europe/Amsterdam',43,1),(45,'Europe/Minsk',44,1),(46,'Africa/Cairo',45,1),(47,'Europe/Helsinki',46,1),(48,'Europe/Athens',47,1),(49,'Europe/Istanbul',48,1),(50,'Asia/Jerusalem',49,1),(51,'Asia/Amman',50,1),(52,'Asia/Beirut',51,1),(53,'Africa/Windhoek',52,1),(54,'Africa/Harare',53,1),(55,'Asia/Kuwait',54,1),(56,'Asia/Baghdad',55,1),(57,'Africa/Nairobi',56,1),(58,'Asia/Tehran',57,1),(59,'Asia/Tbilisi',58,1),(60,'Europe/Moscow',59,1),(61,'Asia/Muscat',60,1),(62,'Asia/Baku',61,1),(63,'Asia/Yerevan',62,1),(64,'Asia/Karachi',63,1),(65,'Asia/Tashkent',64,1),(66,'Asia/Kolkata',65,1),(67,'Asia/Colombo',66,1),(68,'Asia/Katmandu',67,1),(69,'Asia/Dhaka',68,1),(70,'Asia/Almaty',69,1),(71,'Asia/Yekaterinburg',70,1),(72,'Asia/Rangoon',71,1),(73,'Asia/Novosibirsk',72,1),(74,'Asia/Bangkok',73,1),(75,'Asia/Brunei',74,1),(76,'Asia/Krasnoyarsk',75,1),(77,'Asia/Ulaanbaatar',76,1),(78,'Asia/Kuala_Lumpur',77,1),(79,'Asia/Taipei',78,1),(80,'Australia/Perth',79,1),(81,'Asia/Irkutsk',80,1),(82,'Asia/Seoul',81,1),(83,'Asia/Tokyo',82,1),(84,'Australia/Darwin',83,1),(85,'Australia/Adelaide',84,1),(86,'Australia/Canberra',85,1),(87,'Australia/Brisbane',86,1),(88,'Australia/Hobart',87,1),(89,'Asia/Vladivostok',88,1),(90,'Pacific/Guam',89,1),(91,'Asia/Yakutsk',90,1),(92,'Pacific/Fiji',92,1),(93,'Asia/Kamchatka',93,1),(94,'Pacific/Auckland',94,1),(95,'Asia/Magadan',95,1),(96,'Pacific/Tongatapu',96,1),(97,'Etc/GMT-11',91,1);
/*!40000 ALTER TABLE `vtiger_time_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_time_zone_seq`
--

DROP TABLE IF EXISTS `vtiger_time_zone_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_time_zone_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_time_zone_seq`
--

LOCK TABLES `vtiger_time_zone_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_time_zone_seq` DISABLE KEYS */;
INSERT INTO `vtiger_time_zone_seq` VALUES (96);
/*!40000 ALTER TABLE `vtiger_time_zone_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tmp_read_group_rel_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_read_group_rel_sharing_per`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_tmp_read_group_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`sharedgroupid`),
  KEY `tmp_read_group_rel_sharing_per_userid_sharedgroupid_tabid` (`userid`,`sharedgroupid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_tmp_read_group_rel_sharing_per`
--

LOCK TABLES `vtiger_tmp_read_group_rel_sharing_per` WRITE;
/*!40000 ALTER TABLE `vtiger_tmp_read_group_rel_sharing_per` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_tmp_read_group_rel_sharing_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tmp_read_group_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_read_group_sharing_per`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_tmp_read_group_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`sharedgroupid`),
  KEY `tmp_read_group_sharing_per_userid_sharedgroupid_idx` (`userid`,`sharedgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_tmp_read_group_sharing_per`
--

LOCK TABLES `vtiger_tmp_read_group_sharing_per` WRITE;
/*!40000 ALTER TABLE `vtiger_tmp_read_group_sharing_per` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_tmp_read_group_sharing_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tmp_read_user_rel_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_read_user_rel_sharing_per`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_tmp_read_user_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`shareduserid`),
  KEY `tmp_read_user_rel_sharing_per_userid_shared_reltabid_idx` (`userid`,`shareduserid`,`relatedtabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_tmp_read_user_rel_sharing_per`
--

LOCK TABLES `vtiger_tmp_read_user_rel_sharing_per` WRITE;
/*!40000 ALTER TABLE `vtiger_tmp_read_user_rel_sharing_per` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_tmp_read_user_rel_sharing_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tmp_read_user_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_read_user_sharing_per`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_tmp_read_user_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`shareduserid`),
  KEY `tmp_read_user_sharing_per_userid_shareduserid_idx` (`userid`,`shareduserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_tmp_read_user_sharing_per`
--

LOCK TABLES `vtiger_tmp_read_user_sharing_per` WRITE;
/*!40000 ALTER TABLE `vtiger_tmp_read_user_sharing_per` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_tmp_read_user_sharing_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tmp_write_group_rel_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_write_group_rel_sharing_per`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_tmp_write_group_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`sharedgroupid`),
  KEY `tmp_write_group_rel_sharing_per_userid_sharedgroupid_tabid_idx` (`userid`,`sharedgroupid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_tmp_write_group_rel_sharing_per`
--

LOCK TABLES `vtiger_tmp_write_group_rel_sharing_per` WRITE;
/*!40000 ALTER TABLE `vtiger_tmp_write_group_rel_sharing_per` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_tmp_write_group_rel_sharing_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tmp_write_group_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_write_group_sharing_per`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_tmp_write_group_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`sharedgroupid`),
  KEY `tmp_write_group_sharing_per_UK1` (`userid`,`sharedgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_tmp_write_group_sharing_per`
--

LOCK TABLES `vtiger_tmp_write_group_sharing_per` WRITE;
/*!40000 ALTER TABLE `vtiger_tmp_write_group_sharing_per` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_tmp_write_group_sharing_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tmp_write_user_rel_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_write_user_rel_sharing_per`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_tmp_write_user_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`shareduserid`),
  KEY `tmp_write_user_rel_sharing_per_userid_sharduserid_tabid_idx` (`userid`,`shareduserid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_tmp_write_user_rel_sharing_per`
--

LOCK TABLES `vtiger_tmp_write_user_rel_sharing_per` WRITE;
/*!40000 ALTER TABLE `vtiger_tmp_write_user_rel_sharing_per` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_tmp_write_user_rel_sharing_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tmp_write_user_sharing_per`
--

DROP TABLE IF EXISTS `vtiger_tmp_write_user_sharing_per`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_tmp_write_user_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`shareduserid`),
  KEY `tmp_write_user_sharing_per_userid_shareduserid_idx` (`userid`,`shareduserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_tmp_write_user_sharing_per`
--

LOCK TABLES `vtiger_tmp_write_user_sharing_per` WRITE;
/*!40000 ALTER TABLE `vtiger_tmp_write_user_sharing_per` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_tmp_write_user_sharing_per` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tracker`
--

DROP TABLE IF EXISTS `vtiger_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(25) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_tracker`
--

LOCK TABLES `vtiger_tracker` WRITE;
/*!40000 ALTER TABLE `vtiger_tracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tracking_unit`
--

DROP TABLE IF EXISTS `vtiger_tracking_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_tracking_unit` (
  `tracking_unitid` int(11) NOT NULL AUTO_INCREMENT,
  `tracking_unit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`tracking_unitid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_tracking_unit`
--

LOCK TABLES `vtiger_tracking_unit` WRITE;
/*!40000 ALTER TABLE `vtiger_tracking_unit` DISABLE KEYS */;
INSERT INTO `vtiger_tracking_unit` VALUES (2,'Hours',1,220,2),(3,'Days',1,221,3),(4,'Incidents',1,222,4);
/*!40000 ALTER TABLE `vtiger_tracking_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_tracking_unit_seq`
--

DROP TABLE IF EXISTS `vtiger_tracking_unit_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_tracking_unit_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_tracking_unit_seq`
--

LOCK TABLES `vtiger_tracking_unit_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_tracking_unit_seq` DISABLE KEYS */;
INSERT INTO `vtiger_tracking_unit_seq` VALUES (4);
/*!40000 ALTER TABLE `vtiger_tracking_unit_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_troubletickets`
--

DROP TABLE IF EXISTS `vtiger_troubletickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_troubletickets` (
  `ticketid` int(19) NOT NULL,
  `ticket_no` varchar(100) NOT NULL,
  `groupname` varchar(100) DEFAULT NULL,
  `parent_id` varchar(100) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `severity` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `solution` text,
  `update_log` text,
  `version_id` int(11) DEFAULT NULL,
  `hours` decimal(25,8) DEFAULT NULL,
  `days` decimal(25,8) DEFAULT NULL,
  `contact_id` int(19) DEFAULT NULL,
  PRIMARY KEY (`ticketid`),
  KEY `troubletickets_ticketid_idx` (`ticketid`),
  KEY `troubletickets_status_idx` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_troubletickets`
--

LOCK TABLES `vtiger_troubletickets` WRITE;
/*!40000 ALTER TABLE `vtiger_troubletickets` DISABLE KEYS */;
INSERT INTO `vtiger_troubletickets` VALUES (37,'TT1',NULL,'0','0','','','Open','','Appuntamento','','',NULL,0.00000000,0.00000000,0);
/*!40000 ALTER TABLE `vtiger_troubletickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_usageunit`
--

DROP TABLE IF EXISTS `vtiger_usageunit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_usageunit` (
  `usageunitid` int(19) NOT NULL AUTO_INCREMENT,
  `usageunit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`usageunitid`),
  UNIQUE KEY `usageunit_usageunit_idx` (`usageunit`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_usageunit`
--

LOCK TABLES `vtiger_usageunit` WRITE;
/*!40000 ALTER TABLE `vtiger_usageunit` DISABLE KEYS */;
INSERT INTO `vtiger_usageunit` VALUES (1,'Box',1,194,0),(2,'Carton',1,195,1),(3,'Dozen',1,196,2),(4,'Each',1,197,3),(5,'Hours',1,198,4),(6,'Impressions',1,199,5),(7,'Lb',1,200,6),(8,'M',1,201,7),(9,'Pack',1,202,8),(10,'Pages',1,203,9),(11,'Pieces',1,204,10),(12,'Quantity',1,205,11),(13,'Reams',1,206,12),(14,'Sheet',1,207,13),(15,'Spiral Binder',1,208,14),(16,'Sq Ft',1,209,15);
/*!40000 ALTER TABLE `vtiger_usageunit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_usageunit_seq`
--

DROP TABLE IF EXISTS `vtiger_usageunit_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_usageunit_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_usageunit_seq`
--

LOCK TABLES `vtiger_usageunit_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_usageunit_seq` DISABLE KEYS */;
INSERT INTO `vtiger_usageunit_seq` VALUES (16);
/*!40000 ALTER TABLE `vtiger_usageunit_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_user2mergefields`
--

DROP TABLE IF EXISTS `vtiger_user2mergefields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_user2mergefields` (
  `userid` int(11) DEFAULT NULL,
  `tabid` int(19) DEFAULT NULL,
  `fieldid` int(19) DEFAULT NULL,
  `visible` int(2) DEFAULT NULL,
  KEY `userid_tabid_idx` (`userid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_user2mergefields`
--

LOCK TABLES `vtiger_user2mergefields` WRITE;
/*!40000 ALTER TABLE `vtiger_user2mergefields` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_user2mergefields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_user2role`
--

DROP TABLE IF EXISTS `vtiger_user2role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_user2role` (
  `userid` int(11) NOT NULL,
  `roleid` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`),
  KEY `user2role_roleid_idx` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_user2role`
--

LOCK TABLES `vtiger_user2role` WRITE;
/*!40000 ALTER TABLE `vtiger_user2role` DISABLE KEYS */;
INSERT INTO `vtiger_user2role` VALUES (11,'H10'),(10,'H11'),(17,'H13'),(16,'H14'),(15,'H15'),(1,'H2'),(12,'H2'),(9,'H4'),(7,'H5'),(8,'H6'),(6,'H7'),(13,'H8'),(14,'H9');
/*!40000 ALTER TABLE `vtiger_user2role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_user_module_preferences`
--

DROP TABLE IF EXISTS `vtiger_user_module_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_user_module_preferences` (
  `userid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `default_cvid` int(19) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_user_module_preferences`
--

LOCK TABLES `vtiger_user_module_preferences` WRITE;
/*!40000 ALTER TABLE `vtiger_user_module_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_user_module_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_users`
--

DROP TABLE IF EXISTS `vtiger_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(200) DEFAULT NULL,
  `user_hash` varchar(32) DEFAULT NULL,
  `cal_color` varchar(25) DEFAULT '#E6FAD8',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `reports_to_id` varchar(36) DEFAULT NULL,
  `is_admin` varchar(3) DEFAULT '0',
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `description` text,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` varchar(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `email1` varchar(100) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  `secondaryemail` varchar(100) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `signature` text,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(25) DEFAULT NULL,
  `address_postalcode` varchar(9) DEFAULT NULL,
  `user_preferences` text,
  `tz` varchar(30) DEFAULT NULL,
  `holidays` varchar(60) DEFAULT NULL,
  `namedays` varchar(60) DEFAULT NULL,
  `workdays` varchar(30) DEFAULT NULL,
  `weekstart` int(11) DEFAULT NULL,
  `date_format` varchar(200) DEFAULT NULL,
  `hour_format` varchar(30) DEFAULT 'am/pm',
  `start_hour` varchar(30) DEFAULT '10:00',
  `end_hour` varchar(30) DEFAULT '23:00',
  `activity_view` varchar(200) DEFAULT 'Today',
  `lead_view` varchar(200) DEFAULT 'Today',
  `imagename` varchar(250) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `confirm_password` varchar(300) DEFAULT NULL,
  `internal_mailer` varchar(3) NOT NULL DEFAULT '1',
  `reminder_interval` varchar(100) DEFAULT NULL,
  `reminder_next_time` varchar(100) DEFAULT NULL,
  `crypt_type` varchar(20) NOT NULL DEFAULT 'MD5',
  `accesskey` varchar(36) DEFAULT NULL,
  `theme` varchar(100) DEFAULT NULL,
  `language` varchar(36) DEFAULT NULL,
  `time_zone` varchar(200) DEFAULT NULL,
  `currency_grouping_pattern` varchar(100) DEFAULT NULL,
  `currency_decimal_separator` varchar(2) DEFAULT NULL,
  `currency_grouping_separator` varchar(2) DEFAULT NULL,
  `currency_symbol_placement` varchar(20) DEFAULT NULL,
  `phone_crm_extension` varchar(100) DEFAULT NULL,
  `no_of_currency_decimals` varchar(2) DEFAULT NULL,
  `truncate_trailing_zeros` varchar(3) DEFAULT NULL,
  `dayoftheweek` varchar(100) DEFAULT NULL,
  `callduration` varchar(100) DEFAULT NULL,
  `othereventduration` varchar(100) DEFAULT NULL,
  `calendarsharedtype` varchar(100) DEFAULT NULL,
  `default_record_view` varchar(10) DEFAULT NULL,
  `leftpanelhide` varchar(3) DEFAULT NULL,
  `rowheight` varchar(10) DEFAULT NULL,
  `defaulteventstatus` varchar(50) DEFAULT NULL,
  `defaultactivitytype` varchar(50) DEFAULT NULL,
  `hidecompletedevents` int(11) DEFAULT NULL,
  `is_owner` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_user_name_idx` (`user_name`),
  KEY `user_user_password_idx` (`user_password`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_users`
--

LOCK TABLES `vtiger_users` WRITE;
/*!40000 ALTER TABLE `vtiger_users` DISABLE KEYS */;
INSERT INTO `vtiger_users` VALUES (1,'admin','$1$ad000000$hzXFXvL3XVlnUE/X.1n9t/','d41d8cd98f00b204e9800998ecf8427e','#E6FAD8','VTiger','Administrator','','on',1,'','2017-03-07 19:24:00',NULL,NULL,'','','','','','','','andrea.dnz@gmail.com','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'dd-mm-yyyy','12','00:00','23:00','This Week','Today','',0,'$1$ad000000$nYTnfhTZRmUP.wQT9y1AE.','1','1 Minute',NULL,'PHP5.3MD5','VaRMft4ShFepViU8','softed','it_it','Europe/Amsterdam','123,456,789','.',',','$1.0','','2','1','Sunday','5','5','public','Summary','0','medium','Selezionare un\'opzione','Selezionare un\'opzione',0,'1'),(6,'tecnico','$1$te000000$D8BuOeqnPW.UQ.I.10L300','75f33e6eebce7012b8c74a889fa8a7ed','#E6FAD8','Franco (tec)','Rossi','','off',1,'','2017-03-07 17:30:09',NULL,NULL,'','','','','','','','tecnico@openon.it','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'dd-mm-yyyy','24','00:00','','Today','Today','',0,'$1$te000000$D8BuOeqnPW.UQ.I.10L300','0','',NULL,'PHP5.3MD5','uEwdLe9biGP7gP8i','softed','it_it','Europe/Amsterdam','123,456,789','.',',','$1.0','','2','0','Monday','5','5','public','Summary','0','medium','Planned','Meeting',0,'0'),(7,'vendite','$1$ve000000$.9qikFfvmtA25oN2gF.eP/','de7015b637f6a575bce922ee508da155','#E6FAD8','Giovanna (sales)','Bianchi','','off',1,'','2017-03-07 14:30:53',NULL,NULL,'','','','','','','','vendite@openon.it','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'dd-mm-yyyy','24','00:00','','Today','Today','',0,'$1$ve000000$.9qikFfvmtA25oN2gF.eP/','0','5 Minutes',NULL,'PHP5.3MD5','gW9MEIJa2DB5C4tD','alphagrey','it_it','Europe/Amsterdam','123,456,789','.',',','$1.0','','2','0','Monday','5','5','public','Summary','0','medium','Planned','Call',0,'0'),(8,'tec.manager','$1$te000000$0uofz8fV.bXYWDsPHxqFj0','2aae54f98d494ea4f0f8511c20fb0848','#E6FAD8','Giovanni (t.man)','Sala','','off',1,'','2017-03-07 12:00:17',NULL,NULL,'','','','','','','','tec.manager@openon.it','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'dd-mm-yyyy','24','00:00','','Today','Today','',0,'$1$te000000$0uofz8fV.bXYWDsPHxqFj0','0','',NULL,'PHP5.3MD5','3qvp7UBpV5V3WZtF','softed','it_it','Europe/Amsterdam','123,456,789','.',',','$1.0','','2','0','Monday','5','5','public','Summary','0','medium','Planned','Call',0,'0'),(9,'sales.manager','$1$sa000000$xPe2VVD6RKBrNBZLpm.94.','2a6df3098537f6747b25000c6c98948a','#E6FAD8','Matteo (s.man)','Fabbri','','off',1,'','2017-03-07 12:01:32',NULL,NULL,'','','','','','','','sales.manager@openon.it','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'dd-mm-yyyy','24','00:00','','Today','Today','',0,'$1$sa000000$xPe2VVD6RKBrNBZLpm.94.','0','',NULL,'PHP5.3MD5','WhZorfB8M1WMqlV2','softed','it_it','Europe/Amsterdam','123,456,789','.',',','$1.0','','2','0','Monday','5','5','public','Summary','0','medium','Planned','Call',0,'0'),(10,'staff','$1$st000000$AEV.FcpCE4BgatKQScGe/1','1253208465b1efa876f982d8a9e73eef','#E6FAD8','Paola (staff)','Berti','','off',1,'','2017-03-07 11:45:20',NULL,NULL,'','','','','','','','staff@openon.it','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'dd-mm-yyyy','24','00:00','','Today','Today','',0,'$1$st000000$AEV.FcpCE4BgatKQScGe/1','0','',NULL,'PHP5.3MD5','7LkQdeEvQbjjuTce','softed','en_us','Pacific/Midway','123,456,789','.',',','$1.0','','2','0','Monday','5','5','public','Summary','0','medium','Planned','Call',0,'0'),(11,'direttore','$1$di000000$WXOfN2dGpMm4j5O4ibbgB1','854c6101009e66a060f365dd0f830e26','#E6FAD8','Carlo (dir)','Grassi','','off',1,'','2017-03-07 11:45:36',NULL,NULL,'','','','','','','','direttore@openon.it','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'dd-mm-yyyy','12','00:00','','Today','Today','',0,'$1$di000000$WXOfN2dGpMm4j5O4ibbgB1','0','',NULL,'PHP5.3MD5','4yDEVDWz3jExRxo','softed','en_us','Pacific/Midway','123,456,789','.',',','$1.0','','2','0','Monday','5','5','public','Summary','0','medium','Planned','Meeting',0,'0'),(12,'presidente','$1$pr000000$zRM1bBtaSi00AtPfY0XX9/','1c4708df8cb006d2a007b3920a7b92a5','#E6FAD8','Francesco (pres)','Vinci','','off',1,'','2017-03-07 11:45:49',NULL,NULL,'','','','','','','','presidente@openon.it','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'dd-mm-yyyy','24','00:00','','Today','Today','',0,'$1$pr000000$zRM1bBtaSi00AtPfY0XX9/','0','',NULL,'PHP5.3MD5','JyU97nKC1uhbWmx','softed','en_us','Pacific/Midway','123,456,789','.',',','$1.0','','2','0','Monday','5','5','public','Summary','0','medium','Planned','Call',0,'0'),(13,'agente','$1$ag000000$/BkAlNlaTyik1RyqI1zSB0','f77538d26d37221483971c3323d5f050','#E6FAD8','Gianni (ag)','Rizzi','','off',1,'','2017-03-07 11:47:35',NULL,NULL,'','','','','','','','agente@openon.it','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'dd-mm-yyyy','24','00:00','','Today','Today','',0,'$1$ag000000$/BkAlNlaTyik1RyqI1zSB0','0','',NULL,'PHP5.3MD5','cebsddOe9Zp1mti','alphagrey','it_it','Europe/Amsterdam','123,456,789','.',',','$1.0','','2','0','Monday','5','5','public','Summary','0','medium','Planned','Call',0,'0'),(14,'consulente','$1$co000000$XCoBGTYx4IpQnGRWsZcAI/','429a9ff6463e1d07493b413f5016ff41','#E6FAD8','Marco (con)','Galli','','off',1,'','2017-03-07 11:46:21',NULL,NULL,'','','','','','','','consulente@openon.it','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'dd-mm-yyyy','24','00:00','','Today','Today','',0,'$1$co000000$XCoBGTYx4IpQnGRWsZcAI/','0','',NULL,'PHP5.3MD5','2HPOv8W9W2dl322G','softed','en_us','Pacific/Midway','123,456,789','.',',','$1.0','','2','0','Monday','5','5','public','Summary','0','medium','Planned','Call',0,'0'),(15,'commesso','$1$co000000$W3GvKsTCLbdtEKy3wt/Cl.','6a46067ee484e8b9d1c19224741a4772','#E6FAD8','Gianni (add. PV)','Polato','','off',1,'','2017-03-07 14:01:44',NULL,NULL,'','','','','','','','commesso@openon.it','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'dd-mm-yyyy','24','00:00','','Today','Today','',0,'$1$co000000$W3GvKsTCLbdtEKy3wt/Cl.','0','',NULL,'PHP5.3MD5','2NXVtfyMfrAtovR','softed','en_us','Pacific/Midway','123,456,789','.',',','$1.0','','2','0','Monday','5','5','public','Summary','0','medium','Selezionare un\'opzione','Selezionare un\'opzione',0,'0'),(16,'responsabile','$1$re000000$VV6TAl2gZCam4WQDaKSmP1','8928363f23ea4502106103c3ff78feef','#E6FAD8','Luisa','Cucini','','off',1,'','2017-03-07 14:03:01',NULL,NULL,'','','','','','','','responsabile@openon.it','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'dd-mm-yyyy','24','00:00','','Today','Today','',0,'$1$re000000$VV6TAl2gZCam4WQDaKSmP1','0','',NULL,'PHP5.3MD5','Uh9CFfmfDsAFEClm','softed','en_us','Pacific/Midway','123,456,789','.',',','$1.0','','2','0','Monday','5','5','public','Summary','0','medium','Selezionare un\'opzione','Selezionare un\'opzione',0,'0'),(17,'eurostaff','$1$eu000000$2/aWIARiv2sOI.8D.rq7M.','9a8b1f682ce156f4093ac02017a2b655','#E6FAD8','Gianluca (e.staff)','Gonzato','','off',1,'','2017-03-07 19:24:09',NULL,NULL,'','','','','','','','eurostaff@openon.it','','','Active','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,'dd-mm-yyyy','24','00:00','','Today','Today','',0,'$1$eu000000$2/aWIARiv2sOI.8D.rq7M.','0','',NULL,'PHP5.3MD5','PmNzOeuRYJ8e3SwE','softed','it_it','Europe/Amsterdam','123,456,789','.',',','$1.0','','2','0','Monday','5','5','public','Summary','0','medium','Selezionare un\'opzione','Selezionare un\'opzione',0,'0');
/*!40000 ALTER TABLE `vtiger_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_users2group`
--

DROP TABLE IF EXISTS `vtiger_users2group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_users2group` (
  `groupid` int(19) NOT NULL,
  `userid` int(19) NOT NULL,
  PRIMARY KEY (`groupid`,`userid`),
  KEY `users2group_groupname_uerid_idx` (`groupid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_users2group`
--

LOCK TABLES `vtiger_users2group` WRITE;
/*!40000 ALTER TABLE `vtiger_users2group` DISABLE KEYS */;
INSERT INTO `vtiger_users2group` VALUES (3,1),(3,17);
/*!40000 ALTER TABLE `vtiger_users2group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_users_last_import`
--

DROP TABLE IF EXISTS `vtiger_users_last_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_users_last_import` (
  `id` int(36) NOT NULL AUTO_INCREMENT,
  `assigned_user_id` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_users_last_import`
--

LOCK TABLES `vtiger_users_last_import` WRITE;
/*!40000 ALTER TABLE `vtiger_users_last_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_users_last_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_users_seq`
--

DROP TABLE IF EXISTS `vtiger_users_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_users_seq`
--

LOCK TABLES `vtiger_users_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_users_seq` DISABLE KEYS */;
INSERT INTO `vtiger_users_seq` VALUES (17);
/*!40000 ALTER TABLE `vtiger_users_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_userscf`
--

DROP TABLE IF EXISTS `vtiger_userscf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_userscf` (
  `usersid` int(11) NOT NULL,
  PRIMARY KEY (`usersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_userscf`
--

LOCK TABLES `vtiger_userscf` WRITE;
/*!40000 ALTER TABLE `vtiger_userscf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_userscf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_vendor`
--

DROP TABLE IF EXISTS `vtiger_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_vendor` (
  `vendorid` int(19) NOT NULL DEFAULT '0',
  `vendor_no` varchar(100) NOT NULL,
  `vendorname` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `glacct` varchar(200) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `street` text,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `pobox` varchar(30) DEFAULT NULL,
  `postalcode` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`vendorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_vendor`
--

LOCK TABLES `vtiger_vendor` WRITE;
/*!40000 ALTER TABLE `vtiger_vendor` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_vendorcf`
--

DROP TABLE IF EXISTS `vtiger_vendorcf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_vendorcf` (
  `vendorid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vendorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_vendorcf`
--

LOCK TABLES `vtiger_vendorcf` WRITE;
/*!40000 ALTER TABLE `vtiger_vendorcf` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_vendorcf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_vendorcontactrel`
--

DROP TABLE IF EXISTS `vtiger_vendorcontactrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_vendorcontactrel` (
  `vendorid` int(19) NOT NULL DEFAULT '0',
  `contactid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vendorid`,`contactid`),
  KEY `vendorcontactrel_vendorid_idx` (`vendorid`),
  KEY `vendorcontactrel_contact_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_vendorcontactrel`
--

LOCK TABLES `vtiger_vendorcontactrel` WRITE;
/*!40000 ALTER TABLE `vtiger_vendorcontactrel` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_vendorcontactrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_version`
--

DROP TABLE IF EXISTS `vtiger_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_version` varchar(30) DEFAULT NULL,
  `current_version` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_version`
--

LOCK TABLES `vtiger_version` WRITE;
/*!40000 ALTER TABLE `vtiger_version` DISABLE KEYS */;
INSERT INTO `vtiger_version` VALUES (1,'6.5.0','6.5.0');
/*!40000 ALTER TABLE `vtiger_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_version_seq`
--

DROP TABLE IF EXISTS `vtiger_version_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_version_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_version_seq`
--

LOCK TABLES `vtiger_version_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_version_seq` DISABLE KEYS */;
INSERT INTO `vtiger_version_seq` VALUES (1);
/*!40000 ALTER TABLE `vtiger_version_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_visibility`
--

DROP TABLE IF EXISTS `vtiger_visibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_visibility` (
  `visibilityid` int(19) NOT NULL AUTO_INCREMENT,
  `visibility` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`visibilityid`),
  UNIQUE KEY `visibility_visibility_idx` (`visibility`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_visibility`
--

LOCK TABLES `vtiger_visibility` WRITE;
/*!40000 ALTER TABLE `vtiger_visibility` DISABLE KEYS */;
INSERT INTO `vtiger_visibility` VALUES (1,'Private',0,1),(2,'Public',1,1);
/*!40000 ALTER TABLE `vtiger_visibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_visibility_seq`
--

DROP TABLE IF EXISTS `vtiger_visibility_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_visibility_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_visibility_seq`
--

LOCK TABLES `vtiger_visibility_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_visibility_seq` DISABLE KEYS */;
INSERT INTO `vtiger_visibility_seq` VALUES (2);
/*!40000 ALTER TABLE `vtiger_visibility_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_webforms`
--

DROP TABLE IF EXISTS `vtiger_webforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_webforms` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `publicid` varchar(100) NOT NULL,
  `enabled` int(1) NOT NULL DEFAULT '1',
  `targetmodule` varchar(50) NOT NULL,
  `description` text,
  `ownerid` int(19) NOT NULL,
  `returnurl` varchar(250) DEFAULT NULL,
  `captcha` int(1) NOT NULL DEFAULT '0',
  `roundrobin` int(1) NOT NULL DEFAULT '0',
  `roundrobin_userid` varchar(256) DEFAULT NULL,
  `roundrobin_logic` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `webformname` (`name`),
  UNIQUE KEY `publicid` (`id`),
  KEY `webforms_webforms_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_webforms`
--

LOCK TABLES `vtiger_webforms` WRITE;
/*!40000 ALTER TABLE `vtiger_webforms` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_webforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_webforms_field`
--

DROP TABLE IF EXISTS `vtiger_webforms_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_webforms_field` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `webformid` int(19) NOT NULL,
  `fieldname` varchar(50) NOT NULL,
  `neutralizedfield` varchar(50) NOT NULL,
  `defaultvalue` varchar(200) DEFAULT NULL,
  `required` int(10) NOT NULL DEFAULT '0',
  `sequence` int(10) DEFAULT NULL,
  `hidden` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webforms_webforms_field_idx` (`id`),
  KEY `fk_1_vtiger_webforms_field` (`webformid`),
  KEY `fk_2_vtiger_webforms_field` (`fieldname`),
  CONSTRAINT `fk_1_vtiger_webforms_field` FOREIGN KEY (`webformid`) REFERENCES `vtiger_webforms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_3_vtiger_webforms_field` FOREIGN KEY (`fieldname`) REFERENCES `vtiger_field` (`fieldname`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_webforms_field`
--

LOCK TABLES `vtiger_webforms_field` WRITE;
/*!40000 ALTER TABLE `vtiger_webforms_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_webforms_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_wordtemplates`
--

DROP TABLE IF EXISTS `vtiger_wordtemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_wordtemplates` (
  `templateid` int(19) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `module` varchar(30) NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `parent_type` varchar(50) NOT NULL,
  `data` longblob,
  `description` text,
  `filesize` varchar(50) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`templateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_wordtemplates`
--

LOCK TABLES `vtiger_wordtemplates` WRITE;
/*!40000 ALTER TABLE `vtiger_wordtemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_wordtemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_entity`
--

DROP TABLE IF EXISTS `vtiger_ws_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ws_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `handler_path` varchar(255) NOT NULL,
  `handler_class` varchar(64) NOT NULL,
  `ismodule` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ws_entity`
--

LOCK TABLES `vtiger_ws_entity` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_entity` DISABLE KEYS */;
INSERT INTO `vtiger_ws_entity` VALUES (1,'Campaigns','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(2,'Invoice','include/Webservices/LineItem/VtigerInventoryOperation.php','VtigerInventoryOperation',1),(3,'SalesOrder','include/Webservices/LineItem/VtigerInventoryOperation.php','VtigerInventoryOperation',1),(4,'PurchaseOrder','include/Webservices/LineItem/VtigerInventoryOperation.php','VtigerInventoryOperation',1),(5,'Quotes','include/Webservices/LineItem/VtigerInventoryOperation.php','VtigerInventoryOperation',1),(6,'Faq','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(7,'Vendors','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(8,'PriceBooks','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(9,'Calendar','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(10,'Leads','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(11,'Accounts','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(12,'Contacts','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(13,'Potentials','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(14,'Products','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(15,'Documents','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(16,'Emails','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(17,'HelpDesk','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(18,'Events','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(19,'Users','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(20,'Groups','include/Webservices/VtigerActorOperation.php','VtigerActorOperation',0),(21,'Currency','include/Webservices/VtigerActorOperation.php','VtigerActorOperation',0),(22,'DocumentFolders','include/Webservices/VtigerActorOperation.php','VtigerActorOperation',0),(23,'CompanyDetails','include/Webservices/VtigerCompanyDetails.php','VtigerCompanyDetails',0),(24,'PBXManager','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(25,'Services','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(26,'ServiceContracts','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(27,'ProjectMilestone','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(28,'ProjectTask','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(29,'Project','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(30,'Assets','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(31,'ModComments','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(32,'SMSNotifier','include/Webservices/VtigerModuleOperation.php','VtigerModuleOperation',1),(33,'LineItem','include/Webservices/LineItem/VtigerLineItemOperation.php','VtigerLineItemOperation',0),(34,'Tax','include/Webservices/LineItem/VtigerTaxOperation.php','VtigerTaxOperation',0),(35,'ProductTaxes','include/Webservices/LineItem/VtigerProductTaxesOperation.php','VtigerProductTaxesOperation',0);
/*!40000 ALTER TABLE `vtiger_ws_entity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_entity_fieldtype`
--

DROP TABLE IF EXISTS `vtiger_ws_entity_fieldtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ws_entity_fieldtype` (
  `fieldtypeid` int(19) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(50) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `fieldtype` varchar(200) NOT NULL,
  PRIMARY KEY (`fieldtypeid`),
  UNIQUE KEY `vtiger_idx_1_tablename_fieldname` (`table_name`,`field_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ws_entity_fieldtype`
--

LOCK TABLES `vtiger_ws_entity_fieldtype` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_entity_fieldtype` DISABLE KEYS */;
INSERT INTO `vtiger_ws_entity_fieldtype` VALUES (1,'vtiger_attachmentsfolder','createdby','reference'),(2,'vtiger_organizationdetails','logoname','file'),(3,'vtiger_organizationdetails','phone','phone'),(4,'vtiger_organizationdetails','fax','phone'),(5,'vtiger_organizationdetails','website','url'),(6,'vtiger_inventoryproductrel','productid','reference'),(7,'vtiger_inventoryproductrel','id','reference'),(8,'vtiger_inventoryproductrel','incrementondel','autogenerated'),(9,'vtiger_producttaxrel','productid','reference'),(10,'vtiger_producttaxrel','taxid','reference');
/*!40000 ALTER TABLE `vtiger_ws_entity_fieldtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_entity_fieldtype_seq`
--

DROP TABLE IF EXISTS `vtiger_ws_entity_fieldtype_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ws_entity_fieldtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ws_entity_fieldtype_seq`
--

LOCK TABLES `vtiger_ws_entity_fieldtype_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_entity_fieldtype_seq` DISABLE KEYS */;
INSERT INTO `vtiger_ws_entity_fieldtype_seq` VALUES (10);
/*!40000 ALTER TABLE `vtiger_ws_entity_fieldtype_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_entity_name`
--

DROP TABLE IF EXISTS `vtiger_ws_entity_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ws_entity_name` (
  `entity_id` int(11) NOT NULL,
  `name_fields` varchar(50) NOT NULL,
  `index_field` varchar(50) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ws_entity_name`
--

LOCK TABLES `vtiger_ws_entity_name` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_entity_name` DISABLE KEYS */;
INSERT INTO `vtiger_ws_entity_name` VALUES (20,'groupname','groupid','vtiger_groups'),(21,'currency_name','id','vtiger_currency_info'),(22,'foldername','folderid','vtiger_attachmentsfolder'),(23,'organizationname','groupid','vtiger_organizationdetails'),(34,'taxlabel','taxid','vtiger_inventorytaxinfo');
/*!40000 ALTER TABLE `vtiger_ws_entity_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_entity_referencetype`
--

DROP TABLE IF EXISTS `vtiger_ws_entity_referencetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ws_entity_referencetype` (
  `fieldtypeid` int(19) NOT NULL,
  `type` varchar(25) NOT NULL,
  PRIMARY KEY (`fieldtypeid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ws_entity_referencetype`
--

LOCK TABLES `vtiger_ws_entity_referencetype` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_entity_referencetype` DISABLE KEYS */;
INSERT INTO `vtiger_ws_entity_referencetype` VALUES (5,'Users'),(6,'Products'),(7,'Invoice'),(7,'PurchaseOrder'),(7,'Quotes'),(7,'SalesOrder'),(9,'Products'),(10,'Tax');
/*!40000 ALTER TABLE `vtiger_ws_entity_referencetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_entity_seq`
--

DROP TABLE IF EXISTS `vtiger_ws_entity_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ws_entity_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ws_entity_seq`
--

LOCK TABLES `vtiger_ws_entity_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_entity_seq` DISABLE KEYS */;
INSERT INTO `vtiger_ws_entity_seq` VALUES (35);
/*!40000 ALTER TABLE `vtiger_ws_entity_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_entity_tables`
--

DROP TABLE IF EXISTS `vtiger_ws_entity_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ws_entity_tables` (
  `webservice_entity_id` int(11) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  PRIMARY KEY (`webservice_entity_id`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ws_entity_tables`
--

LOCK TABLES `vtiger_ws_entity_tables` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_entity_tables` DISABLE KEYS */;
INSERT INTO `vtiger_ws_entity_tables` VALUES (20,'vtiger_groups'),(21,'vtiger_currency_info'),(22,'vtiger_attachmentsfolder'),(23,'vtiger_organizationdetails'),(33,'vtiger_inventoryproductrel'),(34,'vtiger_inventorytaxinfo'),(35,'vtiger_producttaxrel');
/*!40000 ALTER TABLE `vtiger_ws_entity_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_fieldinfo`
--

DROP TABLE IF EXISTS `vtiger_ws_fieldinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ws_fieldinfo` (
  `id` varchar(64) NOT NULL,
  `property_name` varchar(32) DEFAULT NULL,
  `property_value` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ws_fieldinfo`
--

LOCK TABLES `vtiger_ws_fieldinfo` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_fieldinfo` DISABLE KEYS */;
INSERT INTO `vtiger_ws_fieldinfo` VALUES ('vtiger_organizationdetails.organization_id','upload.path','1');
/*!40000 ALTER TABLE `vtiger_ws_fieldinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_fieldtype`
--

DROP TABLE IF EXISTS `vtiger_ws_fieldtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ws_fieldtype` (
  `fieldtypeid` int(19) NOT NULL AUTO_INCREMENT,
  `uitype` varchar(30) NOT NULL,
  `fieldtype` varchar(200) NOT NULL,
  PRIMARY KEY (`fieldtypeid`),
  UNIQUE KEY `uitype_idx` (`uitype`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ws_fieldtype`
--

LOCK TABLES `vtiger_ws_fieldtype` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_fieldtype` DISABLE KEYS */;
INSERT INTO `vtiger_ws_fieldtype` VALUES (1,'15','picklist'),(2,'16','picklist'),(3,'19','text'),(4,'20','text'),(5,'21','text'),(6,'24','text'),(7,'3','autogenerated'),(8,'11','phone'),(9,'33','multipicklist'),(10,'17','url'),(11,'85','skype'),(12,'56','boolean'),(13,'156','boolean'),(14,'53','owner'),(15,'61','file'),(16,'28','file'),(17,'13','email'),(18,'71','currency'),(19,'72','currency'),(20,'50','reference'),(21,'51','reference'),(22,'57','reference'),(23,'58','reference'),(24,'73','reference'),(25,'75','reference'),(26,'76','reference'),(27,'78','reference'),(28,'80','reference'),(29,'81','reference'),(30,'101','reference'),(31,'52','reference'),(32,'357','reference'),(33,'59','reference'),(34,'66','reference'),(35,'77','reference'),(36,'68','reference'),(37,'117','reference'),(38,'26','reference'),(39,'10','reference');
/*!40000 ALTER TABLE `vtiger_ws_fieldtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_operation`
--

DROP TABLE IF EXISTS `vtiger_ws_operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ws_operation` (
  `operationid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `handler_path` varchar(255) NOT NULL,
  `handler_method` varchar(64) NOT NULL,
  `type` varchar(8) NOT NULL,
  `prelogin` int(3) NOT NULL,
  PRIMARY KEY (`operationid`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ws_operation`
--

LOCK TABLES `vtiger_ws_operation` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_operation` DISABLE KEYS */;
INSERT INTO `vtiger_ws_operation` VALUES (1,'login','include/Webservices/Login.php','vtws_login','POST',1),(2,'retrieve','include/Webservices/Retrieve.php','vtws_retrieve','GET',0),(3,'create','include/Webservices/Create.php','vtws_create','POST',0),(4,'update','include/Webservices/Update.php','vtws_update','POST',0),(5,'delete','include/Webservices/Delete.php','vtws_delete','POST',0),(6,'sync','include/Webservices/GetUpdates.php','vtws_sync','GET',0),(7,'query','include/Webservices/Query.php','vtws_query','GET',0),(8,'logout','include/Webservices/Logout.php','vtws_logout','POST',0),(9,'listtypes','include/Webservices/ModuleTypes.php','vtws_listtypes','GET',0),(10,'getchallenge','include/Webservices/AuthToken.php','vtws_getchallenge','GET',1),(11,'describe','include/Webservices/DescribeObject.php','vtws_describe','GET',0),(12,'extendsession','include/Webservices/ExtendSession.php','vtws_extendSession','POST',1),(13,'convertlead','include/Webservices/ConvertLead.php','vtws_convertlead','POST',0),(14,'revise','include/Webservices/Revise.php','vtws_revise','POST',0),(15,'changePassword','include/Webservices/ChangePassword.php','vtws_changePassword','POST',0),(16,'deleteUser','include/Webservices/DeleteUser.php','vtws_deleteUser','POST',0),(17,'wsapp_register','modules/WSAPP/api/ws/Register.php','wsapp_register','POST',0),(18,'wsapp_deregister','modules/WSAPP/api/ws/DeRegister.php','wsapp_deregister','POST',0),(19,'wsapp_get','modules/WSAPP/api/ws/Get.php','wsapp_get','POST',0),(20,'wsapp_put','modules/WSAPP/api/ws/Put.php','wsapp_put','POST',0),(21,'wsapp_map','modules/WSAPP/api/ws/Map.php','wsapp_map','POST',0),(22,'mobile.fetchallalerts','modules/Mobile/api/wsapi.php','mobile_ws_fetchAllAlerts','POST',0),(23,'mobile.alertdetailswithmessage','modules/Mobile/api/wsapi.php','mobile_ws_alertDetailsWithMessage','POST',0),(24,'mobile.fetchmodulefilters','modules/Mobile/api/wsapi.php','mobile_ws_fetchModuleFilters','POST',0),(25,'mobile.fetchrecord','modules/Mobile/api/wsapi.php','mobile_ws_fetchRecord','POST',0),(26,'mobile.fetchrecordwithgrouping','modules/Mobile/api/wsapi.php','mobile_ws_fetchRecordWithGrouping','POST',0),(27,'mobile.filterdetailswithcount','modules/Mobile/api/wsapi.php','mobile_ws_filterDetailsWithCount','POST',0),(28,'mobile.listmodulerecords','modules/Mobile/api/wsapi.php','mobile_ws_listModuleRecords','POST',0),(29,'mobile.saverecord','modules/Mobile/api/wsapi.php','mobile_ws_saveRecord','POST',0),(30,'mobile.syncModuleRecords','modules/Mobile/api/wsapi.php','mobile_ws_syncModuleRecords','POST',0),(31,'mobile.query','modules/Mobile/api/wsapi.php','mobile_ws_query','POST',0),(32,'mobile.querywithgrouping','modules/Mobile/api/wsapi.php','mobile_ws_queryWithGrouping','POST',0),(33,'retrieve_inventory','include/Webservices/LineItem/RetrieveInventory.php','vtws_retrieve_inventory','GET',0);
/*!40000 ALTER TABLE `vtiger_ws_operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_operation_parameters`
--

DROP TABLE IF EXISTS `vtiger_ws_operation_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ws_operation_parameters` (
  `operationid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `type` varchar(64) NOT NULL,
  `sequence` int(11) NOT NULL,
  PRIMARY KEY (`operationid`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ws_operation_parameters`
--

LOCK TABLES `vtiger_ws_operation_parameters` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_operation_parameters` DISABLE KEYS */;
INSERT INTO `vtiger_ws_operation_parameters` VALUES (1,'accessKey','String',2),(1,'username','String',1),(2,'id','String',1),(3,'element','encoded',2),(3,'elementType','String',1),(4,'element','encoded',1),(5,'id','String',1),(6,'elementType','String',2),(6,'modifiedTime','DateTime',1),(7,'query','String',1),(8,'sessionName','String',1),(9,'fieldTypeList','encoded',1),(10,'username','String',1),(11,'elementType','String',1),(13,'accountName','String',3),(13,'assignedTo','String',2),(13,'avoidPotential','Boolean',4),(13,'leadId','String',1),(13,'potential','Encoded',5),(14,'element','Encoded',1),(15,'confirmPassword','String',4),(15,'id','String',1),(15,'newPassword','String',3),(15,'oldPassword','String',2),(16,'id','String',1),(16,'newOwnerId','String',2),(17,'synctype','string',2),(17,'type','string',1),(18,'key','string',2),(18,'type','string',1),(19,'key','string',1),(19,'module','string',2),(19,'token','string',3),(20,'element','encoded',2),(20,'key','string',1),(21,'element','encoded',2),(21,'key','string',1),(23,'alertid','string',1),(24,'module','string',1),(25,'record','string',1),(26,'record','string',1),(27,'filterid','string',1),(28,'elements','encoded',1),(29,'module','string',1),(29,'record','string',2),(29,'values','encoded',3),(30,'module','string',1),(30,'page','string',3),(30,'syncToken','string',2),(31,'module','string',1),(31,'page','string',3),(31,'query','string',2),(32,'module','string',1),(32,'page','string',3),(32,'query','string',2),(33,'id','String',1);
/*!40000 ALTER TABLE `vtiger_ws_operation_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_operation_seq`
--

DROP TABLE IF EXISTS `vtiger_ws_operation_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ws_operation_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ws_operation_seq`
--

LOCK TABLES `vtiger_ws_operation_seq` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_operation_seq` DISABLE KEYS */;
INSERT INTO `vtiger_ws_operation_seq` VALUES (33);
/*!40000 ALTER TABLE `vtiger_ws_operation_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_referencetype`
--

DROP TABLE IF EXISTS `vtiger_ws_referencetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ws_referencetype` (
  `fieldtypeid` int(19) NOT NULL,
  `type` varchar(25) NOT NULL,
  PRIMARY KEY (`fieldtypeid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ws_referencetype`
--

LOCK TABLES `vtiger_ws_referencetype` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_referencetype` DISABLE KEYS */;
INSERT INTO `vtiger_ws_referencetype` VALUES (20,'Accounts'),(21,'Accounts'),(22,'Contacts'),(23,'Campaigns'),(24,'Accounts'),(25,'Vendors'),(26,'Potentials'),(27,'Quotes'),(28,'SalesOrder'),(29,'Vendors'),(30,'Users'),(31,'Campaigns'),(31,'Users'),(32,'Accounts'),(32,'Contacts'),(32,'Leads'),(32,'Users'),(32,'Vendors'),(33,'Products'),(34,'Accounts'),(34,'Campaigns'),(34,'HelpDesk'),(34,'Leads'),(34,'Potentials'),(35,'Users'),(36,'Accounts'),(36,'Contacts'),(37,'Currency'),(38,'DocumentFolders');
/*!40000 ALTER TABLE `vtiger_ws_referencetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_ws_userauthtoken`
--

DROP TABLE IF EXISTS `vtiger_ws_userauthtoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_ws_userauthtoken` (
  `userid` int(19) NOT NULL,
  `token` varchar(36) NOT NULL,
  `expiretime` int(19) NOT NULL,
  PRIMARY KEY (`userid`,`expiretime`),
  UNIQUE KEY `userid_idx` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_ws_userauthtoken`
--

LOCK TABLES `vtiger_ws_userauthtoken` WRITE;
/*!40000 ALTER TABLE `vtiger_ws_userauthtoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_ws_userauthtoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_wsapp`
--

DROP TABLE IF EXISTS `vtiger_wsapp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_wsapp` (
  `appid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `appkey` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`appid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_wsapp`
--

LOCK TABLES `vtiger_wsapp` WRITE;
/*!40000 ALTER TABLE `vtiger_wsapp` DISABLE KEYS */;
INSERT INTO `vtiger_wsapp` VALUES (1,'vtigerCRM','58ba970422812','user');
/*!40000 ALTER TABLE `vtiger_wsapp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_wsapp_handlerdetails`
--

DROP TABLE IF EXISTS `vtiger_wsapp_handlerdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_wsapp_handlerdetails` (
  `type` varchar(200) NOT NULL,
  `handlerclass` varchar(100) DEFAULT NULL,
  `handlerpath` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_wsapp_handlerdetails`
--

LOCK TABLES `vtiger_wsapp_handlerdetails` WRITE;
/*!40000 ALTER TABLE `vtiger_wsapp_handlerdetails` DISABLE KEYS */;
INSERT INTO `vtiger_wsapp_handlerdetails` VALUES ('Outlook','OutlookHandler','modules/WSAPP/Handlers/OutlookHandler.php'),('vtigerCRM','vtigerCRMHandler','modules/WSAPP/Handlers/vtigerCRMHandler.php'),('vtigerSyncLib','WSAPP_VtigerSyncEventHandler','modules/WSAPP/synclib/handlers/VtigerSyncEventHandler.php'),('Google_vtigerHandler','Google_Vtiger_Handler','modules/Google/handlers/Vtiger.php'),('Google_vtigerSyncHandler','Google_VtigerSync_Handler','modules/Google/handlers/VtigerSync.php');
/*!40000 ALTER TABLE `vtiger_wsapp_handlerdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_wsapp_queuerecords`
--

DROP TABLE IF EXISTS `vtiger_wsapp_queuerecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_wsapp_queuerecords` (
  `syncserverid` int(19) DEFAULT NULL,
  `details` varchar(300) DEFAULT NULL,
  `flag` varchar(100) DEFAULT NULL,
  `appid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_wsapp_queuerecords`
--

LOCK TABLES `vtiger_wsapp_queuerecords` WRITE;
/*!40000 ALTER TABLE `vtiger_wsapp_queuerecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_wsapp_queuerecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_wsapp_recordmapping`
--

DROP TABLE IF EXISTS `vtiger_wsapp_recordmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_wsapp_recordmapping` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `serverid` varchar(10) DEFAULT NULL,
  `clientid` varchar(255) DEFAULT NULL,
  `clientmodifiedtime` datetime DEFAULT NULL,
  `appid` int(11) DEFAULT NULL,
  `servermodifiedtime` datetime DEFAULT NULL,
  `serverappid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_wsapp_recordmapping`
--

LOCK TABLES `vtiger_wsapp_recordmapping` WRITE;
/*!40000 ALTER TABLE `vtiger_wsapp_recordmapping` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_wsapp_recordmapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vtiger_wsapp_sync_state`
--

DROP TABLE IF EXISTS `vtiger_wsapp_sync_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtiger_wsapp_sync_state` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `stateencodedvalues` varchar(300) NOT NULL,
  `userid` int(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vtiger_wsapp_sync_state`
--

LOCK TABLES `vtiger_wsapp_sync_state` WRITE;
/*!40000 ALTER TABLE `vtiger_wsapp_sync_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `vtiger_wsapp_sync_state` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-08  9:47:33

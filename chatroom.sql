/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : chatroom

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 26/03/2024 23:46:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '昵称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `user_profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理员头像',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'Administrator', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', '1031762352@qq.com');

-- ----------------------------
-- Table structure for conversations
-- ----------------------------
DROP TABLE IF EXISTS `conversations`;
CREATE TABLE `conversations`  (
  `conversation_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NOT NULL,
  `conversation_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`conversation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of conversations
-- ----------------------------
INSERT INTO `conversations` VALUES (1, '2024-03-25 23:59:18', '1202013982944199');
INSERT INTO `conversations` VALUES (2, '2024-03-25 23:59:23', '2922521744485529');
INSERT INTO `conversations` VALUES (3, '2024-03-25 23:59:24', '4005233661701494');
INSERT INTO `conversations` VALUES (4, '2024-03-25 23:59:25', '1703447567040897');
INSERT INTO `conversations` VALUES (5, '2024-03-25 23:59:28', '3920189886112970');
INSERT INTO `conversations` VALUES (6, '2024-03-26 00:49:27', '9240580129670688');
INSERT INTO `conversations` VALUES (7, '2024-03-26 05:40:00', '6125374093294709');
INSERT INTO `conversations` VALUES (8, '2024-03-26 11:23:36', '8745827847980508');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES ('055b47a8-b29d-4a38-98dd-16e34e09bc5f', '1', 'huang', '王路飞', '!good job!!!');
INSERT INTO `feedback` VALUES ('1a46c7a4-5b29-4409-ae1f-ecab8996e254', '1', 'huang', '王路飞', '!!!!good job!!!!wow');
INSERT INTO `feedback` VALUES ('1fb83166-e4d0-49b2-bb9e-a2849e8ff4bc', '1', 'huang', '王路飞', 'good job');
INSERT INTO `feedback` VALUES ('3d73af3e-dc4d-44c8-84cc-787d001482c5', '1', 'huang', '王路飞', '!!!!good job!!!');
INSERT INTO `feedback` VALUES ('509dd4d6-2672-40f9-840c-d93f5d577dc5', '1', 'huang', '王路飞', '!!!!good job!!!!wow');
INSERT INTO `feedback` VALUES ('6d403812-7759-4c07-9616-c9ed900a8bdf', '1', 'huang', '王路飞', '!!!!good job!!!!wow');
INSERT INTO `feedback` VALUES ('980ade45-98c8-4baa-8bcb-c2bc99187608', '1', 'huang', '王路飞', 'woooww！！！man,this is great!');
INSERT INTO `feedback` VALUES ('9a2bd6d5-b42e-4381-ad1b-dc170778c9b5', '1', 'huang', '王路飞', '!good job!!!');
INSERT INTO `feedback` VALUES ('b4e6f36e-a42a-4edf-a7ec-d6748ea9c418', '1', 'huang', '王路飞', '!good job!');
INSERT INTO `feedback` VALUES ('b61c873c-3d3e-4991-b9e6-78eeae23c205', '1', 'huang', '王路飞', '!!!!good job!!!!wow');
INSERT INTO `feedback` VALUES ('b71ca79f-c306-4b6a-924a-2ba2998a8c2b', '36', 'lza1', 'lza1', '123');
INSERT INTO `feedback` VALUES ('c2121704-e610-4fd7-9e11-fa4057df9b3b', '1', 'huang', '王路飞', '!good job!!!');
INSERT INTO `feedback` VALUES ('d009a2a6-c7a3-4b29-b32b-848fca278c45', '1', 'huang', '王路飞', '!!!!good job!!!!wow');
INSERT INTO `feedback` VALUES ('d1741d1e-8151-44eb-ba32-c83cfe107361', '1', 'huang', '王路飞', '!good job!!');
INSERT INTO `feedback` VALUES ('ed70f54e-7748-4d36-adc8-c9131875e6f5', '1', 'huang', '王路飞', '!good job!!!');

-- ----------------------------
-- Table structure for group_chat_messages
-- ----------------------------
DROP TABLE IF EXISTS `group_chat_messages`;
CREATE TABLE `group_chat_messages`  (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `group_id` int(11) NULL DEFAULT NULL,
  `message_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `send_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `read_time` timestamp(0) NULL DEFAULT NULL,
  `message_type_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`message_id`) USING BTREE,
  INDEX `sender_user_name`(`sender_user_name`) USING BTREE,
  INDEX `group_chat_messages_ibfk_2`(`group_id`) USING BTREE,
  CONSTRAINT `group_chat_messages_ibfk_1` FOREIGN KEY (`sender_user_name`) REFERENCES `user` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `group_chat_messages_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `group_chats_room` (`group_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_chat_messages
-- ----------------------------
INSERT INTO `group_chat_messages` VALUES (1, '1234', 2, 'Hello world!', '2024-03-17 08:25:19', NULL, 1);

-- ----------------------------
-- Table structure for group_chats_room
-- ----------------------------
DROP TABLE IF EXISTS `group_chats_room`;
CREATE TABLE `group_chats_room`  (
  `group_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator_username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`group_id`) USING BTREE,
  INDEX `creator_username`(`creator_username`) USING BTREE,
  CONSTRAINT `group_chats_room_ibfk_1` FOREIGN KEY (`creator_username`) REFERENCES `user` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_chats_room
-- ----------------------------
INSERT INTO `group_chats_room` VALUES (1, 'ceshi', '1234');
INSERT INTO `group_chats_room` VALUES (2, 'ceshi', '1234');

-- ----------------------------
-- Table structure for group_msg_content
-- ----------------------------
DROP TABLE IF EXISTS `group_msg_content`;
CREATE TABLE `group_msg_content`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息内容编号',
  `from_id` int(11) NULL DEFAULT NULL COMMENT '发送者的编号',
  `from_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送者的昵称',
  `from_profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发送者的头像',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '消息发送时间',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '消息内容',
  `message_type_id` int(11) NULL DEFAULT NULL COMMENT '消息类型编号',
  `type` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `group_ibfk_1`(`from_id`) USING BTREE,
  INDEX `group_ibfk_2`(`message_type_id`) USING BTREE,
  CONSTRAINT `group_ibfk_1` FOREIGN KEY (`from_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `group_ibfk_2` FOREIGN KEY (`message_type_id`) REFERENCES `message_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_msg_content
-- ----------------------------
INSERT INTO `group_msg_content` VALUES (1, 1, 'yuhangxie', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', '2024-03-25 23:33:49', 'hi everyone my name is yuhangxie', 1, 0);
INSERT INTO `group_msg_content` VALUES (2, 2, 'Sphinx', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmySAa3ICAAAWpIfKxZ8752.jpg', '2024-03-25 23:42:42', 'hi I am Sphinx', 1, 0);
INSERT INTO `group_msg_content` VALUES (3, 4, 'chengyu', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBnXWAJBR9AAAPyfGAllU802.jpg', '2024-03-25 23:52:15', 'hi i am Kevin', 1, 0);
INSERT INTO `group_msg_content` VALUES (4, 5, 'zhecao', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBndmAI2rTAAAVylcn5Yk663.jpg', '2024-03-25 23:54:00', 'nice to meet you', 1, 0);
INSERT INTO `group_msg_content` VALUES (5, 6, 'yunqi', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBnkaAaK_OAAAg-5S2O4o613.jpg', '2024-03-25 23:56:21', 'Let\'s talk about coursework?OK?', 1, 0);
INSERT INTO `group_msg_content` VALUES (6, 7, 'sixi', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBn-OAbC1oAAAO5NhYIUs386.jpg', '2024-03-26 00:02:57', 'sorry I\'m late', 1, 0);
INSERT INTO `group_msg_content` VALUES (7, 8, 'zheyu', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBoICAOiUnAAAVTT-QsnU063.jpg', '2024-03-26 00:05:16', 'It\'s OK', 1, 0);
INSERT INTO `group_msg_content` VALUES (8, 1, 'Han', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', '2024-03-26 00:36:12', 'how is the weather', 1, 0);
INSERT INTO `group_msg_content` VALUES (9, 1, 'Han', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', '2024-03-26 01:03:07', 'so hot', 1, 0);
INSERT INTO `group_msg_content` VALUES (10, 1, 'Han', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', '2024-03-26 02:57:31', NULL, 2, 0);
INSERT INTO `group_msg_content` VALUES (11, 1, 'Han', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', '2024-03-26 05:33:49', 'http://20.68.174.190/group1/M00/00/01/CgAABGYB7byAfpjPAAe_FfVHi7M042.png', 2, 0);
INSERT INTO `group_msg_content` VALUES (12, 1, 'Han', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', '2024-03-26 05:40:10', '11', 1, 0);
INSERT INTO `group_msg_content` VALUES (13, 1, 'Han', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', '2024-03-26 05:40:36', '11', 1, 0);
INSERT INTO `group_msg_content` VALUES (14, 1, 'Han', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', '2024-03-26 05:51:31', '11', 1, 0);
INSERT INTO `group_msg_content` VALUES (15, 1, 'Han', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', '2024-03-26 05:51:45', 'http://20.68.174.190/group1/M00/00/01/CgAABGYB8fCAAmYuAAh_tC1gMfI167.png', 2, 0);
INSERT INTO `group_msg_content` VALUES (16, 7, 'sixi', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBn-OAbC1oAAAO5NhYIUs386.jpg', '2024-03-26 05:51:53', 'http://20.68.174.190/group1/M00/00/01/CgAABGYB8fiAS5DSAAAVTT-QsnU598.jpg', 2, 0);
INSERT INTO `group_msg_content` VALUES (17, 1, 'Han', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', '2024-03-26 05:52:29', '111', 1, 1);
INSERT INTO `group_msg_content` VALUES (18, 1, 'Han', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', '2024-03-26 05:53:05', '111', 1, 1);
INSERT INTO `group_msg_content` VALUES (19, 1, 'Han', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', '2024-03-26 05:57:01', 'limite time', 1, 1);
INSERT INTO `group_msg_content` VALUES (20, 1, 'Han', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', '2024-03-26 08:23:45', '1', 1, 1);
INSERT INTO `group_msg_content` VALUES (21, 1, 'Han', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', '2024-03-26 08:23:48', '1', 1, 1);
INSERT INTO `group_msg_content` VALUES (22, 1, 'Han', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', '2024-03-26 08:23:54', '22', 1, 0);
INSERT INTO `group_msg_content` VALUES (23, 1, 'Han', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', '2024-03-26 08:24:01', '22', 1, 0);
INSERT INTO `group_msg_content` VALUES (24, 1, 'Han', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', '2024-03-26 08:45:12', 'hi everyone', 1, 0);
INSERT INTO `group_msg_content` VALUES (25, 7, 'sixi', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBn-OAbC1oAAAO5NhYIUs386.jpg', '2024-03-26 11:34:00', 'good job', 1, 0);

-- ----------------------------
-- Table structure for group_user
-- ----------------------------
DROP TABLE IF EXISTS `group_user`;
CREATE TABLE `group_user`  (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `group_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`relation_id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `group_user_ibfk_2`(`group_id`) USING BTREE,
  CONSTRAINT `group_user_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `group_user_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `group_chats_room` (`group_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of group_user
-- ----------------------------
INSERT INTO `group_user` VALUES (1, '1234', 2);
INSERT INTO `group_user` VALUES (2, '1234', 2);
INSERT INTO `group_user` VALUES (3, '666', 2);
INSERT INTO `group_user` VALUES (4, '321', 2);

-- ----------------------------
-- Table structure for mail_send_log
-- ----------------------------
DROP TABLE IF EXISTS `mail_send_log`;
CREATE TABLE `mail_send_log`  (
  `msg_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type` tinyint(2) NULL DEFAULT NULL COMMENT '0:反馈，1:验证码',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mail_address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(2) NULL DEFAULT NULL COMMENT '0-投递中，1-成功，2-失败',
  `route_key` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exchange` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` tinyint(2) NULL DEFAULT NULL,
  `try_time` datetime(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`msg_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mail_send_log
-- ----------------------------
INSERT INTO `mail_send_log` VALUES ('0b4ea961-649c-462e-a5d7-f5b2ebba45d0', 2, '{\"hanxruxn@gmail.com\":\"8334\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-25 23:50:51', '2024-03-25 23:50:41', '2024-03-25 23:50:41');
INSERT INTO `mail_send_log` VALUES ('0d5d300d-c796-44e5-8a0d-f4cae6d921ed', 2, '{\"1031298352@qq.com\":\"1795\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-25 23:42:10', '2024-03-25 23:42:00', '2024-03-25 23:42:00');
INSERT INTO `mail_send_log` VALUES ('0e6cd282-9ad7-4e89-967d-3cf3e9a277d4', 2, '{\"hanxrun@gmail.com\":\"5025\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 05:11:19', '2024-03-26 05:11:09', '2024-03-26 05:11:09');
INSERT INTO `mail_send_log` VALUES ('135888ba-11c5-4f3f-9319-5e53219c22b8', 2, '{\"hanxrun@gmail.com\":\"7959\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 05:30:06', '2024-03-26 05:29:56', '2024-03-26 05:29:56');
INSERT INTO `mail_send_log` VALUES ('1b0528be-fe5f-4476-9985-3e0dec810b3a', 2, '{\"1031762352@qq.com\":\"5523\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 02:57:19', '2024-03-26 02:57:09', '2024-03-26 02:57:09');
INSERT INTO `mail_send_log` VALUES ('2307a3fb-ec94-48e2-9859-1128dd6ad27c', 2, '{\"hanxrun@gmail.com\":\"8351\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 04:53:37', '2024-03-26 04:53:27', '2024-03-26 04:53:27');
INSERT INTO `mail_send_log` VALUES ('263e29e0-d828-4499-8a00-4b4dea1a4086', 2, '{\"110311298352@qq.com\":\"9070\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 00:05:00', '2024-03-26 00:04:50', '2024-03-26 00:04:50');
INSERT INTO `mail_send_log` VALUES ('276cf8f4-014c-4d6d-9997-aeee15d2a7cd', 2, '{\"hannxrun@gmail.com\":\"3989\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-25 23:55:03', '2024-03-25 23:54:53', '2024-03-25 23:54:53');
INSERT INTO `mail_send_log` VALUES ('2ffef14a-27de-43de-ab05-49293cf667ef', 2, '{\"1031762352@qq.com\":\"8715\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 05:38:11', '2024-03-26 05:38:01', '2024-03-26 05:38:01');
INSERT INTO `mail_send_log` VALUES ('367c8ced-e7a2-4e1b-bdaf-f82e23e68fd2', 2, '{\"1031762352@qq.com\":\"3234\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 01:20:58', '2024-03-26 01:20:48', '2024-03-26 01:20:48');
INSERT INTO `mail_send_log` VALUES ('40830fc1-a937-4b1a-82a5-00e90f073111', 2, '{\"hhanxrun@gmail.com\":\"3617\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-25 23:53:12', '2024-03-25 23:53:02', '2024-03-25 23:53:02');
INSERT INTO `mail_send_log` VALUES ('46d4148a-9fd8-4954-bbd8-c0493bd57430', 2, '{\"hanxxrun@gmail.com\":\"0143\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-25 23:51:59', '2024-03-25 23:51:49', '2024-03-25 23:51:49');
INSERT INTO `mail_send_log` VALUES ('577256b8-8415-4cf9-a3a9-5f5192299d2d', 2, '{\"1031762352@qq.com\":\"1427\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-25 23:31:39', '2024-03-25 23:31:29', '2024-03-25 23:31:29');
INSERT INTO `mail_send_log` VALUES ('60ff2edf-0aea-49bf-b78c-ce6645d597a6', 2, '{\"1031762352@qq.com\":\"8425\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 05:49:47', '2024-03-26 05:49:37', '2024-03-26 05:49:37');
INSERT INTO `mail_send_log` VALUES ('64e760aa-e6ce-4029-ab47-629590b2ee2f', 2, '{\"hanxrun@gmail.com\":\"9790\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 04:38:37', '2024-03-26 04:38:27', '2024-03-26 04:38:27');
INSERT INTO `mail_send_log` VALUES ('6b8a7d29-bdca-4f92-acb5-5ccc2dab864c', 2, '{\"1031762352@qq.com\":\"9350\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-25 23:31:08', '2024-03-25 23:30:58', '2024-03-25 23:30:58');
INSERT INTO `mail_send_log` VALUES ('6e1a9934-907a-4879-a04e-f8d8128f3a9a', 2, '{\"hanxrun@gmail.com\":\"0390\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 04:57:42', '2024-03-26 04:57:32', '2024-03-26 04:57:32');
INSERT INTO `mail_send_log` VALUES ('703a335f-62c7-4726-9ea7-badc58451d74', 2, '{\"10311298352@qq.com\":\"9047\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 09:09:31', '2024-03-26 09:09:21', '2024-03-26 09:09:21');
INSERT INTO `mail_send_log` VALUES ('70b9879d-378a-4aa2-8e91-e265ce5b0718', 2, '{\"1031762352@qq.com\":\"7494\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 01:31:52', '2024-03-26 01:31:42', '2024-03-26 01:31:42');
INSERT INTO `mail_send_log` VALUES ('77d6800a-5695-4159-aee3-8690ef626780', 2, '{\"1031762352@qq.com\":\"5926\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 00:33:38', '2024-03-26 00:33:28', '2024-03-26 00:33:28');
INSERT INTO `mail_send_log` VALUES ('7e1b8e1e-17a5-4d56-9f27-568318598c0e', 2, '{\"1031298352@qq.com\":\"5894\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-25 23:40:28', '2024-03-25 23:40:18', '2024-03-25 23:40:18');
INSERT INTO `mail_send_log` VALUES ('82084d4d-0fff-4ddd-ae8c-5a704b44f58d', 2, '{\"hanxxrun@gmail.com\":\"2556\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-25 23:51:33', '2024-03-25 23:51:23', '2024-03-25 23:51:23');
INSERT INTO `mail_send_log` VALUES ('83f5330b-f260-48be-ba69-535bc53e78c4', 2, '{\"10311298352@qq.com\":\"3071\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 11:20:09', '2024-03-26 11:19:59', '2024-03-26 11:19:59');
INSERT INTO `mail_send_log` VALUES ('844f0f28-60be-47ac-a2c7-8ace3500f02a', 2, '{\"1031762352@qq.com\":\"7294\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 08:45:00', '2024-03-26 08:44:50', '2024-03-26 08:44:50');
INSERT INTO `mail_send_log` VALUES ('874e34c0-818d-41dc-ba05-7737c89f847a', 2, '{\"?????????\":\"2896\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 02:57:10', '2024-03-26 02:57:00', '2024-03-26 02:57:00');
INSERT INTO `mail_send_log` VALUES ('88c8e673-b26d-49c3-9caf-6ff437009192', 2, '{\"1031762352@qq.com\":\"3019\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 00:47:38', '2024-03-26 00:47:28', '2024-03-26 00:47:28');
INSERT INTO `mail_send_log` VALUES ('898463c9-6f84-40e1-a32a-e1c4a468b842', 2, '{\"1031762352@qq.com\":\"9945\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 08:51:15', '2024-03-26 08:51:05', '2024-03-26 08:51:05');
INSERT INTO `mail_send_log` VALUES ('89f1a436-396d-4480-9b5f-9aff107c0a60', 2, '{\"1031762352@qq.com\":\"5482\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 05:32:49', '2024-03-26 05:32:39', '2024-03-26 05:32:39');
INSERT INTO `mail_send_log` VALUES ('8e6ff037-f342-4aa4-83e1-eb06b0e61b65', 2, '{\"10311298352@qq.com\":\"8991\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 00:02:36', '2024-03-26 00:02:26', '2024-03-26 00:02:26');
INSERT INTO `mail_send_log` VALUES ('8eab826c-bc59-4af5-afbf-4fc3fbfc1173', 2, '{\"hhanxrun@gmail.com\":\"5109\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-25 23:53:40', '2024-03-25 23:53:30', '2024-03-25 23:53:30');
INSERT INTO `mail_send_log` VALUES ('941ba467-f5f4-4204-8966-b128a979fe2b', 2, '{\"1031762352@qq.com\":\"3119\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 02:53:34', '2024-03-26 02:53:24', '2024-03-26 02:53:24');
INSERT INTO `mail_send_log` VALUES ('96952148-e803-47bd-a339-6672440d12c6', 2, '{\"1031762352@qq.com\":\"4994\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 01:36:31', '2024-03-26 01:36:21', '2024-03-26 01:36:21');
INSERT INTO `mail_send_log` VALUES ('96de57aa-80e3-4aaa-8a65-e6fede4b6beb', 2, '{\"1031762352@qq.com\":\"4314\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 02:56:55', '2024-03-26 02:56:45', '2024-03-26 02:56:45');
INSERT INTO `mail_send_log` VALUES ('987e1fa2-7844-4b8c-a624-044b9d005da6', 2, '{\"10311298352@qq.com\":\"1501\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 09:16:39', '2024-03-26 09:16:29', '2024-03-26 09:16:29');
INSERT INTO `mail_send_log` VALUES ('999a5721-af80-4e5d-8905-55864ac4f760', 2, '{\"10311298352@qq.com\":\"4837\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 11:00:42', '2024-03-26 11:00:32', '2024-03-26 11:00:32');
INSERT INTO `mail_send_log` VALUES ('a327c1f0-1a41-439e-a9e2-ebea2ccc9053', 2, '{\"1031298352@qq.com\":\"1915\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-25 23:41:39', '2024-03-25 23:41:29', '2024-03-25 23:41:29');
INSERT INTO `mail_send_log` VALUES ('a9c6698f-2ccb-4500-829f-8ed275a3ac3e', 2, '{\"10311298352@qq.com\":\"4731\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 00:01:53', '2024-03-26 00:01:43', '2024-03-26 00:01:43');
INSERT INTO `mail_send_log` VALUES ('aa00be89-9044-4ced-9243-beb898ba407a', 2, '{\"10311298352@qq.com\":\"6355\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 11:23:27', '2024-03-26 11:23:17', '2024-03-26 11:23:17');
INSERT INTO `mail_send_log` VALUES ('b298e6c9-1f9c-49bd-b698-e369d927617a', 2, '{\"hanxrun@gmail.com\":\"0403\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 05:14:32', '2024-03-26 05:14:22', '2024-03-26 05:14:22');
INSERT INTO `mail_send_log` VALUES ('b977cc1d-2068-4d5a-9c1e-e0b98abd2f4e', 2, '{\"hannxrun@gmail.com\":\"4485\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-25 23:55:36', '2024-03-25 23:55:26', '2024-03-25 23:55:26');
INSERT INTO `mail_send_log` VALUES ('c592ce44-d6d6-4b57-ba8b-9ef5a56536e1', 2, '{\"hanxrun@gmail.com\":\"1802\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 04:51:52', '2024-03-26 04:51:42', '2024-03-26 04:51:42');
INSERT INTO `mail_send_log` VALUES ('cb8455a4-301d-4963-a196-fbe556963d3c', 2, '{\"110311298352@qq.com\":\"4608\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 00:04:32', '2024-03-26 00:04:22', '2024-03-26 00:04:22');
INSERT INTO `mail_send_log` VALUES ('cb991ec7-6405-43a0-83d9-32898212df5e', 2, '{\"1031762352@qq.com\":\"9022\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 02:43:40', '2024-03-26 02:43:30', '2024-03-26 02:43:30');
INSERT INTO `mail_send_log` VALUES ('d64e47c6-864c-4a2a-84a5-c31abfcccd11', 2, '{\"1031762352@qq.com\":\"2138\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 08:23:31', '2024-03-26 08:23:21', '2024-03-26 08:23:21');
INSERT INTO `mail_send_log` VALUES ('d741b72c-b183-4d6f-ad96-4c2b6fcbe1c3', 2, '{\"10311298352@qq.com\":\"5938\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 09:50:51', '2024-03-26 09:50:41', '2024-03-26 09:50:41');
INSERT INTO `mail_send_log` VALUES ('dcdcf524-fb89-4f3c-98ee-b5b148a6bcc8', 2, '{\"hanxrun@gmail.com\":\"7011\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 05:27:55', '2024-03-26 05:27:45', '2024-03-26 05:27:45');
INSERT INTO `mail_send_log` VALUES ('dcf4aea6-f797-4199-aacc-70069f742078', 2, '{\"1031762352@qq.com\":\"7773\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 01:08:48', '2024-03-26 01:08:38', '2024-03-26 01:08:38');
INSERT INTO `mail_send_log` VALUES ('df27ed6c-bcc5-47f9-b942-a6c403dbffb2', 2, '{\"1031762352@qq.com\":\"6055\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 02:57:03', '2024-03-26 02:56:53', '2024-03-26 02:56:53');
INSERT INTO `mail_send_log` VALUES ('e368d6dc-30f8-47f3-94b8-91e5eb6cfdbd', 2, '{\"1031298352@qq.com\":\"1166\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-25 23:39:47', '2024-03-25 23:39:37', '2024-03-25 23:39:37');
INSERT INTO `mail_send_log` VALUES ('eb8fddc8-6133-45cb-8112-5034b3f73e14', 2, '{\"1031762352@qq.com\":\"4434\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-25 23:29:32', '2024-03-25 23:29:22', '2024-03-25 23:29:22');
INSERT INTO `mail_send_log` VALUES ('f1bf624f-7c6c-4b4d-8b8f-7971f0d08f62', 2, '{\"1031762352@qq.com\":\"1384\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 09:45:31', '2024-03-26 09:45:21', '2024-03-26 09:45:21');
INSERT INTO `mail_send_log` VALUES ('f2ab4683-8b99-4629-bb43-0b5e94d66b7d', 2, '{\"10311298352@qq.com\":\"4937\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 05:39:39', '2024-03-26 05:39:29', '2024-03-26 05:39:29');
INSERT INTO `mail_send_log` VALUES ('fb196a10-bfe9-4a19-bb81-16be48bed077', 2, '{\"10311298352@qq.com\":\"1973\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 09:53:52', '2024-03-26 09:53:42', '2024-03-26 09:53:42');
INSERT INTO `mail_send_log` VALUES ('fee51fbf-aa4f-401f-89ae-90b733e56110', 2, '{\"10311298352@qq.com\":\"6410\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 05:50:52', '2024-03-26 05:50:42', '2024-03-26 05:50:42');
INSERT INTO `mail_send_log` VALUES ('fff034cb-17be-4381-9eb9-2ba017bfb754', 2, '{\"10311298352@qq.com\":\"0294\"}', NULL, 1, 'mail-route-verifyCode', 'mail-exchange', 1, '2024-03-26 10:18:53', '2024-03-26 10:18:43', '2024-03-26 10:18:43');

-- ----------------------------
-- Table structure for message_type
-- ----------------------------
DROP TABLE IF EXISTS `message_type`;
CREATE TABLE `message_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息类型编号',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息类型名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message_type
-- ----------------------------
INSERT INTO `message_type` VALUES (1, '文本');
INSERT INTO `message_type` VALUES (2, '图片');
INSERT INTO `message_type` VALUES (3, '文件');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(11) NOT NULL,
  `sender_user_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_time` datetime(0) NOT NULL,
  `read_time` datetime(0) NULL DEFAULT NULL,
  `message_type_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`message_id`) USING BTREE,
  INDEX `ConversationID`(`conversation_id`) USING BTREE,
  INDEX `SenderUserName`(`sender_user_name`) USING BTREE,
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`conversation_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`sender_user_name`) REFERENCES `user` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (1, 1, 'wenyue', 'hi\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2024-03-25 23:59:20', NULL, 1);
INSERT INTO `messages` VALUES (2, 6, 'yuhangxie', 'so hot\0\0\0\0\0\0\0\0\0\0', '2024-03-26 01:03:16', NULL, 1);
INSERT INTO `messages` VALUES (3, 6, 'yuhangxie', '6Y0JEmOHxqBh4SeFaI+oLQ==', '2024-03-26 02:39:49', NULL, 2);
INSERT INTO `messages` VALUES (4, 6, 'yuhangxie', '6Y0JEmOHxqBh4SeFaI+oLQ==', '2024-03-26 02:41:54', NULL, 2);
INSERT INTO `messages` VALUES (5, 6, 'yuhangxie', '6Y0JEmOHxqBh4SeFaI+oLQ==', '2024-03-26 02:43:54', NULL, 2);
INSERT INTO `messages` VALUES (6, 7, 'yuhangxie', 'hi sixi\0\0\0\0\0\0\0\0\0', '2024-03-26 05:40:55', NULL, 1);
INSERT INTO `messages` VALUES (7, 7, 'yuhangxie', '11\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2024-03-26 05:46:55', NULL, 1);
INSERT INTO `messages` VALUES (8, 7, 'yuhangxie', '11\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2024-03-26 05:51:21', NULL, 1);
INSERT INTO `messages` VALUES (9, 7, 'sixi', 'a\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0', '2024-03-26 11:23:41', NULL, 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '昵称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `user_profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `user_state_id` int(11) NULL DEFAULT 2 COMMENT '用户状态id',
  `is_enabled` tinyint(1) NULL DEFAULT 1 COMMENT '是否可用',
  `is_locked` tinyint(1) NULL DEFAULT 0 COMMENT '是否被锁定',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mail_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `username_2`(`username`) USING BTREE,
  UNIQUE INDEX `UK_sb8bbouer5wak8vyiiy4pf2bx`(`username`) USING BTREE,
  UNIQUE INDEX `unique_username`(`username`) USING BTREE,
  UNIQUE INDEX `username_3`(`username`) USING BTREE,
  UNIQUE INDEX `username_4`(`username`) USING BTREE,
  INDEX `user_ibfk_1`(`user_state_id`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_state_id`) REFERENCES `user_state` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'yuhangxie', 'Han', '$2a$10$j8LeA/v6POmDZQ0XHJTLYuzVd.lxQxI65c6VePOvPDMLBO9mNHUqm', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmKGAHgb1AAGXZYfMEP0013.png', 2, 1, 0, '1031762352@qq.com', NULL);
INSERT INTO `user` VALUES (2, 'wenyue', 'Sphinx', '$2a$10$EeQXRKoCC8usS4fx08E4wuNoXgo0uE46LW9N9J6FOEmbwM.vTg76K', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBmySAa3ICAAAWpIfKxZ8752.jpg', 2, 1, 0, '1031298352@qq.com', NULL);
INSERT INTO `user` VALUES (3, 'liziang', 'David', '$2a$10$dx803zPoJBucQaCuck5krONJvreHIUSsioxGPd7m5Zs9AfDoxE6wG', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBnUuAN4A_AAAU6oVR3cY128.jpg', 2, 1, 0, 'hanxruxn@gmail.com', NULL);
INSERT INTO `user` VALUES (4, 'chengyu', 'Kevin', '$2a$10$.pN57QyOTOD4aXe2O7oZueg0gYDCZPQSgYPXtwSUFnTcqJH7FzC92', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBnXWAJBR9AAAPyfGAllU802.jpg', 2, 1, 0, 'hanxxrun@gmail.com', NULL);
INSERT INTO `user` VALUES (5, 'zhecao', 'Jack', '$2a$10$rG9KFUEu/a45/6ONmFbnTOWgjUblSzcv/5gFeBQ/7n.FL10MR.WEu', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBndmAI2rTAAAVylcn5Yk663.jpg', 2, 1, 0, 'hhanxrun@gmail.com', NULL);
INSERT INTO `user` VALUES (6, 'yunqi', 'Liam', '$2a$10$qfrhuc3g76k2Pg3MCO/mheAscJZAFDlptZSeC7OiUgv2tP/e0jKPa', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBnkaAaK_OAAAg-5S2O4o613.jpg', 2, 1, 0, 'hannxrun@gmail.com', NULL);
INSERT INTO `user` VALUES (7, 'sixi', 'sixi', '$2a$10$AKQ1CtJHWXBR.zSidgFTfeMGz/SbuSJH3r/dIyAb2hkSuyvi.18jq', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBn-OAbC1oAAAO5NhYIUs386.jpg', 2, 1, 0, '10311298352@qq.com', NULL);
INSERT INTO `user` VALUES (8, 'zheyu', 'zheyu', '$2a$10$L.NLRAw5Bu/pFKesCvV0gO3wTw9RRcFLhFleuUZ6WgLkEpLoUao1y', 'http://20.68.174.190/group1/M00/00/00/CgAABGYBoICAOiUnAAAVTT-QsnU063.jpg', 2, 1, 0, '110311298352@qq.com', NULL);
INSERT INTO `user` VALUES (11, 'team7', 'team7', '$2a$10$PMtIt7Ls96mlYGXu.0ZkEeGAzIYq0G9jcoq1hMtK/MSdUC451t8Nq', 'http://20.68.174.190/group1/M00/00/01/CgAABGYB7DeAJJfAAAe_FfVHi7M129.png', 2, 1, 0, 'hanxrun@gmail.com', NULL);

-- ----------------------------
-- Table structure for user_state
-- ----------------------------
DROP TABLE IF EXISTS `user_state`;
CREATE TABLE `user_state`  (
  `id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_state
-- ----------------------------
INSERT INTO `user_state` VALUES (1, 'online');
INSERT INTO `user_state` VALUES (2, 'Offline');
INSERT INTO `user_state` VALUES (3, '已注销');

-- ----------------------------
-- Table structure for userconversations
-- ----------------------------
DROP TABLE IF EXISTS `userconversations`;
CREATE TABLE `userconversations`  (
  `user_conversationid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `join_time` datetime(0) NOT NULL,
  PRIMARY KEY (`user_conversationid`) USING BTREE,
  INDEX `FK5i4832hnascoqpeqmfv8m4kb`(`conversation_id`) USING BTREE,
  INDEX `FKg6ibyy8w4nv2k4u18b9x108yh`(`username`) USING BTREE,
  CONSTRAINT `FK5i4832hnascoqpeqmfv8m4kb` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`conversation_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKg6ibyy8w4nv2k4u18b9x108yh` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userconversations
-- ----------------------------
INSERT INTO `userconversations` VALUES (1, 'wenyue', 1, '2024-03-25 23:59:18');
INSERT INTO `userconversations` VALUES (2, 'yuhangxie', 1, '2024-03-25 23:59:18');
INSERT INTO `userconversations` VALUES (3, 'wenyue', 2, '2024-03-25 23:59:23');
INSERT INTO `userconversations` VALUES (4, 'liziang', 2, '2024-03-25 23:59:23');
INSERT INTO `userconversations` VALUES (5, 'wenyue', 3, '2024-03-25 23:59:24');
INSERT INTO `userconversations` VALUES (6, 'chengyu', 3, '2024-03-25 23:59:24');
INSERT INTO `userconversations` VALUES (7, 'wenyue', 4, '2024-03-25 23:59:25');
INSERT INTO `userconversations` VALUES (8, 'zhecao', 4, '2024-03-25 23:59:25');
INSERT INTO `userconversations` VALUES (9, 'wenyue', 5, '2024-03-25 23:59:28');
INSERT INTO `userconversations` VALUES (10, 'yunqi', 5, '2024-03-25 23:59:28');
INSERT INTO `userconversations` VALUES (11, 'yuhangxie', 6, '2024-03-26 00:49:27');
INSERT INTO `userconversations` VALUES (12, 'zheyu', 6, '2024-03-26 00:49:27');
INSERT INTO `userconversations` VALUES (13, 'sixi', 7, '2024-03-26 05:40:00');
INSERT INTO `userconversations` VALUES (14, 'yuhangxie', 7, '2024-03-26 05:40:00');
INSERT INTO `userconversations` VALUES (15, 'sixi', 8, '2024-03-26 11:23:36');
INSERT INTO `userconversations` VALUES (16, 'wenyue', 8, '2024-03-26 11:23:36');

SET FOREIGN_KEY_CHECKS = 1;

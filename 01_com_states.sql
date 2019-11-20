--
-- Table structure for table `com_states`
--

CREATE TABLE `com_states` (
  `id` int(8) NOT NULL,
  `name` varchar(100) NOT NULL,
  `countryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_states`
--

INSERT INTO `com_states` (`id`, `name`, `countryID`) VALUES
(1, 'Andaman and Nicobar (AN)', 99),
(2, 'Andhra Pradesh (AP)', 99),
(3, 'Arunachal Pradesh (AR)', 99),
(4, 'Assam (AS)', 99),
(5, 'Bihar (BR)', 99),
(6, 'Chandigarh (CH)', 99),
(7, 'Chhattisgarh (CG)', 99),
(8, 'Dadra and Nagar Haveli (DN)', 99),
(9, 'Daman and Diu (DD)', 99),
(10, 'Delhi (DL)', 99),
(11, 'Goa (GA)', 99),
(12, 'Gujarat (GJ)', 99),
(13, 'Haryana (HR)', 99),
(14, 'Himachal Pradesh (HP)', 99),
(15, 'Jammu and Kashmir (JK)', 99),
(16, 'Jharkhand (JH)', 99),
(17, 'Karnataka (KA)', 99),
(18, 'Kerala (KL)', 99),
(19, 'Lakshdweep (LD)', 99),
(20, 'Madhya Pradesh (MP)', 99),
(21, 'Maharashtra (MH)', 99),
(22, 'Manipur (MN)', 99),
(23, 'Meghalaya (ML)', 99),
(24, 'Mizoram (MZ)', 99),
(25, 'Nagaland (NL)', 99),
(26, 'Odisha (OD)', 99),
(27, 'Puducherry (PY)', 99),
(28, 'Punjab (PB)', 99),
(29, 'Rajasthan (RJ)', 99),
(30, 'Sikkim (SK)', 99),
(31, 'Tamil Nadu (TN)', 99),
(32, 'Tripura (TR)', 99),
(33, 'Uttar Pradesh (UP)', 99),
(34, 'Uttarakhand (UK)', 99),
(35, 'West Bengal (WB)', 99);

-- --------------------------------------------------------
ALTER TABLE `com_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countryID` (`countryID`);

ALTER TABLE `com_states`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

ALTER TABLE `com_states`
  ADD CONSTRAINT `com_states_ibfk_1` FOREIGN KEY (`countryID`) REFERENCES `com_countries` (`id`);

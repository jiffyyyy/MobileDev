import React, { useEffect, useState } from "react";
import { Box, Stack, typography } from "@mui/system";
import { SideBar } from "../components";
const Feed = () => {
  const [selectedCategory, setSelectesCategory] = useState("New");
  return (
    <Stack sx={{ flexDirection: { sx: "column", md: "row" } }}>
      <Box
        sx={{
          height: { sx: "auto", md: "92vh" },
          borderRight: "1px solid #3d3d3d",
          px: { sx: 0, md: 2 },
        }}
      >
        <SideBar
          selectedCategory={selectedCategory}
          setSelectedCategory={setSelectesCategory}
        ></SideBar>
      </Box>
      <Box>Video</Box>
    </Stack>
  );
};

export default Feed;

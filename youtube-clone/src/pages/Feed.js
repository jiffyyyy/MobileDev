import React, { useEffect, useState } from "react";
import { Box, Stack, typography } from "@mui/system";
import {SideBar,Videos} from "../components";
import { fetchFromAPI } from "../utils/fetchFromAPI";

const Feed = () => {
  const [selectedCategory, setSelectesCategory] = useState("New");
  const [videos, setVideos] = useState(null);
  useEffect(()=>{
    fetchFromAPI(`search?part=snippet&q=${selectedCategory}`).then((data) => setVideos(data.items))
  },[selectedCategory])
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
      <Videos videos={videos}/>
    </Stack>
  );
};

export default Feed;

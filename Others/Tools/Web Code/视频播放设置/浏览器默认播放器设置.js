/*
在视频页面按 F12 (部分电脑是 Fn + F12) 进入开发者模式, 打开控制台,
1. 如果用 Edge 默认播放器 (比如将本地视频拖至浏览器, 或者看希冀上的视频),
自带功能很少, 将本文件的所有内容复制到控制台后回车即可;
2. 如果用 b 站看视频, 平台自带大部分功能, 复制前 32 行即可.
*/
var deltaVolume = 0.1;  // 1 代表 100% 音量, 每次增减 0.1
var deltaTime = 5;      // 单位秒, 每次增减 5 秒
var deltaRate = 0.1;    // 播放倍速

var isAltPressed = false;
var video = document.querySelector("video");

window.addEventListener("wheel", function(event) { 
    event = event || window.event;  // 考虑兼容性
    if (event.altKey === false) {
        return;
    } // 不按 Alt 就是正常的滚动
    event.preventDefault(); // 停止默认功能
    if (event.deltaY < 0) {
        // 注意向上滚动时 deltaY < 0
        video.playbackRate = (video.playbackRate + deltaRate).toFixed(1);
    } else if (video.playbackRate >= deltaRate + 0.1) {
        // 不要直接用 -=, 那样会出现 1.1000000000001 之类的令强迫症不爽的情况.
        video.playbackRate = (video.playbackRate - deltaRate).toFixed(1);
    } // 按 Alt 就是调节倍速
    console.log("视频倍速为 " + video.playbackRate);
}, {
    passive: false
});

console.clear();

document.onkeyup = function(event) {
    // console.log("keyCode: " + event.keyCode);
    var e = event || window.event || arguments.callee.caller.arguments[0];
    if (e && e.keyCode === 38) {
        if (video.volume + deltaVolume <= 1) {
            video.volume += deltaVolume;
        } else {
            video.volume = 1;
        } // Up
        console.log("音量: " + (100*video.volume).toFixed(0));
        return false;
    } else if (e && e.keyCode === 40) {
        if (video.volume - deltaVolume >= 0) {
            video.volume -= deltaVolume;
        } else {
            video.volume = 0;
        } // Down
        console.log("音量: " + (100*video.volume).toFixed(0));
        return false;
    } else if (e && e.keyCode === 37) {
        if (video.currentTime - deltaTime >= 0) {
            video.currentTime -= deltaTime;
        } else {
            video.currentTime = 0;
        } // Left
        console.log("后退 " + deltaTime.toFixed(0) + " 秒");
        return false;
    } else if (e && e.keyCode === 39) {
        if (video.currentTime + deltaTime <= video.duration) {
            video.currentTime += deltaTime;
        } else {
            video.currentTime = video.duration;
        } // Right
        console.log("前进 " + deltaTime.toFixed(0) + " 秒");
        return false;
    } else if (e && e.keyCode === 32) {
        if (video.paused) {
            // video.play();  // 默认网页浏览器已有次功能, 无需重写
            console.log("已停止播放"); // 自己写的话, 这里是已播放
        } else {
            // video.pause(); // 默认网页浏览器已有次功能, 无需重写
            console.log("已开始播放");
        } // Space
        return false;
    } else if (e && e.keyCode === 65) {
        if (video.playbackRate >= deltaRate + 0.1) {
            video.playbackRate = (video.playbackRate - deltaRate).toFixed(1);
        }
        console.log("视频倍速为 " + video.playbackRate);
        return false;
    } else if (e && e.keyCode === 68) {
        video.playbackRate = (video.playbackRate + deltaRate).toFixed(1);
        console.log("视频倍速为 " + video.playbackRate);
        return false;
    }
}

console.clear();
console.log("起止播放: 空格键");
console.log("调节音量: 上下键 (每次增减 10 音量)");
console.log("调节时间: 左右键 (每次增减 5 秒)");
console.log("修改倍速: (Alt + 滚轮) 或 (A / D)");

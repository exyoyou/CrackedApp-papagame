package com.join.kotlin.base.impl;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\b\u0010\u0005\u001a\u00020\u0003H\u0016J\b\u0010\u0006\u001a\u00020\u0003H\u0016J\b\u0010\u0007\u001a\u00020\u0003H\u0016J\b\u0010\b\u001a\u00020\u0003H\u0016J\b\u0010\t\u001a\u00020\u0003H\u0016J\b\u0010\n\u001a\u00020\u0003H\u0016J\b\u0010\u000b\u001a\u00020\u0003H\u0016J\b\u0010\f\u001a\u00020\u0003H\u0016J\b\u0010\r\u001a\u00020\u0003H\u0016J\b\u0010\u000e\u001a\u00020\u0003H\u0016J\b\u0010\u000f\u001a\u00020\u0003H\u0016J\b\u0010\u0010\u001a\u00020\u0003H\u0016¨\u0006\u0011"}, d2 = {"Lcom/join/kotlin/base/impl/GameType;", "", "isModGameVm", "", "isSingleGameVm", "isNetGameVm", "isNetGame", "isMiniGame", "is64Bit", "isBtGame", "isGameVm", "isGame", "isH5Game", "isHmCloud", "isH5VmGame", "isCpsGame", "isAndroidGame", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface GameType {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class DefaultImpls {
        public static boolean is64Bit(@NotNull GameType gameType) {
            return false;
        }

        public static boolean isAndroidGame(@NotNull GameType gameType) {
            return true;
        }

        public static boolean isBtGame(@NotNull GameType gameType) {
            return false;
        }

        public static boolean isCpsGame(@NotNull GameType gameType) {
            return false;
        }

        public static boolean isGame(@NotNull GameType gameType) {
            return false;
        }

        public static boolean isGameVm(@NotNull GameType gameType) {
            return false;
        }

        public static boolean isH5Game(@NotNull GameType gameType) {
            return false;
        }

        public static boolean isH5VmGame(@NotNull GameType gameType) {
            return false;
        }

        public static boolean isHmCloud(@NotNull GameType gameType) {
            return false;
        }

        public static boolean isMiniGame(@NotNull GameType gameType) {
            return false;
        }

        public static boolean isModGameVm(@NotNull GameType gameType) {
            return false;
        }

        public static boolean isNetGame(@NotNull GameType gameType) {
            return false;
        }

        public static boolean isNetGameVm(@NotNull GameType gameType) {
            return false;
        }

        public static boolean isSingleGameVm(@NotNull GameType gameType) {
            return false;
        }
    }

    boolean is64Bit();

    boolean isAndroidGame();

    boolean isBtGame();

    boolean isCpsGame();

    boolean isGame();

    boolean isGameVm();

    boolean isH5Game();

    boolean isH5VmGame();

    boolean isHmCloud();

    boolean isMiniGame();

    boolean isModGameVm();

    boolean isNetGame();

    boolean isNetGameVm();

    boolean isSingleGameVm();
}

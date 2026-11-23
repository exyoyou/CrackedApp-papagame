.class public Lde/robv/android/xposed/XC_MethodHook$Unhook;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lde/robv/android/xposed/callbacks/IXUnhook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/XC_MethodHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Unhook"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lde/robv/android/xposed/callbacks/IXUnhook<",
        "Lde/robv/android/xposed/XC_MethodHook;",
        ">;"
    }
.end annotation


# instance fields
.field private final hookMethod:Ljava/lang/reflect/Member;

.field final synthetic this$0:Lde/robv/android/xposed/XC_MethodHook;


# direct methods
.method constructor <init>(Lde/robv/android/xposed/XC_MethodHook;Ljava/lang/reflect/Member;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lde/robv/android/xposed/XC_MethodHook$Unhook;->this$0:Lde/robv/android/xposed/XC_MethodHook;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lde/robv/android/xposed/XC_MethodHook$Unhook;->hookMethod:Ljava/lang/reflect/Member;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCallback()Lde/robv/android/xposed/XC_MethodHook;
    .locals 1

    .line 2
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$Unhook;->this$0:Lde/robv/android/xposed/XC_MethodHook;

    return-object v0
.end method

.method public bridge synthetic getCallback()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lde/robv/android/xposed/XC_MethodHook$Unhook;->getCallback()Lde/robv/android/xposed/XC_MethodHook;

    move-result-object v0

    return-object v0
.end method

.method public getHookedMethod()Ljava/lang/reflect/Member;
    .locals 1

    .line 1
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$Unhook;->hookMethod:Ljava/lang/reflect/Member;

    .line 2
    .line 3
    return-object v0
.end method

.method public unhook()V
    .locals 2

    .line 1
    iget-object v0, p0, Lde/robv/android/xposed/XC_MethodHook$Unhook;->hookMethod:Ljava/lang/reflect/Member;

    .line 2
    .line 3
    iget-object v1, p0, Lde/robv/android/xposed/XC_MethodHook$Unhook;->this$0:Lde/robv/android/xposed/XC_MethodHook;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lde/robv/android/xposed/XposedBridge;->unhookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

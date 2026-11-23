.class public Lcom/swift/sandhook/SandHookConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swift/sandhook/SandHookConfig$LibLoader;
    }
.end annotation


# static fields
.field public static volatile DEBUG:Z = true

.field public static volatile SDK_INT:I

.field public static volatile compiler:Z

.field public static volatile curUser:I

.field public static volatile delayHook:Z

.field public static volatile initClassLoader:Ljava/lang/ClassLoader;

.field public static volatile libLoader:Lcom/swift/sandhook/SandHookConfig$LibLoader;

.field public static volatile libSandHookPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    sput v0, Lcom/swift/sandhook/SandHookConfig;->SDK_INT:I

    .line 4
    .line 5
    sget v0, Lcom/swift/sandhook/SandHookConfig;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1d

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    sput-boolean v0, Lcom/swift/sandhook/SandHookConfig;->compiler:Z

    .line 17
    .line 18
    sput v3, Lcom/swift/sandhook/SandHookConfig;->curUser:I

    .line 19
    .line 20
    sput-boolean v2, Lcom/swift/sandhook/SandHookConfig;->delayHook:Z

    .line 21
    .line 22
    new-instance v0, Lcom/swift/sandhook/SandHookConfig$1;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/swift/sandhook/SandHookConfig$1;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/swift/sandhook/SandHookConfig;->libLoader:Lcom/swift/sandhook/SandHookConfig$LibLoader;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

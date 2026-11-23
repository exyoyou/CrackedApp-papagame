.class public Lcom/vincent/videocompressor/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vincent/videocompressor/h$b;,
        Lcom/vincent/videocompressor/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "h"


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/vincent/videocompressor/h$a;)Lcom/vincent/videocompressor/h$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcPath",
            "destPath",
            "listener"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vincent/videocompressor/h$b;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p2, v1}, Lcom/vincent/videocompressor/h$b;-><init>(Lcom/vincent/videocompressor/h$a;I)V

    .line 5
    .line 6
    .line 7
    filled-new-array {p0, p1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lcom/vincent/videocompressor/h$a;)Lcom/vincent/videocompressor/h$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcPath",
            "destPath",
            "listener"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vincent/videocompressor/h$b;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, p2, v1}, Lcom/vincent/videocompressor/h$b;-><init>(Lcom/vincent/videocompressor/h$a;I)V

    .line 5
    .line 6
    .line 7
    filled-new-array {p0, p1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lcom/vincent/videocompressor/h$a;)Lcom/vincent/videocompressor/h$b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcPath",
            "destPath",
            "listener"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/vincent/videocompressor/h$b;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p2, v1}, Lcom/vincent/videocompressor/h$b;-><init>(Lcom/vincent/videocompressor/h$a;I)V

    .line 5
    .line 6
    .line 7
    filled-new-array {p0, p1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

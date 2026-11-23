.class public final Lcom/byazt/vv/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2ad,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/vv/tt$tt;,
        Lcom/byazt/vv/tt$c;
    }
.end annotation


# direct methods
.method public static c(JLjava/lang/String;Lcom/byazt/vv/tt$tt;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/vv/tt$c;

    .line 2
    .line 3
    invoke-direct {v0, p3, p0, p1}, Lcom/byazt/vv/tt$c;-><init>(Lcom/byazt/vv/tt$tt;J)V

    .line 4
    .line 5
    .line 6
    filled-new-array {p2}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Lcom/byazt/jtc/tt;->c([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 11
    .line 12
    .line 13
    return-void
.end method

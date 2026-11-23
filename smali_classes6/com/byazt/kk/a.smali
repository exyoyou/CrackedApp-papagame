.class public Lcom/byazt/kk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26b,
        0x22
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/ga/sl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/kk/n;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/kk/n;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/kk/a;->c:Lcom/byazt/ga/sl;

    .line 7
    .line 8
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/byazt/kk/a;->c:Lcom/byazt/ga/sl;

    invoke-interface {v0, p0, p1}, Lcom/byazt/ga/sl;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static tt(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/kk/a;->c:Lcom/byazt/ga/sl;

    invoke-interface {v0, p0}, Lcom/byazt/ga/sl;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static tt(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/byazt/kk/a;->c:Lcom/byazt/ga/sl;

    invoke-interface {v0, p0, p1}, Lcom/byazt/ga/sl;->tt(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

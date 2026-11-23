.class public Lcom/byazt/nys/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ae,
        0x2e
    }
.end annotation


# static fields
.field public static c:Ljava/lang/StringBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/nys/n;->c:Ljava/lang/StringBuffer;

    .line 7
    .line 8
    return-void
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/byazt/nys/n;->c:Ljava/lang/StringBuffer;

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/byazt/nys/n;->c:Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const v1, 0x32000

    if-le v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v0, Lcom/byazt/nys/n;->c:Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static tt()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/byazt/nys/n;->c:Ljava/lang/StringBuffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    :goto_0
    const/4 v1, 0x0

    .line 13
    sput-object v1, Lcom/byazt/nys/n;->c:Ljava/lang/StringBuffer;

    .line 14
    .line 15
    return-object v0
.end method

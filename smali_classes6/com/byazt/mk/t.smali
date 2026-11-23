.class public final Lcom/byazt/mk/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x287,
        0x42
    }
.end annotation


# static fields
.field public static final c:Ljava/util/logging/Logger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/byazt/mk/t;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/byazt/mk/t;->c:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c(Ljava/io/File;)Lcom/byazt/mk/my;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 17
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/byazt/mk/t;->c(Ljava/io/InputStream;)Lcom/byazt/mk/my;

    move-result-object p0

    return-object p0

    .line 18
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/io/InputStream;)Lcom/byazt/mk/my;
    .locals 1

    .line 13
    new-instance v0, Lcom/byazt/mk/gt;

    invoke-direct {v0}, Lcom/byazt/mk/gt;-><init>()V

    invoke-static {p0, v0}, Lcom/byazt/mk/t;->c(Ljava/io/InputStream;Lcom/byazt/mk/gt;)Lcom/byazt/mk/my;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/io/InputStream;Lcom/byazt/mk/gt;)Lcom/byazt/mk/my;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 14
    new-instance v0, Lcom/byazt/mk/t$2;

    invoke-direct {v0, p1, p0}, Lcom/byazt/mk/t$2;-><init>(Lcom/byazt/mk/gt;Ljava/io/InputStream;)V

    return-object v0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lcom/byazt/mk/my;)Lcom/byazt/mk/n;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/mk/yp;

    invoke-direct {v0, p0}, Lcom/byazt/mk/yp;-><init>(Lcom/byazt/mk/my;)V

    return-object v0
.end method

.method public static c()Lcom/byazt/mk/rh;
    .locals 1

    .line 19
    new-instance v0, Lcom/byazt/mk/t$3;

    invoke-direct {v0}, Lcom/byazt/mk/t$3;-><init>()V

    return-object v0
.end method

.method public static c(Ljava/io/OutputStream;)Lcom/byazt/mk/rh;
    .locals 1

    .line 3
    new-instance v0, Lcom/byazt/mk/gt;

    invoke-direct {v0}, Lcom/byazt/mk/gt;-><init>()V

    invoke-static {p0, v0}, Lcom/byazt/mk/t;->c(Ljava/io/OutputStream;Lcom/byazt/mk/gt;)Lcom/byazt/mk/rh;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/io/OutputStream;Lcom/byazt/mk/gt;)Lcom/byazt/mk/rh;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lcom/byazt/mk/t$1;

    invoke-direct {v0, p1, p0}, Lcom/byazt/mk/t$1;-><init>(Lcom/byazt/mk/gt;Ljava/io/OutputStream;)V

    return-object v0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Ljava/net/Socket;)Lcom/byazt/mk/rh;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {p0}, Lcom/byazt/mk/t;->ve(Ljava/net/Socket;)Lcom/byazt/mk/c;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/byazt/mk/t;->c(Ljava/io/OutputStream;Lcom/byazt/mk/gt;)Lcom/byazt/mk/rh;

    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Lcom/byazt/mk/c;->c(Lcom/byazt/mk/rh;)Lcom/byazt/mk/rh;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s output stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static c(Lcom/byazt/mk/rh;)Lcom/byazt/mk/uj;
    .locals 1

    .line 2
    new-instance v0, Lcom/byazt/mk/u;

    invoke-direct {v0, p0}, Lcom/byazt/mk/u;-><init>(Lcom/byazt/mk/rh;)V

    return-object v0
.end method

.method public static c(Ljava/lang/AssertionError;)Z
    .locals 1

    .line 20
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static tt(Ljava/net/Socket;)Lcom/byazt/mk/my;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/byazt/mk/t;->ve(Ljava/net/Socket;)Lcom/byazt/mk/c;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/byazt/mk/t;->c(Ljava/io/InputStream;Lcom/byazt/mk/gt;)Lcom/byazt/mk/my;

    move-result-object p0

    .line 6
    invoke-virtual {v0, p0}, Lcom/byazt/mk/c;->c(Lcom/byazt/mk/my;)Lcom/byazt/mk/my;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "socket\'s input stream == null"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "socket == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static tt(Ljava/io/File;)Lcom/byazt/mk/rh;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/byazt/mk/t;->c(Ljava/io/OutputStream;)Lcom/byazt/mk/rh;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static ve(Ljava/net/Socket;)Lcom/byazt/mk/c;
    .locals 1

    .line 3
    new-instance v0, Lcom/byazt/mk/t$4;

    invoke-direct {v0, p0}, Lcom/byazt/mk/t$4;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method

.method public static ve(Ljava/io/File;)Lcom/byazt/mk/rh;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lcom/byazt/mk/t;->c(Ljava/io/OutputStream;)Lcom/byazt/mk/rh;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "file == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

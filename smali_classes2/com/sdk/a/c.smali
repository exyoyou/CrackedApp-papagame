.class public Lcom/sdk/a/c;
.super Lcom/sdk/d/c;
.source "SourceFile"

# interfaces
.implements Lcom/sdk/c/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sdk/d/c<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/sdk/c/b;"
    }
.end annotation


# static fields
.field public static final B:Lcom/sdk/a/b;

.field public static C:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/lang/String;

.field public i:J

.field public j:Lcom/sdk/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/e/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Lcom/sdk/a/c$a;

.field public n:I

.field public o:Z

.field public p:J

.field public q:Ljava/lang/String;

.field public r:Z

.field public s:Ljava/lang/Boolean;

.field public t:Ljava/lang/Boolean;

.field public u:Ljava/lang/Boolean;

.field public v:Lcom/sdk/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/a/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field public w:J

.field public x:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public y:J

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/sdk/a/b;

    .line 2
    .line 3
    const v1, 0x19000

    .line 4
    .line 5
    .line 6
    const-wide/32 v2, 0xea60

    .line 7
    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3}, Lcom/sdk/a/b;-><init>(IJ)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/sdk/a/c;->B:Lcom/sdk/a/b;

    .line 13
    .line 14
    new-instance v0, Ljava/util/TreeMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/sdk/a/c;->C:Ljava/util/TreeMap;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/sdk/a/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdk/a/d<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sdk/d/c;-><init>()V

    invoke-static {}, Lcom/sdk/a/b;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sdk/a/c;->i:J

    sget-object v0, Lcom/sdk/a/c$a;->a:Lcom/sdk/a/c$a;

    iput-object v0, p0, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdk/a/c;->o:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sdk/a/c;->q:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sdk/a/c;->r:Z

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/sdk/a/c;->s:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/sdk/a/c;->t:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/sdk/a/c;->u:Ljava/lang/Boolean;

    iput v0, p0, Lcom/sdk/a/c;->z:I

    invoke-virtual {p1}, Lcom/sdk/a/d;->a()Lcom/sdk/a/e;

    move-result-object p1

    iput-object p1, p0, Lcom/sdk/a/c;->v:Lcom/sdk/a/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sdk/a/e;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sdk/a/c;->k:Ljava/lang/String;

    iget-object p1, p0, Lcom/sdk/a/c;->v:Lcom/sdk/a/e;

    invoke-virtual {p1}, Lcom/sdk/a/e;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sdk/a/c;->l:Ljava/lang/String;

    iget-object p1, p0, Lcom/sdk/a/c;->v:Lcom/sdk/a/e;

    invoke-virtual {p1}, Lcom/sdk/a/e;->c()I

    move-result p1

    iput p1, p0, Lcom/sdk/a/c;->n:I

    iget-object p1, p0, Lcom/sdk/a/c;->v:Lcom/sdk/a/e;

    invoke-virtual {p1}, Lcom/sdk/a/e;->a()Lcom/sdk/e/b;

    move-result-object p1

    iput-object p1, p0, Lcom/sdk/a/c;->j:Lcom/sdk/e/b;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/sdk/a/d;Ljava/net/HttpURLConnection;)Lcom/sdk/a/f;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdk/a/d<",
            "TT;>;",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Lcom/sdk/a/f<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    const-string v1, "ret_url"

    const-string v9, "seq"

    const-string v10, "PriorityAsyncTask"

    const-string v2, "HttpHandler handleResponse \u5f00\u59cb"

    const/4 v11, 0x0

    invoke-static {v10, v2, v11}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    .line 5
    iget-object v2, v7, Lcom/sdk/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v12, 0x1

    if-eqz v2, :cond_0

    .line 6
    new-instance v0, Lcom/sdk/a/f;

    const-string v1, "\u7f51\u7edc\u8bbf\u95ee\u5df2\u53d6\u6d88"

    invoke-direct {v0, v12, v1, v11}, Lcom/sdk/a/f;-><init>(ILjava/lang/Object;Z)V

    return-object v0

    :cond_0
    const-string v2, "HttpHandler handleResponse \u8df3\u8fc7 isCancelled"

    invoke-static {v10, v2, v11}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    iget-wide v14, v7, Lcom/sdk/a/c;->w:J

    sub-long v14, v2, v14

    invoke-static {v5, v14, v15}, Lcom/sdk/base/framework/utils/log/MobileLogManager;->status101005(Ljava/lang/String;J)V

    const-string v5, "HttpHandler handleResponse \u8df3\u8fc7 MobileLogManager.status101005"

    invoke-static {v10, v5, v11}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    const-string v5, "handleResponse \u6b63\u5f0f\u53d1\u9001\u6570\u636e \u5f00\u59cb"

    invoke-static {v10, v5, v11}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v5, "handleResponse \u6b63\u5f0f\u53d1\u9001\u6570\u636e \u7ed3\u675f"

    invoke-static {v10, v5, v11}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HttpHandler handleResponse \u8df3\u8fc7 statusCode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5, v11}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HttpHandler handleResponse \u6253\u5370\nnet\u8bf7\u6c42host\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n net\u8bf7\u6c42path\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n net\u8bf7\u6c42Query\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  net\u8bf7\u6c42\u7801\uff1a"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OAUTH_SDK"

    const/4 v6, 0x3

    invoke-static {v5, v4, v6}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/16 v4, 0xc8

    const-string v5, "endTime"

    if-ne v14, v4, :cond_1

    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "gmbs"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v7, Lcom/sdk/a/c;->x:Ljava/util/TreeMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v7, Lcom/sdk/d/c;->f:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    iget-wide v11, v7, Lcom/sdk/a/c;->w:J

    sub-long v11, v2, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v6, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u54cd\u5e94\u8fd4\u56de\uff1acode="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ";\u8017\u65f6="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move/from16 v16, v14

    :try_start_3
    iget-wide v13, v7, Lcom/sdk/a/c;->w:J

    sub-long/2addr v11, v13

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v10, v4, v6}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_0

    :cond_2
    move/from16 v16, v14

    :goto_0
    iget-object v4, v7, Lcom/sdk/a/c;->x:Ljava/util/TreeMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "step\u8bbf\u95ee\u7ed3\u675f\u65f6\u95f4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v10, v2, v3}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    .line 7
    iget-object v2, v0, Lcom/sdk/a/d;->b:Lcom/sdk/a/e;

    .line 8
    iget-object v2, v2, Lcom/sdk/a/e;->b:Ljava/lang/String;

    const-string v3, "nisportal"

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/sdk/base/framework/bean/DataUtils$Access_process;

    invoke-direct {v2}, Lcom/sdk/base/framework/bean/DataUtils$Access_process;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sdk/base/framework/bean/DataUtils$Access_process;->setIfProtal(I)V

    sget-object v2, Lcom/sdk/a/c;->C:Ljava/util/TreeMap;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const-string v4, "ifProtal"

    :try_start_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    const/16 v2, 0x12c

    const/4 v3, 0x0

    move/from16 v11, v16

    if-ge v11, v2, :cond_b

    :try_start_5
    const-string v0, "(statusCode < 300)"

    const/4 v1, 0x0

    invoke-static {v10, v0, v1}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    iput-boolean v1, v7, Lcom/sdk/a/c;->o:Z

    iget-boolean v0, v7, Lcom/sdk/a/c;->r:Z

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcom/sdk/a/c;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static/range {p2 .. p2}, Lcom/sdk/l/a;->b(Ljava/net/HttpURLConnection;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Lcom/sdk/a/c;->s:Ljava/lang/Boolean;

    iget-object v0, v7, Lcom/sdk/a/c;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static/range {p2 .. p2}, Lcom/sdk/l/a;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_6
    move-object v6, v3

    :goto_2
    new-instance v1, Lcom/sdk/c/a;

    invoke-direct {v1}, Lcom/sdk/c/a;-><init>()V

    iget-object v4, v7, Lcom/sdk/a/c;->q:Ljava/lang/String;

    iget-object v0, v7, Lcom/sdk/a/c;->s:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sdk/c/a;->a(Ljava/net/HttpURLConnection;Lcom/sdk/c/b;Ljava/lang/String;ZLjava/lang/String;)Ljava/io/File;

    :cond_7
    iget-object v0, v7, Lcom/sdk/a/c;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 13
    invoke-virtual/range {p2 .. p2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    :goto_3
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_4

    .line 14
    :cond_9
    new-instance v0, Lcom/sdk/c/c;

    invoke-direct {v0}, Lcom/sdk/c/c;-><init>()V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v8, v7, v1}, Lcom/sdk/c/c;->a(Ljava/net/HttpURLConnection;Lcom/sdk/c/b;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sdk/a/c;->B:Lcom/sdk/a/b;

    iget-object v2, v7, Lcom/sdk/a/c;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sdk/a/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v7, Lcom/sdk/a/c;->l:Ljava/lang/String;

    iget-wide v3, v7, Lcom/sdk/a/c;->i:J

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_a
    :goto_4
    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->disconnect()V

    new-instance v1, Lcom/sdk/a/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0, v2}, Lcom/sdk/a/f;-><init>(ILjava/lang/Object;Z)V

    return-object v1

    :cond_b
    const/16 v2, 0x12d

    if-eq v11, v2, :cond_c

    const/16 v2, 0x12e

    if-ne v11, v2, :cond_14

    :cond_c
    const-string v2, "(statusCode == 301 || statusCode == 302)"

    const/4 v4, 0x0

    invoke-static {v10, v2, v4}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    .line 15
    iget-object v2, v0, Lcom/sdk/a/d;->b:Lcom/sdk/a/e;

    .line 16
    iget-object v2, v2, Lcom/sdk/a/e;->b:Ljava/lang/String;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v12, v7, Lcom/sdk/a/c;->w:J

    sub-long/2addr v4, v12

    invoke-static {v2, v4, v5}, Lcom/sdk/base/framework/utils/log/MobileLogManager;->status101005(Ljava/lang/String;J)V

    .line 18
    iget-object v2, v0, Lcom/sdk/a/d;->b:Lcom/sdk/a/e;

    .line 19
    iget-object v2, v2, Lcom/sdk/a/e;->b:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9, v3}, Lcom/sdk/j/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleResponse seq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_d

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v3, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/sdk/a/c;->A:Ljava/lang/String;

    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v7, Lcom/sdk/a/c;->A:Ljava/lang/String;

    invoke-static {v2, v9, v3}, Lcom/sdk/j/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u683c\u5f0f\u5339\u914dseq--->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    const-string v1, "Location"

    invoke-virtual {v8, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Set-Cookie"

    invoke-virtual {v8, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_e

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :cond_e
    invoke-static {v1}, Lcom/sdk/r/a;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 24
    iget-object v4, v0, Lcom/sdk/a/d;->b:Lcom/sdk/a/e;

    .line 25
    iput-object v1, v4, Lcom/sdk/a/e;->b:Ljava/lang/String;

    .line 26
    sget-object v5, Lcom/sdk/n/a$c;->a:Lcom/sdk/n/a$c;

    .line 27
    iget-object v4, v4, Lcom/sdk/a/e;->h:Lcom/sdk/n/a$c;

    if-ne v5, v4, :cond_f

    const/4 v4, 0x1

    goto :goto_5

    :cond_f
    const/4 v4, 0x0

    .line 28
    :goto_5
    invoke-static {v1}, Lcom/sdk/l/a;->a(Ljava/lang/String;)Z

    invoke-virtual {v0, v1, v4}, Lcom/sdk/a/d;->a(Ljava/lang/String;Z)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-static {v2}, Lcom/sdk/r/a;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const-string v5, "ctc"

    const-string v6, "Cookie"

    if-eqz v4, :cond_11

    :try_start_6
    const-string v4, "/ctcnet/gctcmc.do"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v2}, Lcom/sdk/j/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    const-string v3, "mdb Cookie cache"

    :try_start_7
    iget-object v4, v7, Lcom/sdk/d/c;->f:Ljava/lang/Boolean;

    invoke-static {v10, v3, v4}, Lcom/sdk/base/framework/utils/log/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_10
    :goto_6
    invoke-virtual {v1, v6, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/sdk/j/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :goto_7
    if-nez v1, :cond_12

    new-instance v0, Lcom/sdk/a/f;

    invoke-virtual/range {p0 .. p0}, Lcom/sdk/a/c;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/sdk/a/f;-><init>(ILjava/lang/Object;Z)V

    return-object v0

    :cond_12
    invoke-virtual {v7, v0, v1}, Lcom/sdk/a/c;->b(Lcom/sdk/a/d;Ljava/net/HttpURLConnection;)Lcom/sdk/a/f;

    move-result-object v0

    return-object v0

    :cond_13
    invoke-virtual/range {p2 .. p2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_14
    move v14, v11

    goto :goto_a

    :catch_0
    move/from16 v11, v16

    goto :goto_8

    :catch_1
    move v11, v14

    :catch_2
    :goto_8
    move v13, v11

    goto :goto_9

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sdk/base/framework/utils/log/MobileLogManager;->status302002(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lcom/sdk/d/c;->f:Ljava/lang/Boolean;

    invoke-static {v10, v0, v1}, Lcom/sdk/base/framework/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    new-instance v0, Lcom/sdk/a/f;

    const-string v1, "\u7f51\u7edc\u8bbf\u95ee\u5f02\u5e38"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/sdk/a/f;-><init>(ILjava/lang/Object;Z)V

    return-object v0

    :catch_4
    const/4 v4, -0x1

    const/4 v13, -0x1

    :goto_9
    invoke-static {}, Lcom/sdk/base/module/manager/SDKManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "qcTimeout"

    invoke-static {v0, v9, v1}, Lcom/sdk/j/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move v14, v13

    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u670d\u52a1\u5f02\u5e38 ResponseCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sdk/base/framework/utils/log/MobileLogManager;->status302002(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lcom/sdk/d/c;->f:Ljava/lang/Boolean;

    invoke-static {v10, v0, v1}, Lcom/sdk/base/framework/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    new-instance v0, Lcom/sdk/a/f;

    const-string v1, "\u670d\u52a1\u7aef\u6570\u636e\u683c\u5f0f\u51fa\u9519"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/sdk/a/f;-><init>(ILjava/lang/Object;Z)V

    return-object v0
.end method

.method public a()V
    .locals 3

    sget-object v0, Lcom/sdk/a/c$a;->e:Lcom/sdk/a/c$a;

    iput-object v0, p0, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    .line 2
    iget-object v0, p0, Lcom/sdk/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/sdk/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/sdk/d/c;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdk/d/c;->f:Ljava/lang/Boolean;

    const-string v2, "PriorityAsyncTask"

    invoke-static {v2, v0, v1}, Lcom/sdk/base/framework/utils/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public a(JJZ)Z
    .locals 10

    .line 1
    const-string v0, "PriorityAsyncTask"

    const-string v1, "HttpHandler updateProgress \u5f00\u59cb"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/sdk/a/c;->j:Lcom/sdk/e/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    sget-object v3, Lcom/sdk/a/c$a;->e:Lcom/sdk/a/c$a;

    if-eq v0, v3, :cond_1

    const/4 v0, 0x3

    const/4 v3, 0x2

    if-eqz p5, :cond_0

    new-array p5, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p5, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v3

    invoke-virtual {p0, p5}, Lcom/sdk/d/c;->a([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sdk/a/c;->p:J

    sub-long v6, v4, v6

    iget-object p5, p0, Lcom/sdk/a/c;->j:Lcom/sdk/e/b;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p5, 0x3e8

    int-to-long v8, p5

    cmp-long p5, v6, v8

    if-ltz p5, :cond_1

    iput-wide v4, p0, Lcom/sdk/a/c;->p:J

    new-array p5, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p5, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p5, v3

    invoke-virtual {p0, p5}, Lcom/sdk/d/c;->a([Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sdk/a/c;->m:Lcom/sdk/a/c$a;

    sget-object p2, Lcom/sdk/a/c$a;->e:Lcom/sdk/a/c$a;

    if-eq p1, p2, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public final b(Lcom/sdk/a/d;Ljava/net/HttpURLConnection;)Lcom/sdk/a/f;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sdk/a/d<",
            "TT;>;",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Lcom/sdk/a/f<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "PriorityAsyncTask"

    const-string v1, "private ResponseData<T> sendRequest()"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    const/4 v1, 0x1

    :try_start_0
    sget-object v3, Lcom/sdk/a/c;->B:Lcom/sdk/a/b;

    iget-object v4, p0, Lcom/sdk/a/c;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sdk/a/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sdk/a/c;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sdk/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/sdk/a/f;

    invoke-direct {v4, v2, v3, v1}, Lcom/sdk/a/f;-><init>(ILjava/lang/Object;Z)V

    return-object v4

    :cond_0
    iget-object v3, p0, Lcom/sdk/a/c;->s:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sdk/a/c;->r:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sdk/a/c;->q:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    move-wide v3, v5

    :goto_0
    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    const-string v5, "RANGE"

    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v5, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    iput-object v3, p0, Lcom/sdk/a/c;->x:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sdk/a/c;->w:J

    iget-object v5, p0, Lcom/sdk/a/c;->x:Ljava/util/TreeMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v6, "startTime"

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/sdk/a/c;->x:Ljava/util/TreeMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, "url"

    :try_start_3
    invoke-virtual {p2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequest() sendRequesturl"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v0, v3, v4}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual {p1, p2}, Lcom/sdk/a/d;->a(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/sdk/a/c;->y:J

    iget-object v5, p0, Lcom/sdk/a/c;->x:Ljava/util/TreeMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v6, "forcedTime"

    :try_start_4
    iget-wide v7, p1, Lcom/sdk/a/d;->c:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/sdk/a/c;->x:Ljava/util/TreeMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v6, "endTime"

    :try_start_5
    iget-wide v7, p0, Lcom/sdk/a/c;->y:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/sdk/a/c;->C:Ljava/util/TreeMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "step"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sdk/a/c;->z:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/sdk/a/c;->z:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sdk/a/c;->x:Ljava/util/TreeMap;

    invoke-virtual {v5, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HttpHandler sendRequest; accessTreeMap:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/sdk/a/c;->C:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    invoke-virtual {p0, p1, v3}, Lcom/sdk/a/c;->a(Lcom/sdk/a/d;Ljava/net/HttpURLConnection;)Lcom/sdk/a/f;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sdk/base/framework/utils/log/MobileLogManager;->status302002(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8bbf\u95ee\u5f02\u5e38HttpHandler\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    .line 2
    iget v3, p0, Lcom/sdk/a/c;->n:I

    if-lez v3, :cond_3

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/sdk/a/c;->n:I

    invoke-virtual {p0, p1, p2}, Lcom/sdk/a/c;->b(Lcom/sdk/a/d;Ljava/net/HttpURLConnection;)Lcom/sdk/a/f;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_4

    .line 3
    new-instance p1, Lcom/sdk/a/f;

    const-string p2, "\u7f51\u7edc\u8bbf\u95ee\u5f02\u5e38"

    invoke-direct {p1, v1, p2, v2}, Lcom/sdk/a/f;-><init>(ILjava/lang/Object;Z)V

    const-string p2, "HttpHandler\uff1aresponseInfo=null\u7f51\u7edc\u8bbf\u95ee\u5f02\u5e38"

    invoke-static {v0, p2, v2}, Lcom/sdk/base/framework/utils/log/LogUtils;->d_yl(Ljava/lang/String;Ljava/lang/String;I)I

    :cond_4
    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "status"

    const v2, 0x18e71

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "msg"

    const-string v3, "\u9009\u62e9\u6d41\u91cf\u901a\u9053\u5931\u8d25"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "seq"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.class public Lcom/byazt/qe/tt$3;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b9,
        0x5e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qe/tt;->c(ZLcom/byazt/yf/n;ILorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic c:Lorg/json/JSONObject;

.field public final synthetic da:Lorg/json/JSONObject;

.field public final synthetic i:Z

.field public final synthetic n:Lcom/byazt/yf/n;

.field public final synthetic sl:Lcom/byazt/qe/tt;

.field public final synthetic sp:Z

.field public final synthetic tt:J

.field public final synthetic uj:[I

.field public final synthetic ve:[I

.field public final synthetic x:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/byazt/qe/tt;Lorg/json/JSONObject;J[I[ILcom/byazt/yf/n;IZLorg/json/JSONObject;ZLorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qe/tt$3;->sl:Lcom/byazt/qe/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/qe/tt$3;->c:Lorg/json/JSONObject;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/byazt/qe/tt$3;->tt:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/qe/tt$3;->ve:[I

    .line 8
    .line 9
    iput-object p6, p0, Lcom/byazt/qe/tt$3;->uj:[I

    .line 10
    .line 11
    iput-object p7, p0, Lcom/byazt/qe/tt$3;->n:Lcom/byazt/yf/n;

    .line 12
    .line 13
    iput p8, p0, Lcom/byazt/qe/tt$3;->a:I

    .line 14
    .line 15
    iput-boolean p9, p0, Lcom/byazt/qe/tt$3;->sp:Z

    .line 16
    .line 17
    iput-object p10, p0, Lcom/byazt/qe/tt$3;->x:Lorg/json/JSONObject;

    .line 18
    .line 19
    iput-boolean p11, p0, Lcom/byazt/qe/tt$3;->i:Z

    .line 20
    .line 21
    iput-object p12, p0, Lcom/byazt/qe/tt$3;->da:Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/byazt/qe/tt$3;->sl:Lcom/byazt/qe/tt;

    iget-object v0, p0, Lcom/byazt/qe/tt$3;->c:Lorg/json/JSONObject;

    const-string v1, "net"

    iget-wide v2, p0, Lcom/byazt/qe/tt$3;->tt:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/byazt/qe/tt;->c(Lcom/byazt/qe/tt;Lorg/json/JSONObject;Ljava/lang/String;J)V

    .line 2
    new-instance p1, Lcom/byazt/qe/tt$3$1;

    invoke-direct {p1, p0, p2}, Lcom/byazt/qe/tt$3$1;-><init>(Lcom/byazt/qe/tt$3;Lcom/byazt/hm/tt;)V

    invoke-static {p1}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 0

    .line 3
    new-instance p1, Lcom/byazt/qe/tt$3$2;

    invoke-direct {p1, p0, p2}, Lcom/byazt/qe/tt$3$2;-><init>(Lcom/byazt/qe/tt$3;Ljava/io/IOException;)V

    invoke-static {p1}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.class public Lcom/byazt/nf/c$8;
.super Lcom/byazt/mh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f1,
        0x70
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nf/c;->sp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Z

.field public final synthetic tt:J

.field public final synthetic ve:Lcom/byazt/nf/c;


# direct methods
.method public constructor <init>(Lcom/byazt/nf/c;ZJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nf/c$8;->ve:Lcom/byazt/nf/c;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/byazt/nf/c$8;->c:Z

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/byazt/nf/c$8;->tt:J

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/mh/c;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/byazt/nf/c$8$1;

    invoke-direct {p1, p0, p2}, Lcom/byazt/nf/c$8$1;-><init>(Lcom/byazt/nf/c$8;Lcom/byazt/hm/tt;)V

    invoke-static {p1}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Lcom/byazt/va/uj;Ljava/io/IOException;)V
    .locals 0

    .line 2
    new-instance p1, Lcom/byazt/nf/c$8$2;

    invoke-direct {p1, p0, p2}, Lcom/byazt/nf/c$8$2;-><init>(Lcom/byazt/nf/c$8;Ljava/io/IOException;)V

    invoke-static {p1}, Lcom/byazt/eu/n;->c(Ljava/lang/Runnable;)V

    return-void
.end method

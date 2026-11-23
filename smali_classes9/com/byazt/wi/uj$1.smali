.class public Lcom/byazt/wi/uj$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3d7,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wi/uj;->tt(Lcom/byazt/ha/ve;Lcom/byazt/ip/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic tt:J

.field public final synthetic ve:Lcom/byazt/wi/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/wi/uj;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wi/uj$1;->ve:Lcom/byazt/wi/uj;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/wi/uj$1;->c:Ljava/lang/String;

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/byazt/wi/uj$1;->tt:J

    .line 6
    .line 7
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/wi/a;->c()Lcom/byazt/wi/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/wi/uj$1;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/byazt/wi/uj$1;->tt:J

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/wi/a;->ve(Ljava/lang/String;J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

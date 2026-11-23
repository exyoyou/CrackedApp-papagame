.class public Lcom/byazt/nf/c$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2f1,
        0xa1
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/nf/c$8;->c(Lcom/byazt/va/uj;Lcom/byazt/hm/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/hm/tt;

.field public final synthetic tt:Lcom/byazt/nf/c$8;


# direct methods
.method public constructor <init>(Lcom/byazt/nf/c$8;Lcom/byazt/hm/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/nf/c$8$1;->tt:Lcom/byazt/nf/c$8;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/nf/c$8$1;->c:Lcom/byazt/hm/tt;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/nf/c$8$1;->tt:Lcom/byazt/nf/c$8;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/byazt/nf/c$8;->ve:Lcom/byazt/nf/c;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/nf/c$8$1;->c:Lcom/byazt/hm/tt;

    .line 6
    .line 7
    iget-boolean v3, v0, Lcom/byazt/nf/c$8;->c:Z

    .line 8
    .line 9
    iget-wide v4, v0, Lcom/byazt/nf/c$8;->tt:J

    .line 10
    .line 11
    invoke-static {v1, v2, v3, v4, v5}, Lcom/byazt/nf/c;->c(Lcom/byazt/nf/c;Lcom/byazt/hm/tt;ZJ)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

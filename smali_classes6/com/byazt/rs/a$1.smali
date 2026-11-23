.class public Lcom/byazt/rs/a$1;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x288,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/rs/a;->c(Lcom/byazt/rs/uj;Lcom/byazt/rs/sp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/rs/uj;

.field public final synthetic tt:Lcom/byazt/rs/sp;

.field public final synthetic ve:Lcom/byazt/rs/a;


# direct methods
.method public constructor <init>(Lcom/byazt/rs/a;Ljava/lang/String;Lcom/byazt/rs/uj;Lcom/byazt/rs/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rs/a$1;->ve:Lcom/byazt/rs/a;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/rs/a$1;->c:Lcom/byazt/rs/uj;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/rs/a$1;->tt:Lcom/byazt/rs/sp;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/rs/a$1;->ve:Lcom/byazt/rs/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/rs/a$1;->c:Lcom/byazt/rs/uj;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/byazt/rs/a$1;->tt:Lcom/byazt/rs/sp;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/byazt/rs/a;->c(Lcom/byazt/rs/a;Lcom/byazt/rs/uj;Lcom/byazt/rs/sp;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

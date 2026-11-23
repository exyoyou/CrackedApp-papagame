.class public Lcom/byazt/rs/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x288,
        0x188
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/rs/a;->c(Lcom/byazt/rs/sp;Lcom/byazt/rs/uj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/rs/sp;

.field public final synthetic tt:Lcom/byazt/rs/uj;

.field public final synthetic ve:Lcom/byazt/rs/a;


# direct methods
.method public constructor <init>(Lcom/byazt/rs/a;Lcom/byazt/rs/sp;Lcom/byazt/rs/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/rs/a$3;->ve:Lcom/byazt/rs/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/rs/a$3;->c:Lcom/byazt/rs/sp;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/rs/a$3;->tt:Lcom/byazt/rs/uj;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/rs/a$3;->c:Lcom/byazt/rs/sp;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/rs/a$3;->tt:Lcom/byazt/rs/uj;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/byazt/rs/sp;->c(Lcom/byazt/rs/uj;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

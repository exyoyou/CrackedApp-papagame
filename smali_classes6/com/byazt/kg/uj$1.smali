.class public Lcom/byazt/kg/uj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1ac,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kg/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kg/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/kg/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kg/uj$1;->c:Lcom/byazt/kg/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/kg/uj$1;->c:Lcom/byazt/kg/uj;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/kg/uj;->c(Lcom/byazt/kg/uj;Z)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

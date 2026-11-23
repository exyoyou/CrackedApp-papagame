.class public Lcom/byazt/cty/BaseLandingPageActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/omf/gu$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xab,
        0xec
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cty/BaseLandingPageActivity;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/cty/BaseLandingPageActivity;


# direct methods
.method public constructor <init>(Lcom/byazt/cty/BaseLandingPageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity$2;->c:Lcom/byazt/cty/BaseLandingPageActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(ILjava/lang/String;Lcom/byazt/ete/tt;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/byazt/cty/BaseLandingPageActivity$2;->c:Lcom/byazt/cty/BaseLandingPageActivity;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/byazt/cty/BaseLandingPageActivity;->c(I)V

    .line 2
    invoke-virtual {p3, p1}, Lcom/byazt/ete/tt;->c(I)V

    .line 3
    invoke-static {p3}, Lcom/byazt/ete/tt;->c(Lcom/byazt/ete/tt;)V

    return-void
.end method

.method public c(Lcom/byazt/ete/c;Lcom/byazt/ete/tt;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity$2;->c:Lcom/byazt/cty/BaseLandingPageActivity;

    iget-object v0, v0, Lcom/byazt/cty/BaseLandingPageActivity;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    invoke-virtual {p1}, Lcom/byazt/ete/c;->ve()Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/byazt/cty/BaseLandingPageActivity$2;->c:Lcom/byazt/cty/BaseLandingPageActivity;

    iget-object v0, v0, Lcom/byazt/cty/BaseLandingPageActivity;->yv:Lcom/byazt/omf/d;

    invoke-virtual {v0, p1}, Lcom/byazt/omf/d;->c(Lorg/json/JSONObject;)Lcom/byazt/omf/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 7
    :catch_0
    iget-object p1, p0, Lcom/byazt/cty/BaseLandingPageActivity$2;->c:Lcom/byazt/cty/BaseLandingPageActivity;

    invoke-virtual {p1, p2}, Lcom/byazt/cty/BaseLandingPageActivity;->c(I)V

    :cond_0
    return-void
.end method

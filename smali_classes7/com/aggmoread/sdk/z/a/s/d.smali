.class public interface abstract Lcom/aggmoread/sdk/z/a/s/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/i/h;


# static fields
.field public static final e:Lcom/aggmoread/sdk/z/a/s/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/aggmoread/sdk/z/a/s/d$a;

    invoke-direct {v0}, Lcom/aggmoread/sdk/z/a/s/d$a;-><init>()V

    sput-object v0, Lcom/aggmoread/sdk/z/a/s/d;->e:Lcom/aggmoread/sdk/z/a/s/d;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/aggmoread/sdk/z/a/a;)V
.end method

.method public abstract d()V
.end method

.method public abstract onAdClicked()V
.end method

.method public abstract onAdShow()V
.end method

.method public abstract onReward(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onVideoCached()V
.end method

.method public abstract onVideoCompleted()V
.end method

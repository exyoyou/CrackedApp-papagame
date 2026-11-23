.class public Lcom/sdk/y/a;
.super Lcom/sdk/u/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sdk/u/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final l:Ljava/lang/String; = "a"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/sdk/f/d;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/sdk/e/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sdk/e/a<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/sdk/mobile/config/MobileConfig;

    invoke-direct {v0}, Lcom/sdk/mobile/config/MobileConfig;-><init>()V

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/sdk/u/a;-><init>(Landroid/content/Context;Lcom/sdk/e/a;Ljava/util/List;Lcom/sdk/f/c;)V

    return-void
.end method

.class public Lcom/aggmoread/sdk/z/a/u/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/a/u/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/aggmoread/sdk/z/a/u/f;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/u/f;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/f$a;->b:Lcom/aggmoread/sdk/z/a/u/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/f$a;->b:Lcom/aggmoread/sdk/z/a/u/f;

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/u/f;->c()V

    return-void
.end method

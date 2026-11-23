.class public final synthetic Li1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/byazt/ng/uj;


# direct methods
.method public synthetic constructor <init>(Lcom/byazt/ng/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/a;->b:Lcom/byazt/ng/uj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Li1/a;->b:Lcom/byazt/ng/uj;

    invoke-static {v0}, Lcom/byazt/ng/a;->b(Lcom/byazt/ng/uj;)V

    return-void
.end method

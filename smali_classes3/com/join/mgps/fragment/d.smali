.class public final synthetic Lcom/join/mgps/fragment/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/fragment/e;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/fragment/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/d;->b:Lcom/join/mgps/fragment/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d;->b:Lcom/join/mgps/fragment/e;

    invoke-static {v0}, Lcom/join/mgps/fragment/e;->M(Lcom/join/mgps/fragment/e;)V

    return-void
.end method

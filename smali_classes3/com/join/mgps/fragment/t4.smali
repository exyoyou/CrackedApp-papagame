.class public final synthetic Lcom/join/mgps/fragment/t4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/fragment/u4;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/fragment/u4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/fragment/t4;->b:Lcom/join/mgps/fragment/u4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/t4;->b:Lcom/join/mgps/fragment/u4;

    invoke-static {v0}, Lcom/join/mgps/fragment/u4;->O(Lcom/join/mgps/fragment/u4;)V

    return-void
.end method

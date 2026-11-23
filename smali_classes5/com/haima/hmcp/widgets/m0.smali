.class public final synthetic Lcom/haima/hmcp/widgets/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/haima/hmcp/widgets/TouchUtil;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/widgets/TouchUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/m0;->b:Lcom/haima/hmcp/widgets/TouchUtil;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/m0;->b:Lcom/haima/hmcp/widgets/TouchUtil;

    invoke-static {v0}, Lcom/haima/hmcp/widgets/TouchUtil;->b(Lcom/haima/hmcp/widgets/TouchUtil;)V

    return-void
.end method

.class public final synthetic Lcom/haima/hmcp/widgets/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnUpdateInstanceTimeListener;


# instance fields
.field public final synthetic a:Lcom/haima/hmcp/listeners/OnUpdateInstanceTimeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/listeners/OnUpdateInstanceTimeListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/q;->a:Lcom/haima/hmcp/listeners/OnUpdateInstanceTimeListener;

    return-void
.end method


# virtual methods
.method public final onUpdateInstanceTimeResult(ZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/q;->a:Lcom/haima/hmcp/listeners/OnUpdateInstanceTimeListener;

    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->g(Lcom/haima/hmcp/listeners/OnUpdateInstanceTimeListener;ZLjava/lang/String;)V

    return-void
.end method

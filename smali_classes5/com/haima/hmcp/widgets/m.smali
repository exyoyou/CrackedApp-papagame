.class public final synthetic Lcom/haima/hmcp/widgets/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/StartRecordStreamListener;


# instance fields
.field public final synthetic a:Lcom/haima/hmcp/listeners/StartRecordStreamListener;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/listeners/StartRecordStreamListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/m;->a:Lcom/haima/hmcp/listeners/StartRecordStreamListener;

    return-void
.end method


# virtual methods
.method public final startRecord(ZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/m;->a:Lcom/haima/hmcp/listeners/StartRecordStreamListener;

    invoke-static {v0, p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->n(Lcom/haima/hmcp/listeners/StartRecordStreamListener;ZLjava/lang/String;)V

    return-void
.end method

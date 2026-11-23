.class public final synthetic Lcom/haima/hmcp/widgets/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/StopRecordStreamListener;


# instance fields
.field public final synthetic a:Lcom/haima/hmcp/listeners/StopRecordStreamListener;


# direct methods
.method public synthetic constructor <init>(Lcom/haima/hmcp/listeners/StopRecordStreamListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/widgets/g;->a:Lcom/haima/hmcp/listeners/StopRecordStreamListener;

    return-void
.end method


# virtual methods
.method public final stopRecord(ZLjava/lang/String;Lcom/haima/hmcp/beans/RecordStreamInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/g;->a:Lcom/haima/hmcp/listeners/StopRecordStreamListener;

    invoke-static {v0, p1, p2, p3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->e(Lcom/haima/hmcp/listeners/StopRecordStreamListener;ZLjava/lang/String;Lcom/haima/hmcp/beans/RecordStreamInfo;)V

    return-void
.end method

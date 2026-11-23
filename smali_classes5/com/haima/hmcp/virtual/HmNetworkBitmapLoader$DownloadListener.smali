.class public interface abstract Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader$DownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/virtual/HmNetworkBitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadListener"
.end annotation


# virtual methods
.method public abstract onDownloadComplete(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onDownloadFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

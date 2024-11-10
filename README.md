# Melanoma_Self-diagnosis_App
### An App to help raise public awareness about Melanoma
### With a Mobile ViT model to detect Melanoma

Use Datasets on Kaggle to train and test.<br>
https://www.kaggle.com/datasets/hasnainjaved/melanoma-skin-cancer-dataset-of-10000-images

<br>
<br>
### Why we use ViT?
黑色素瘤有許多特殊的症狀，尤其是痣會有不對稱性、突起、硬塊等特徵；因此，我們把目光投向了痣的檢查，透過機器學習的方式來區分惡性黑痣。首先，我們需要為該任務找到合適的模型，目前在電腦視覺領域使用最多的模型是卷積神經網路（CNN）；然而，經過進一步研究，我認為CNN 可能無法勝任這項任務，因為大部分惡性與良性痣的差異微小（對人類來說可以稍微分辨不同，但對電腦來說惡性與良性痣都是一坨黑色區塊），我擔心CNN可能無法辨識細節上的微小差異（因為其捕捉資訊的方式）；另外，輸入圖片中會有體毛或不同膚色，CNN可能會很容易因此被誤導。
<br><br>
至於較新的Transformer，則可能會是較好的選擇，因為其使用的Selfattention（自注意力機制）可以自行捕捉圖中較重要的特徵進行學習，依照輸入資料各部分的重要性而分配不同的權重。而對於圖片辨識，則是使用Vision Transformer（ViT），其將圖片拆分成許多Chunk分別處理，再對像素分別進行編碼。Mobile ViT是更為輕量化的ViT架構，適合移動端設備、邊緣裝置使用，我最後決定使用 Mobile ViT 是因為我原先預計將模型放在User端運行。


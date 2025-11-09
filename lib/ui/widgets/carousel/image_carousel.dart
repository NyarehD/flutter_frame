import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  final List<String> imageUrls;

  const ImageCarousel({super.key, required this.imageUrls});

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _current = 0;
  // Use the package's CarouselSliderController instance (project's installed
  // version exposes `CarouselSliderController`).
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    // If there are no images, show a small placeholder.
    if (widget.imageUrls.isEmpty) {
      return Container(
        height: 250,
        color: Colors.grey.shade200,
        child: const Center(child: Icon(Icons.image, size: 48, color: Colors.grey)),
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: 250,
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 0.8,
            aspectRatio: 16 / 9,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: widget.imageUrls.map((url) {
            return Builder(
              builder: (BuildContext context) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    url,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    errorBuilder: (ctx, err, stack) => Container(
                      color: Colors.grey.shade300,
                      child: const Center(child: Icon(Icons.broken_image)),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),

        const SizedBox(height: 8),

        // Indicators
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.imageUrls.asMap().entries.map((entry) {
            final int idx = entry.key;
            return GestureDetector(
              onTap: () => _controller.animateToPage(idx),
              child: Container(
                width: 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == idx
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

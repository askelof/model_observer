module ModelObserver
  class Collector
    class << self
      def metrics
        @@metrics ||= []
      end

      def add_metric(metric)
        metrics << metric if metric.model_id.present?
      end

      def clear
        @@metrics = nil
      end

      def metrics_hash
        hash = {}
        metrics.each do |m|
          hash[m.model_class.name] ||= []
          hash[m.model_class.name] << m
        end
        hash
      end
    end
  end
end
